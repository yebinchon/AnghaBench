; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.rcar_lvds = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RCAR_LVDS_QUIRK_EXT_PLL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"enabling LVDS PLL, freq=%luHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_lvds_clk_enable(%struct.drm_bridge* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rcar_lvds*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %9 = call %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge* %8)
  store %struct.rcar_lvds* %9, %struct.rcar_lvds** %6, align 8
  %10 = load %struct.rcar_lvds*, %struct.rcar_lvds** %6, align 8
  %11 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RCAR_LVDS_QUIRK_EXT_PLL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.rcar_lvds*, %struct.rcar_lvds** %6, align 8
  %27 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.rcar_lvds*, %struct.rcar_lvds** %6, align 8
  %32 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.rcar_lvds*, %struct.rcar_lvds** %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @__rcar_lvds_pll_setup_d3_e3(%struct.rcar_lvds* %41, i64 %42, i32 1)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %38, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @__rcar_lvds_pll_setup_d3_e3(%struct.rcar_lvds*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
