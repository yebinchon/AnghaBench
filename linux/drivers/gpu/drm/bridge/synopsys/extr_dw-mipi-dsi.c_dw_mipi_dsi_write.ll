; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, i64 }
%struct.mipi_dsi_packet = type { i32, i32*, i32* }

@DSI_GEN_PLD_DATA = common dso_local global i32 0, align 4
@DSI_CMD_PKT_STATUS = common dso_local global i64 0, align 8
@GEN_PLD_W_FULL = common dso_local global i32 0, align 4
@CMD_PKT_STATUS_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to get available write payload FIFO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mipi_dsi*, %struct.mipi_dsi_packet*)* @dw_mipi_dsi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_write(%struct.dw_mipi_dsi* %0, %struct.mipi_dsi_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mipi_dsi*, align 8
  %5 = alloca %struct.mipi_dsi_packet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %4, align 8
  store %struct.mipi_dsi_packet* %1, %struct.mipi_dsi_packet** %5, align 8
  %12 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %5, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %5, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %18

18:                                               ; preds = %73, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @memcpy(i64* %10, i32* %26, i32 %27)
  %29 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %30 = load i32, i32* @DSI_GEN_PLD_DATA, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @le32_to_cpu(i64 %31)
  %33 = call i32 @dsi_write(%struct.dw_mipi_dsi* %29, i32 %30, i32 %32)
  store i32 0, i32* %7, align 4
  br label %50

34:                                               ; preds = %21
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @memcpy(i64* %10, i32* %35, i32 %36)
  %38 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %39 = load i32, i32* @DSI_GEN_PLD_DATA, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @le32_to_cpu(i64 %40)
  %42 = call i32 @dsi_write(%struct.dw_mipi_dsi* %38, i32 %39, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %34, %25
  %51 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %52 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DSI_CMD_PKT_STATUS, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @GEN_PLD_W_FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @CMD_PKT_STATUS_TIMEOUT_US, align 4
  %64 = call i32 @readl_poll_timeout(i64 %55, i32 %56, i32 %62, i32 1000, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %50
  %68 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %69 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %50
  br label %18

74:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  %75 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %5, align 8
  %76 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @memcpy(i64* %10, i32* %77, i32 8)
  %79 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @le32_to_cpu(i64 %80)
  %82 = call i32 @dw_mipi_dsi_gen_pkt_hdr_write(%struct.dw_mipi_dsi* %79, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dw_mipi_dsi_gen_pkt_hdr_write(%struct.dw_mipi_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
