; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_dpm_set_vce_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_dpm_set_vce_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_FEATURE_DPM_VCE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @vega20_dpm_set_vce_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_dpm_set_vce_enable(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %7 = load i32, i32* @SMU_FEATURE_DPM_VCE_BIT, align 4
  %8 = call i32 @smu_feature_is_supported(%struct.smu_context* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %14 = load i32, i32* @SMU_FEATURE_DPM_VCE_BIT, align 4
  %15 = call i32 @smu_feature_is_enabled(%struct.smu_context* %13, i32 %14)
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %20 = load i32, i32* @SMU_FEATURE_DPM_VCE_BIT, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @smu_feature_set_enabled(%struct.smu_context* %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %17, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @smu_feature_is_supported(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_feature_set_enabled(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
