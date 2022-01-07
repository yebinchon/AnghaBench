; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i64 }

@SUN6I_DSI_CMD_CTL_REG = common dso_local global i32 0, align 4
@DSI_START_LPRX = common dso_local global i32 0, align 4
@SUN6I_DSI_CMD_CTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_dsi*, %struct.mipi_dsi_msg*)* @sun6i_dsi_dcs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_dcs_read(%struct.sun6i_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun6i_dsi*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %9 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %10 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SUN6I_DSI_CMD_TX_REG(i32 0)
  %13 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %14 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %15 = call i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi* %13, %struct.mipi_dsi_msg* %14)
  %16 = call i32 @regmap_write(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %18 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SUN6I_DSI_CMD_CTL_REG, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 %20, i32 3)
  %22 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %23 = load i32, i32* @DSI_START_LPRX, align 4
  %24 = call i32 @sun6i_dsi_start(%struct.sun6i_dsi* %22, i32 %23)
  %25 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %26 = call i32 @sun6i_dsi_inst_wait_for_completion(%struct.sun6i_dsi* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %31 = call i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %68

33:                                               ; preds = %2
  %34 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %35 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SUN6I_DSI_CMD_CTL_REG, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %6)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SUN6I_DSI_CMD_CTL_RX_OVERFLOW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %33
  %47 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %48 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SUN6I_DSI_CMD_RX_REG(i32 0)
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %6)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 255
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %68

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 8
  %63 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %64 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %62, i32* %67, align 4
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %57, %43, %29
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_CMD_TX_REG(i32) #1

declare dso_local i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @sun6i_dsi_start(%struct.sun6i_dsi*, i32) #1

declare dso_local i32 @sun6i_dsi_inst_wait_for_completion(%struct.sun6i_dsi*) #1

declare dso_local i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SUN6I_DSI_CMD_RX_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
