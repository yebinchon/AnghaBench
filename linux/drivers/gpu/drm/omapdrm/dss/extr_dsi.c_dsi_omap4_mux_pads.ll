; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_omap4_mux_pads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_omap4_mux_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32 }

@OMAP4_DSI1_LANEENABLE_MASK = common dso_local global i32 0, align 4
@OMAP4_DSI1_LANEENABLE_SHIFT = common dso_local global i32 0, align 4
@OMAP4_DSI1_PIPD_MASK = common dso_local global i32 0, align 4
@OMAP4_DSI1_PIPD_SHIFT = common dso_local global i32 0, align 4
@OMAP4_DSI2_LANEENABLE_MASK = common dso_local global i32 0, align 4
@OMAP4_DSI2_LANEENABLE_SHIFT = common dso_local global i32 0, align 4
@OMAP4_DSI2_PIPD_MASK = common dso_local global i32 0, align 4
@OMAP4_DSI2_PIPD_SHIFT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OMAP4_DSIPHY_SYSCON_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32)* @dsi_omap4_mux_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_omap4_mux_pads(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %11 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @OMAP4_DSI1_LANEENABLE_MASK, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @OMAP4_DSI1_LANEENABLE_SHIFT, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @OMAP4_DSI1_PIPD_MASK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @OMAP4_DSI1_PIPD_SHIFT, align 4
  store i32 %18, i32* %9, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @OMAP4_DSI2_LANEENABLE_MASK, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @OMAP4_DSI2_LANEENABLE_SHIFT, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @OMAP4_DSI2_PIPD_MASK, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @OMAP4_DSI2_PIPD_SHIFT, align 4
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OMAP4_DSIPHY_SYSCON_OFFSET, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %40, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
