; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, i64 }
%struct.mipi_dsi_msg = type { i32, i32* }

@DSI_CMD_PKT_STATUS = common dso_local global i64 0, align 8
@GEN_RD_CMD_BUSY = common dso_local global i32 0, align 4
@CMD_PKT_STATUS_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timeout during read operation\0A\00", align 1
@GEN_PLD_R_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Read payload FIFO is empty\0A\00", align 1
@DSI_GEN_PLD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mipi_dsi*, %struct.mipi_dsi_msg*)* @dw_mipi_dsi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_read(%struct.dw_mipi_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mipi_dsi*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %12 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %19 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DSI_CMD_PKT_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GEN_RD_CMD_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @CMD_PKT_STATUS_TIMEOUT_US, align 4
  %31 = call i32 @readl_poll_timeout(i64 %22, i32 %23, i32 %29, i32 1000, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %36 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %103

40:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %98, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %41
  %46 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %47 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DSI_CMD_PKT_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @GEN_PLD_R_EMPTY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* @CMD_PKT_STATUS_TIMEOUT_US, align 4
  %59 = call i32 @readl_poll_timeout(i64 %50, i32 %51, i32 %57, i32 1000, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %64 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %103

68:                                               ; preds = %45
  %69 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %70 = load i32, i32* @DSI_GEN_PLD_DATA, align 4
  %71 = call i32 @dsi_read(%struct.dw_mipi_dsi* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %94, %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br label %81

81:                                               ; preds = %75, %72
  %82 = phi i1 [ false, %72 ], [ %80, %75 ]
  br i1 %82, label %83, label %97

83:                                               ; preds = %81
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 8, %85
  %87 = ashr i32 %84, %86
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %72

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %6, align 4
  br label %41

101:                                              ; preds = %41
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %62, %34
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dsi_read(%struct.dw_mipi_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
