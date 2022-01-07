; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_cherryview_sseu_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_cherryview_sseu_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.sseu_dev_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32 }
%struct.TYPE_2__ = type { %struct.sseu_dev_info }

@CHV_FUSE_GT = common dso_local global i32 0, align 4
@CHV_FGT_DISABLE_SS0 = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS0_R0_MASK = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS0_R0_SHIFT = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS0_R1_MASK = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS0_R1_SHIFT = common dso_local global i32 0, align 4
@CHV_FGT_DISABLE_SS1 = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS1_R0_MASK = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS1_R0_SHIFT = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS1_R1_MASK = common dso_local global i32 0, align 4
@CHV_FGT_EU_DIS_SS1_R1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cherryview_sseu_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cherryview_sseu_info_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.sseu_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.sseu_dev_info* %9, %struct.sseu_dev_info** %3, align 8
  %10 = load i32, i32* @CHV_FUSE_GT, align 4
  %11 = call i32 @I915_READ(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @BIT(i32 0)
  %13 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %14 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %16 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %17, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %20 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %19, i32 0, i32 2
  store i32 8, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CHV_FGT_DISABLE_SS0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CHV_FGT_EU_DIS_SS0_R0_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CHV_FGT_EU_DIS_SS0_R0_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CHV_FGT_EU_DIS_SS0_R1_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CHV_FGT_EU_DIS_SS0_R1_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = shl i32 %35, 4
  %37 = or i32 %30, %36
  store i32 %37, i32* %5, align 4
  %38 = call i32 @BIT(i32 0)
  %39 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %40 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @sseu_set_eus(%struct.sseu_dev_info* %45, i32 0, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %25, %1
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CHV_FGT_DISABLE_SS1, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CHV_FGT_EU_DIS_SS1_R0_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CHV_FGT_EU_DIS_SS1_R0_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @CHV_FGT_EU_DIS_SS1_R1_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CHV_FGT_EU_DIS_SS1_R1_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = shl i32 %64, 4
  %66 = or i32 %59, %65
  store i32 %66, i32* %6, align 4
  %67 = call i32 @BIT(i32 1)
  %68 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %69 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @sseu_set_eus(%struct.sseu_dev_info* %74, i32 0, i32 1, i32 %76)
  br label %78

78:                                               ; preds = %54, %49
  %79 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %80 = call i32 @compute_eu_total(%struct.sseu_dev_info* %79)
  %81 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %82 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %84 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %88 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %91 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %90)
  %92 = sdiv i32 %89, %91
  br label %94

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %86
  %95 = phi i32 [ %92, %86 ], [ 0, %93 ]
  %96 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %97 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %99 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %101 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %100)
  %102 = icmp sgt i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %105 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %107 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 2
  %110 = zext i1 %109 to i32
  %111 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %112 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sseu_set_eus(%struct.sseu_dev_info*, i32, i32, i32) #1

declare dso_local i32 @compute_eu_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
