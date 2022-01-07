; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i32 }
%struct.sun6i_dsi = type { i32 }

@SUN6I_DSI_CMD_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_CMD_CTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@SUN6I_DSI_CMD_CTL_RX_FLAG = common dso_local global i32 0, align 4
@SUN6I_DSI_CMD_CTL_TX_FLAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @sun6i_dsi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_msg*, align 8
  %5 = alloca %struct.sun6i_dsi*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %4, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %8 = call %struct.sun6i_dsi* @host_to_sun6i_dsi(%struct.mipi_dsi_host* %7)
  store %struct.sun6i_dsi* %8, %struct.sun6i_dsi** %5, align 8
  %9 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %10 = call i32 @sun6i_dsi_inst_wait_for_completion(%struct.sun6i_dsi* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %15 = call i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %18 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SUN6I_DSI_CMD_CTL_REG, align 4
  %21 = load i32, i32* @SUN6I_DSI_CMD_CTL_RX_OVERFLOW, align 4
  %22 = load i32, i32* @SUN6I_DSI_CMD_CTL_RX_FLAG, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUN6I_DSI_CMD_CTL_TX_FLAG, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @regmap_write(i32 %19, i32 %20, i32 %25)
  %27 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %48 [
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
    i32 132, label %34
    i32 131, label %38
  ]

30:                                               ; preds = %16, %16, %16
  %31 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %32 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %33 = call i32 @sun6i_dsi_dcs_write_short(%struct.sun6i_dsi* %31, %struct.mipi_dsi_msg* %32)
  store i32 %33, i32* %6, align 4
  br label %51

34:                                               ; preds = %16
  %35 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %36 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %37 = call i32 @sun6i_dsi_dcs_write_long(%struct.sun6i_dsi* %35, %struct.mipi_dsi_msg* %36)
  store i32 %37, i32* %6, align 4
  br label %51

38:                                               ; preds = %16
  %39 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %40 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %5, align 8
  %45 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %46 = call i32 @sun6i_dsi_dcs_read(%struct.sun6i_dsi* %44, %struct.mipi_dsi_msg* %45)
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %16, %47
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %43, %34, %30
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.sun6i_dsi* @host_to_sun6i_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @sun6i_dsi_inst_wait_for_completion(%struct.sun6i_dsi*) #1

declare dso_local i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @sun6i_dsi_dcs_write_short(%struct.sun6i_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @sun6i_dsi_dcs_write_long(%struct.sun6i_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @sun6i_dsi_dcs_read(%struct.sun6i_dsi*, %struct.mipi_dsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
