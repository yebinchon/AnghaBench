; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_sideband.c_vlv_sideband_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_sideband.c_vlv_sideband_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@SB_MRD_NP = common dso_local global i32 0, align 4
@SB_CRRDDA_NP = common dso_local global i32 0, align 4
@IOSF_PORT_PUNIT = common dso_local global i32 0, align 4
@VLV_IOSF_DOORBELL_REQ = common dso_local global i32 0, align 4
@IOSF_SB_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IOSF sideband idle wait (%s) timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@VLV_IOSF_ADDR = common dso_local global i32 0, align 4
@VLV_IOSF_DATA = common dso_local global i32 0, align 4
@IOSF_DEVFN_SHIFT = common dso_local global i32 0, align 4
@IOSF_OPCODE_SHIFT = common dso_local global i32 0, align 4
@IOSF_PORT_SHIFT = common dso_local global i32 0, align 4
@IOSF_BYTE_ENABLES_SHIFT = common dso_local global i32 0, align 4
@IOSF_BAR_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"IOSF sideband finish wait (%s) timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*)* @vlv_sideband_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_sideband_rw(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.intel_uncore*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 1
  store %struct.intel_uncore* %18, %struct.intel_uncore** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @SB_MRD_NP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @SB_CRRDDA_NP, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %22, %6
  %27 = phi i1 [ true, %6 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = call i32 @lockdep_assert_held(i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @IOSF_PORT_PUNIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @iosf_mbi_assert_punit_acquired()
  br label %37

37:                                               ; preds = %35, %26
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  %39 = load i32, i32* @VLV_IOSF_DOORBELL_REQ, align 4
  %40 = load i32, i32* @IOSF_SB_BUSY, align 4
  %41 = call i64 @intel_wait_for_register(%struct.intel_uncore* %38, i32 %39, i32 %40, i32 0, i32 5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %115

51:                                               ; preds = %37
  %52 = call i32 (...) @preempt_disable()
  %53 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  %54 = load i32, i32* @VLV_IOSF_ADDR, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %53, i32 %54, i32 %55)
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  %58 = load i32, i32* @VLV_IOSF_DATA, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %65

62:                                               ; preds = %51
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  br label %65

65:                                               ; preds = %62, %61
  %66 = phi i32 [ 0, %61 ], [ %64, %62 ]
  %67 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %57, i32 %58, i32 %66)
  %68 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  %69 = load i32, i32* @VLV_IOSF_DOORBELL_REQ, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @IOSF_DEVFN_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IOSF_OPCODE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @IOSF_PORT_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32, i32* @IOSF_BYTE_ENABLES_SHIFT, align 4
  %82 = shl i32 15, %81
  %83 = or i32 %80, %82
  %84 = load i32, i32* @IOSF_BAR_SHIFT, align 4
  %85 = shl i32 0, %84
  %86 = or i32 %83, %85
  %87 = load i32, i32* @IOSF_SB_BUSY, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %68, i32 %69, i32 %88)
  %90 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  %91 = load i32, i32* @VLV_IOSF_DOORBELL_REQ, align 4
  %92 = load i32, i32* @IOSF_SB_BUSY, align 4
  %93 = call i64 @__intel_wait_for_register_fw(%struct.intel_uncore* %90, i32 %91, i32 %92, i32 0, i32 10000, i32 0, i32* null)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %65
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  %100 = load i32, i32* @VLV_IOSF_DATA, align 4
  %101 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %99, i32 %100)
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %95
  store i32 0, i32* %16, align 4
  br label %112

104:                                              ; preds = %65
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %109 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %104, %103
  %113 = call i32 (...) @preempt_enable()
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %43
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iosf_mbi_assert_punit_acquired(...) #1

declare dso_local i64 @intel_wait_for_register(%struct.intel_uncore*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
