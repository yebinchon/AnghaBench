; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_upload_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_upload_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { i32 }
%union.hdmi_infoframe = type { i32 }

@HDMI_PACKET_SEND_AUTO = common dso_local global i32 0, align 4
@HDMI_CONTROL_PACKET_BUF_INDEX = common dso_local global i64 0, align 8
@HDMI_MAXIMUM_INFO_FRAME_SIZE = common dso_local global i32 0, align 4
@HDMI_CONTROL_PACKET_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, i32, %union.hdmi_infoframe*, i64, i64, i64, i64)* @inno_hdmi_upload_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_upload_frame(%struct.inno_hdmi* %0, i32 %1, %union.hdmi_infoframe* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inno_hdmi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.hdmi_infoframe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %9, align 8
  store i32 %1, i32* %10, align 4
  store %union.hdmi_infoframe* %2, %union.hdmi_infoframe** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load %struct.inno_hdmi*, %struct.inno_hdmi** %9, align 8
  %25 = load i32, i32* @HDMI_PACKET_SEND_AUTO, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @hdmi_modb(%struct.inno_hdmi* %24, i32 %25, i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %23, %7
  %30 = load %struct.inno_hdmi*, %struct.inno_hdmi** %9, align 8
  %31 = load i64, i64* @HDMI_CONTROL_PACKET_BUF_INDEX, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @hdmi_writeb(%struct.inno_hdmi* %30, i64 %31, i64 %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %29
  %37 = load i32, i32* @HDMI_MAXIMUM_INFO_FRAME_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %16, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %41 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %11, align 8
  %42 = mul nuw i64 8, %38
  %43 = trunc i64 %42 to i32
  %44 = call i64 @hdmi_infoframe_pack(%union.hdmi_infoframe* %41, i64* %40, i32 %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i64, i64* %18, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %77

50:                                               ; preds = %36
  store i64 0, i64* %19, align 8
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.inno_hdmi*, %struct.inno_hdmi** %9, align 8
  %57 = load i64, i64* @HDMI_CONTROL_PACKET_ADDR, align 8
  %58 = load i64, i64* %19, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %19, align 8
  %61 = getelementptr inbounds i64, i64* %40, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @hdmi_writeb(%struct.inno_hdmi* %56, i64 %59, i64 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %19, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %19, align 8
  br label %51

67:                                               ; preds = %51
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.inno_hdmi*, %struct.inno_hdmi** %9, align 8
  %72 = load i32, i32* @HDMI_PACKET_SEND_AUTO, align 4
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @hdmi_modb(%struct.inno_hdmi* %71, i32 %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %70, %67
  store i32 0, i32* %20, align 4
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %20, align 4
  switch i32 %79, label %85 [
    i32 0, label %80
    i32 1, label %83
  ]

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %8, align 4
  ret i32 %84

85:                                               ; preds = %77
  unreachable
}

declare dso_local i32 @hdmi_modb(%struct.inno_hdmi*, i32, i64, i64) #1

declare dso_local i32 @hdmi_writeb(%struct.inno_hdmi*, i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @hdmi_infoframe_pack(%union.hdmi_infoframe*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
