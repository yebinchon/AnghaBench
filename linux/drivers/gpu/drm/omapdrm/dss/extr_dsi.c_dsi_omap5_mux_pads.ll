; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_omap5_mux_pads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_omap5_mux_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32 }

@OMAP5_DSI1_LANEENABLE_SHIFT = common dso_local global i32 0, align 4
@OMAP5_DSI2_LANEENABLE_SHIFT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OMAP5_DSIPHY_SYSCON_OFFSET = common dso_local global i32 0, align 4
@OMAP5_DSI_LANEENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32)* @dsi_omap5_mux_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_omap5_mux_pads(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %8 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @OMAP5_DSI1_LANEENABLE_SHIFT, align 4
  store i32 %12, i32* %6, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @OMAP5_DSI2_LANEENABLE_SHIFT, align 4
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OMAP5_DSIPHY_SYSCON_OFFSET, align 4
  %29 = load i32, i32* @OMAP5_DSI_LANEENABLE_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %24, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
