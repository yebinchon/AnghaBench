; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.rcar_lvds = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RCAR_LVDS_QUIRK_EXT_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"disabling LVDS PLL\0A\00", align 1
@LVDPLLCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcar_lvds_clk_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.rcar_lvds*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge* %4)
  store %struct.rcar_lvds* %5, %struct.rcar_lvds** %3, align 8
  %6 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RCAR_LVDS_QUIRK_EXT_PLL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %21 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %25 = load i32, i32* @LVDPLLCR, align 4
  %26 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %24, i32 %25, i32 0)
  %27 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  br label %32

32:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rcar_lvds_write(%struct.rcar_lvds*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
