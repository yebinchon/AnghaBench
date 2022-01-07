; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_setup_spd_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_setup_spd_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }
%struct.hdmi_spd_infoframe = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to initialize SPD infoframe: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to pack SDP infoframe: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, i8*, i8*)* @mtk_hdmi_setup_spd_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_setup_spd_infoframe(%struct.mtk_hdmi* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_hdmi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdmi_spd_infoframe, align 4
  %9 = alloca [29 x i32], align 16
  %10 = alloca i64, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %8, i8* %11, i8* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %3
  %25 = getelementptr inbounds [29 x i32], [29 x i32]* %9, i64 0, i64 0
  %26 = call i64 @hdmi_spd_infoframe_pack(%struct.hdmi_spd_infoframe* %8, i32* %25, i32 116)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %24
  %38 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %5, align 8
  %39 = getelementptr inbounds [29 x i32], [29 x i32]* %9, i64 0, i64 0
  %40 = call i32 @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi* %38, i32* %39, i32 116)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %29, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe*, i8*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @hdmi_spd_infoframe_pack(%struct.hdmi_spd_infoframe*, i32*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
