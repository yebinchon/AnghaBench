; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_sideband.c_intel_sbi_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_sideband.c_intel_sbi_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@SBI_CTL_STAT = common dso_local global i32 0, align 4
@SBI_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for SBI to become ready\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SBI_ADDR = common dso_local global i32 0, align 4
@SBI_DATA = common dso_local global i32 0, align 4
@SBI_ICLK = common dso_local global i32 0, align 4
@SBI_CTL_DEST_ICLK = common dso_local global i32 0, align 4
@SBI_CTL_OP_CRRD = common dso_local global i32 0, align 4
@SBI_CTL_DEST_MPHY = common dso_local global i32 0, align 4
@SBI_CTL_OP_IORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"timeout waiting for SBI to complete read\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SBI_RESPONSE_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error during SBI read of reg %x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i64, i32, i32*, i32)* @intel_sbi_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sbi_rw(%struct.drm_i915_private* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_uncore*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  store %struct.intel_uncore* %15, %struct.intel_uncore** %12, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  %20 = load i32, i32* @SBI_CTL_STAT, align 4
  %21 = load i32, i32* @SBI_BUSY, align 4
  %22 = call i64 @intel_wait_for_register_fw(%struct.intel_uncore* %19, i32 %20, i32 %21, i32 0, i32 100)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %99

28:                                               ; preds = %5
  %29 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  %30 = load i32, i32* @SBI_ADDR, align 4
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 16
  %34 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %29, i32 %30, i32 %33)
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  %36 = load i32, i32* @SBI_DATA, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %43

40:                                               ; preds = %28
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 0, %39 ], [ %42, %40 ]
  %45 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %35, i32 %36, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SBI_ICLK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @SBI_CTL_DEST_ICLK, align 4
  %51 = load i32, i32* @SBI_CTL_OP_CRRD, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %13, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @SBI_CTL_DEST_MPHY, align 4
  %55 = load i32, i32* @SBI_CTL_OP_IORD, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = call i32 @BIT(i32 8)
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  %66 = load i32, i32* @SBI_CTL_STAT, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @SBI_BUSY, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %65, i32 %66, i32 %69)
  %71 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  %72 = load i32, i32* @SBI_CTL_STAT, align 4
  %73 = load i32, i32* @SBI_BUSY, align 4
  %74 = call i64 @__intel_wait_for_register_fw(%struct.intel_uncore* %71, i32 %72, i32 %73, i32 0, i32 100, i32 100, i32* %13)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %99

80:                                               ; preds = %64
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @SBI_RESPONSE_FAIL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @ENXIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %99

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  %95 = load i32, i32* @SBI_DATA, align 4
  %96 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %94, i32 %95)
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %90
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %85, %76, %24
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
