; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_set_panel_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_set_panel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%union.dpcd_edp_config = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DP_PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4
@DP_EDP_CONFIGURATION_SET = common dso_local global i32 0, align 4
@DDC_RESULT_UNKNOWN = common dso_local global i32 0, align 4
@DDC_RESULT_SUCESSFULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Link: %d eDP panel mode supported: %d eDP panel mode enabled: %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_set_panel_mode(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.dpcd_edp_config, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 @memset(%union.dpcd_edp_config* %5, i8 signext 0, i32 4)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DP_PANEL_MODE_DEFAULT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %15 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %12, %12
  store i32 1, i32* %6, align 4
  br label %16

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %19 = bitcast %union.dpcd_edp_config* %5 to i32*
  %20 = call i32 @core_link_read_dpcd(%struct.dc_link* %17, i32 %18, i32* %19, i32 4)
  %21 = bitcast %union.dpcd_edp_config* %5 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load i32, i32* @DDC_RESULT_UNKNOWN, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = bitcast %union.dpcd_edp_config* %5 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %32 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %33 = bitcast %union.dpcd_edp_config* %5 to i32*
  %34 = call i32 @core_link_write_dpcd(%struct.dc_link* %31, i32 %32, i32* %33, i32 4)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DDC_RESULT_SUCESSFULL, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  br label %40

40:                                               ; preds = %26, %16
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %43 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %46 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DC_LOG_DETECTION_DP_CAPS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @memset(%union.dpcd_edp_config*, i8 signext, i32) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @core_link_write_dpcd(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DC_LOG_DETECTION_DP_CAPS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
