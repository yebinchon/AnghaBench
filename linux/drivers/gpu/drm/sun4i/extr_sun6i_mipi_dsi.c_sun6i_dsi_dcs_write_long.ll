; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_write_long.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_write_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUN6I_DSI_CMD_CTL_REG = common dso_local global i32 0, align 4
@DSI_START_LPTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_dsi*, %struct.mipi_dsi_msg*)* @sun6i_dsi_dcs_write_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_dcs_write_long(%struct.sun6i_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun6i_dsi*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %11 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SUN6I_DSI_CMD_TX_REG(i32 0)
  %14 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %15 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %16 = call i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi* %14, %struct.mipi_dsi_msg* %15)
  %17 = call i32 @regmap_write(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %93

31:                                               ; preds = %2
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32* %32, i32* %35, i32 %38)
  %40 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %41 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %47 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sun6i_dsi_crc_compute(i32* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %52 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = call i32 @memcpy(i32* %55, i32* %9, i32 4)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %62 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SUN6I_DSI_CMD_TX_REG(i32 1)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @regmap_bulk_write(i32 %63, i32 %64, i32* %65, i32 %66)
  %68 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %69 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SUN6I_DSI_CMD_CTL_REG, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @regmap_write(i32 %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %79 = load i32, i32* @DSI_START_LPTX, align 4
  %80 = call i32 @sun6i_dsi_start(%struct.sun6i_dsi* %78, i32 %79)
  %81 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %82 = call i32 @sun6i_dsi_inst_wait_for_completion(%struct.sun6i_dsi* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %31
  %86 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %87 = call i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %93

89:                                               ; preds = %31
  %90 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %91 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %85, %28
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_CMD_TX_REG(i32) #1

declare dso_local i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sun6i_dsi_crc_compute(i32*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sun6i_dsi_start(%struct.sun6i_dsi*, i32) #1

declare dso_local i32 @sun6i_dsi_inst_wait_for_completion(%struct.sun6i_dsi*) #1

declare dso_local i32 @sun6i_dsi_inst_abort(%struct.sun6i_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
