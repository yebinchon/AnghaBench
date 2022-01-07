; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_init_mcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_init_mcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }
%struct.sseu_dev_info = type { i32, i32* }
%struct.TYPE_2__ = type { %struct.sseu_dev_info }

@GEN10_MIRROR_FUSE3 = common dso_local global i32 0, align 4
@GEN10_L3BANK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"L3 fuse = %x\0A\00", align 1
@GEN10_L3BANK_PAIR_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"No common index found between subslice mask %x and L3 bank mask %x!\0A\00", align 1
@GEN11_MCR_SLICE_MASK = common dso_local global i32 0, align 4
@GEN11_MCR_SUBSLICE_MASK = common dso_local global i32 0, align 4
@GEN8_MCR_SLICE_MASK = common dso_local global i32 0, align 4
@GEN8_MCR_SUBSLICE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"MCR slice/subslice = %x\0A\00", align 1
@GEN8_MCR_SELECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_wa_list*)* @wa_init_mcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_init_mcr(%struct.drm_i915_private* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.sseu_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.sseu_dev_info* %14, %struct.sseu_dev_info** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = call i32 @INTEL_GEN(%struct.drm_i915_private* %15)
  %17 = icmp slt i32 %16, 10
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @INTEL_GEN(%struct.drm_i915_private* %20)
  %22 = icmp sge i32 %21, 10
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %5, align 8
  %25 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @is_power_of_2(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = load i32, i32* @GEN10_MIRROR_FUSE3, align 4
  %33 = call i32 @intel_uncore_read(i32* %31, i32 %32)
  %34 = load i32, i32* @GEN10_L3BANK_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @GEN10_L3BANK_PAIR_COUNT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %23, %2
  store i32 -1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %5, align 8
  %47 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @fls(i32 %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %5, align 8
  %53 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp uge i32 %51, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @GEM_BUG_ON(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %5, align 8
  %61 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %59, %66
  %68 = call i32 @fls(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %45
  %72 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %5, align 8
  %73 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @DRM_WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @fls(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON(i32 %86)
  br label %88

88:                                               ; preds = %71, %45
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %92 = call i32 @INTEL_GEN(%struct.drm_i915_private* %91)
  %93 = icmp sge i32 %92, 11
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @GEN11_MCR_SLICE(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @GEN11_MCR_SUBSLICE(i32 %97)
  %99 = or i32 %96, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @GEN11_MCR_SLICE_MASK, align 4
  %101 = load i32, i32* @GEN11_MCR_SUBSLICE_MASK, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %10, align 4
  br label %112

103:                                              ; preds = %88
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @GEN8_MCR_SLICE(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @GEN8_MCR_SUBSLICE(i32 %106)
  %108 = or i32 %105, %107
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @GEN8_MCR_SLICE_MASK, align 4
  %110 = load i32, i32* @GEN8_MCR_SUBSLICE_MASK, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %103, %94
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %116 = load i32, i32* @GEN8_MCR_SELECTOR, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %115, i32 %116, i32 %117, i32 %118)
  ret void
}

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @intel_uncore_read(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DRM_WARN(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @GEN11_MCR_SLICE(i32) #1

declare dso_local i32 @GEN11_MCR_SUBSLICE(i32) #1

declare dso_local i32 @GEN8_MCR_SLICE(i32) #1

declare dso_local i32 @GEN8_MCR_SUBSLICE(i32) #1

declare dso_local i32 @wa_write_masked_or(%struct.i915_wa_list*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
