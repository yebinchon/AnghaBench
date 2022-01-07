; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_display_config_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_display_config_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WATERMARKS_EXIST = common dso_local global i32 0, align 4
@WATERMARKS_LOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to update WMTABLE!\00", align 1
@SMU_FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@SMU_MSG_NumOfDisplays = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_display_config_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_display_config_changed(%struct.smu_context* %0) #0 {
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
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WATERMARKS_LOADED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %11
  %19 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %20 = call i32 @smu_write_watermarks_table(%struct.smu_context* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %18
  %27 = load i32, i32* @WATERMARKS_LOADED, align 4
  %28 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %29 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %11, %1
  %33 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %34 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WATERMARKS_EXIST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %41 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %42 = call i64 @smu_feature_is_supported(%struct.smu_context* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %46 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  %47 = call i64 @smu_feature_is_supported(%struct.smu_context* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %51 = load i32, i32* @SMU_MSG_NumOfDisplays, align 4
  %52 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %53 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %50, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %49, %44, %39, %32
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @smu_write_watermarks_table(%struct.smu_context*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @smu_feature_is_supported(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
