; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_gen_pkt_hdr_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_gen_pkt_hdr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, i64 }

@DSI_CMD_PKT_STATUS = common dso_local global i64 0, align 8
@GEN_CMD_FULL = common dso_local global i32 0, align 4
@CMD_PKT_STATUS_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to get available command FIFO\0A\00", align 1
@DSI_GEN_HDR = common dso_local global i32 0, align 4
@GEN_CMD_EMPTY = common dso_local global i32 0, align 4
@GEN_PLD_W_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to write command FIFO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mipi_dsi*, i32)* @dw_mipi_dsi_gen_pkt_hdr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_gen_pkt_hdr_write(%struct.dw_mipi_dsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mipi_dsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %10 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DSI_CMD_PKT_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GEN_CMD_FULL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @CMD_PKT_STATUS_TIMEOUT_US, align 4
  %22 = call i32 @readl_poll_timeout(i64 %13, i32 %14, i32 %20, i32 1000, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %27 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %33 = load i32, i32* @DSI_GEN_HDR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dsi_write(%struct.dw_mipi_dsi* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @GEN_CMD_EMPTY, align 4
  %37 = load i32, i32* @GEN_PLD_W_EMPTY, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %40 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DSI_CMD_PKT_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @CMD_PKT_STATUS_TIMEOUT_US, align 4
  %52 = call i32 @readl_poll_timeout(i64 %43, i32 %44, i32 %50, i32 1000, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %31
  %56 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %57 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %55, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
