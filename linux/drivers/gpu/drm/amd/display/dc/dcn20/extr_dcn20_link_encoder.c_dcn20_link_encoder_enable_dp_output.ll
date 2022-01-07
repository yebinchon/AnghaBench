; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_link_encoder.c_dcn20_link_encoder_enable_dp_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_link_encoder.c_dcn20_link_encoder_enable_dp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dc_link_settings = type { i32 }
%struct.dcn10_link_encoder = type { i32 }
%struct.dcn20_link_encoder = type { %struct.dpcssys_phy_seq_cfg }
%struct.dpcssys_phy_seq_cfg = type { i32 }

@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_link_encoder_enable_dp_output(%struct.link_encoder* %0, %struct.dc_link_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.link_encoder*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_link_encoder*, align 8
  %8 = alloca %struct.dcn20_link_encoder*, align 8
  %9 = alloca %struct.dpcssys_phy_seq_cfg*, align 8
  store %struct.link_encoder* %0, %struct.link_encoder** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.link_encoder*, %struct.link_encoder** %4, align 8
  %11 = call %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder* %10)
  store %struct.dcn10_link_encoder* %11, %struct.dcn10_link_encoder** %7, align 8
  %12 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %7, align 8
  %13 = bitcast %struct.dcn10_link_encoder* %12 to %struct.dcn20_link_encoder*
  store %struct.dcn20_link_encoder* %13, %struct.dcn20_link_encoder** %8, align 8
  %14 = load %struct.dcn20_link_encoder*, %struct.dcn20_link_encoder** %8, align 8
  %15 = getelementptr inbounds %struct.dcn20_link_encoder, %struct.dcn20_link_encoder* %14, i32 0, i32 0
  store %struct.dpcssys_phy_seq_cfg* %15, %struct.dpcssys_phy_seq_cfg** %9, align 8
  %16 = load %struct.link_encoder*, %struct.link_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.link_encoder*, %struct.link_encoder** %4, align 8
  %27 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dcn10_link_encoder_enable_dp_output(%struct.link_encoder* %26, %struct.dc_link_settings* %27, i32 %28)
  br label %44

30:                                               ; preds = %3
  %31 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %7, align 8
  %32 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %33 = load %struct.dpcssys_phy_seq_cfg*, %struct.dpcssys_phy_seq_cfg** %9, align 8
  %34 = call i32 @update_cfg_data(%struct.dcn10_link_encoder* %31, %struct.dc_link_settings* %32, %struct.dpcssys_phy_seq_cfg* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %7, align 8
  %39 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %40 = call i32 @enc1_configure_encoder(%struct.dcn10_link_encoder* %38, %struct.dc_link_settings* %39)
  %41 = load %struct.link_encoder*, %struct.link_encoder** %4, align 8
  %42 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  %43 = call i32 @dcn10_link_encoder_setup(%struct.link_encoder* %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %36, %25
  ret void
}

declare dso_local %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @dcn10_link_encoder_enable_dp_output(%struct.link_encoder*, %struct.dc_link_settings*, i32) #1

declare dso_local i32 @update_cfg_data(%struct.dcn10_link_encoder*, %struct.dc_link_settings*, %struct.dpcssys_phy_seq_cfg*) #1

declare dso_local i32 @enc1_configure_encoder(%struct.dcn10_link_encoder*, %struct.dc_link_settings*) #1

declare dso_local i32 @dcn10_link_encoder_setup(%struct.link_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
