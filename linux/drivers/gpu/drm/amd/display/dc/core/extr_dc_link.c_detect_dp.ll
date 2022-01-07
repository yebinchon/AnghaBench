; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_detect_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_detect_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.display_sink_capability = type { i64, i8* }
%struct.audio_support = type { i32 }

@DDC_TRANSACTION_TYPE_I2C_OVER_AUX = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i8* null, align 8
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i8* null, align 8
@dc_connection_mst_branch = common dso_local global i64 0, align 8
@DETECT_REASON_BOOT = common dso_local global i32 0, align 4
@dc_connection_single = common dso_local global i64 0, align 8
@dc_connection_active_dongle = common dso_local global i64 0, align 8
@DISPLAY_DONGLE_DP_HDMI_CONVERTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*, %struct.display_sink_capability*, i32*, %struct.audio_support*, i32)* @detect_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_dp(%struct.dc_link* %0, %struct.display_sink_capability* %1, i32* %2, %struct.audio_support* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_link*, align 8
  %8 = alloca %struct.display_sink_capability*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.audio_support*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %7, align 8
  store %struct.display_sink_capability* %1, %struct.display_sink_capability** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.audio_support* %3, %struct.audio_support** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %14 = load i32, i32* %11, align 4
  %15 = call i8* @link_detect_sink(%struct.dc_link* %13, i32 %14)
  %16 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %17 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %19 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @get_ddc_transaction_type(i8* %20)
  %22 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %23 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %25 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DDC_TRANSACTION_TYPE_I2C_OVER_AUX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %115

29:                                               ; preds = %5
  %30 = load i8*, i8** @SIGNAL_TYPE_DISPLAY_PORT, align 8
  %31 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %32 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %34 = call i32 @detect_dp_sink_caps(%struct.dc_link* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %125

37:                                               ; preds = %29
  %38 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %39 = call i64 @is_mst_supported(%struct.dc_link* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i8*, i8** @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %43 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %44 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* @dc_connection_mst_branch, align 8
  %46 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %47 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %49 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %52 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dal_ddc_service_set_transaction_type(i32 %50, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @DETECT_REASON_BOOT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %61 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %64 = call i32 @dm_helpers_dp_update_branch_info(i32 %62, %struct.dc_link* %63)
  %65 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %66 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @dm_helpers_dp_mst_start_top_mgr(i32 %67, %struct.dc_link* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %59
  %73 = load i64, i64* @dc_connection_single, align 8
  %74 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %75 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i8*, i8** @SIGNAL_TYPE_DISPLAY_PORT, align 8
  %77 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %78 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %72, %59
  br label %80

80:                                               ; preds = %79, %37
  %81 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %82 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @dc_connection_mst_branch, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %88 = call i64 @is_dp_active_dongle(%struct.dc_link* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %86
  %91 = load i64, i64* @dc_connection_active_dongle, align 8
  %92 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %93 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %95 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %90
  %102 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %103 = call i32 @link_disconnect_sink(%struct.dc_link* %102)
  store i32 1, i32* %6, align 4
  br label %125

104:                                              ; preds = %90
  %105 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %106 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DISPLAY_DONGLE_DP_HDMI_CONVERTER, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32*, i32** %9, align 8
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %104
  br label %114

114:                                              ; preds = %113, %86, %80
  br label %124

115:                                              ; preds = %5
  %116 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %117 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %120 = load %struct.audio_support*, %struct.audio_support** %10, align 8
  %121 = call i8* @dp_passive_dongle_detection(i32 %118, %struct.display_sink_capability* %119, %struct.audio_support* %120)
  %122 = load %struct.display_sink_capability*, %struct.display_sink_capability** %8, align 8
  %123 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %115, %114
  store i32 1, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %101, %36
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i8* @link_detect_sink(%struct.dc_link*, i32) #1

declare dso_local i64 @get_ddc_transaction_type(i8*) #1

declare dso_local i32 @detect_dp_sink_caps(%struct.dc_link*) #1

declare dso_local i64 @is_mst_supported(%struct.dc_link*) #1

declare dso_local i32 @dal_ddc_service_set_transaction_type(i32, i64) #1

declare dso_local i32 @dm_helpers_dp_update_branch_info(i32, %struct.dc_link*) #1

declare dso_local i32 @dm_helpers_dp_mst_start_top_mgr(i32, %struct.dc_link*, i32) #1

declare dso_local i64 @is_dp_active_dongle(%struct.dc_link*) #1

declare dso_local i32 @link_disconnect_sink(%struct.dc_link*) #1

declare dso_local i8* @dp_passive_dongle_detection(i32, %struct.display_sink_capability*, %struct.audio_support*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
