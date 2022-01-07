; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i64, i32, i32 }
%struct.mtk_dsi = type { i64 }

@CMD_DONE_INT_FLAG = common dso_local global i32 0, align 4
@DSI_MODE_CTRL = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dsi engine is not command mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPRX_RD_RDY_INT_FLAG = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"dsi receive buffer size may be NULL\0A\00", align 1
@DSI_RX_DATA0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"dsi get %d byte data from the panel address(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @mtk_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.mtk_dsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %12 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %13 = call %struct.mtk_dsi* @host_to_dsi(%struct.mipi_dsi_host* %12)
  store %struct.mtk_dsi* %13, %struct.mtk_dsi** %6, align 8
  %14 = load i32, i32* @CMD_DONE_INT_FLAG, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.mtk_dsi*, %struct.mtk_dsi** %6, align 8
  %16 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DSI_MODE_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @MODE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %2
  %29 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %30 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @MTK_DSI_HOST_IS_READ(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @LPRX_RD_RDY_INT_FLAG, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.mtk_dsi*, %struct.mtk_dsi** %6, align 8
  %40 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @mtk_dsi_host_send_cmd(%struct.mtk_dsi* %39, %struct.mipi_dsi_msg* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ETIME, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %130

47:                                               ; preds = %38
  %48 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %49 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @MTK_DSI_HOST_IS_READ(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %130

54:                                               ; preds = %47
  %55 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %56 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %130

63:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.mtk_dsi*, %struct.mtk_dsi** %6, align 8
  %69 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DSI_RX_DATA0, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @readb(i64 %75)
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %64

84:                                               ; preds = %64
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %88 = call i32 @mtk_dsi_recv_cnt(i32 %86, i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 4
  %93 = bitcast i32* %92 to i8*
  store i8* %93, i8** %10, align 8
  br label %97

94:                                               ; preds = %84
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 1
  %96 = bitcast i32* %95 to i8*
  store i8* %96, i8** %10, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %98, 10
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 10, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %104 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %109 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %116 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @memcpy(i32 %117, i8* %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %111
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %124 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @DRM_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %121, %59, %53, %44, %24
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.mtk_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @MTK_DSI_HOST_IS_READ(i32) #1

declare dso_local i64 @mtk_dsi_host_send_cmd(%struct.mtk_dsi*, %struct.mipi_dsi_msg*, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @mtk_dsi_recv_cnt(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
