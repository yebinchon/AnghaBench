; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_display_config_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_display_config_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WATERMARKS_EXIST = common dso_local global i32 0, align 4
@WATERMARKS_LOADED = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@SMU_MSG_NumOfDisplays = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @navi10_display_config_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_display_config_changed(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %6 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @WATERMARKS_EXIST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WATERMARKS_LOADED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %11
  %19 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %20 = call i32 @smu_write_watermarks_table(%struct.smu_context* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load i32, i32* @WATERMARKS_LOADED, align 4
  %27 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %28 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %11, %1
  %32 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %33 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WATERMARKS_EXIST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %40 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %41 = call i64 @smu_feature_is_supported(%struct.smu_context* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %45 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  %46 = call i64 @smu_feature_is_supported(%struct.smu_context* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %50 = load i32, i32* @SMU_MSG_NumOfDisplays, align 4
  %51 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %52 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %49, i32 %50, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %43, %38, %31
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %59, %23
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @smu_write_watermarks_table(%struct.smu_context*) #1

declare dso_local i64 @smu_feature_is_supported(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
