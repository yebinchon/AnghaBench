; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_conf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_conf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@HDMI_INTC_CON = common dso_local global i32 0, align 4
@HDMI_INTC_EN_GLOBAL = common dso_local global i32 0, align 4
@HDMI_INTC_EN_HPD_PLUG = common dso_local global i32 0, align 4
@HDMI_INTC_EN_HPD_UNPLUG = common dso_local global i32 0, align 4
@HDMI_MODE_SEL = common dso_local global i32 0, align 4
@HDMI_MODE_HDMI_EN = common dso_local global i32 0, align 4
@HDMI_MODE_MASK = common dso_local global i32 0, align 4
@HDMI_CON_2 = common dso_local global i32 0, align 4
@HDMI_CON_0 = common dso_local global i32 0, align 4
@HDMI_BLUE_SCR_EN = common dso_local global i32 0, align 4
@HDMI_MODE_DVI_EN = common dso_local global i32 0, align 4
@HDMI_VID_PREAMBLE_DIS = common dso_local global i32 0, align 4
@HDMI_GUARD_BAND_DIS = common dso_local global i32 0, align 4
@HDMI_TYPE13 = common dso_local global i64 0, align 8
@HDMI_V13_BLUE_SCREEN_0 = common dso_local global i32 0, align 4
@HDMI_V13_BLUE_SCREEN_1 = common dso_local global i32 0, align 4
@HDMI_V13_BLUE_SCREEN_2 = common dso_local global i32 0, align 4
@HDMI_V13_AVI_CON = common dso_local global i32 0, align 4
@HDMI_CON_1 = common dso_local global i32 0, align 4
@HDMI_V13_SPD_CON = common dso_local global i32 0, align 4
@HDMI_V13_AUI_CON = common dso_local global i32 0, align 4
@HDMI_V13_ACR_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmi_conf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_conf_init(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %3 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %4 = load i32, i32* @HDMI_INTC_CON, align 4
  %5 = load i32, i32* @HDMI_INTC_EN_GLOBAL, align 4
  %6 = load i32, i32* @HDMI_INTC_EN_HPD_PLUG, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @HDMI_INTC_EN_HPD_UNPLUG, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %3, i32 %4, i32 0, i32 %9)
  %11 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %12 = load i32, i32* @HDMI_MODE_SEL, align 4
  %13 = load i32, i32* @HDMI_MODE_HDMI_EN, align 4
  %14 = load i32, i32* @HDMI_MODE_MASK, align 4
  %15 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %17 = load i32, i32* @HDMI_CON_2, align 4
  %18 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %16, i32 %17, i32 0)
  %19 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %20 = load i32, i32* @HDMI_CON_0, align 4
  %21 = load i32, i32* @HDMI_BLUE_SCR_EN, align 4
  %22 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %19, i32 %20, i32 0, i32 %21)
  %23 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %24 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %29 = load i32, i32* @HDMI_MODE_SEL, align 4
  %30 = load i32, i32* @HDMI_MODE_DVI_EN, align 4
  %31 = load i32, i32* @HDMI_MODE_MASK, align 4
  %32 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %34 = load i32, i32* @HDMI_CON_2, align 4
  %35 = load i32, i32* @HDMI_VID_PREAMBLE_DIS, align 4
  %36 = load i32, i32* @HDMI_GUARD_BAND_DIS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %27, %1
  %40 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %41 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HDMI_TYPE13, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %39
  %48 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %49 = load i32, i32* @HDMI_V13_BLUE_SCREEN_0, align 4
  %50 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %48, i32 %49, i32 18)
  %51 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %52 = load i32, i32* @HDMI_V13_BLUE_SCREEN_1, align 4
  %53 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %51, i32 %52, i32 52)
  %54 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %55 = load i32, i32* @HDMI_V13_BLUE_SCREEN_2, align 4
  %56 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %54, i32 %55, i32 86)
  %57 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %58 = load i32, i32* @HDMI_V13_AVI_CON, align 4
  %59 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %57, i32 %58, i32 2)
  %60 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %61 = call i32 @HDMI_V13_AVI_BYTE(i32 0)
  %62 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %60, i32 %61, i32 0)
  %63 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %64 = load i32, i32* @HDMI_CON_1, align 4
  %65 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %63, i32 %64, i32 512, i32 544)
  %66 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %67 = load i32, i32* @HDMI_V13_SPD_CON, align 4
  %68 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %66, i32 %67, i32 2)
  %69 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %70 = load i32, i32* @HDMI_V13_AUI_CON, align 4
  %71 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %69, i32 %70, i32 2)
  %72 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %73 = load i32, i32* @HDMI_V13_ACR_CON, align 4
  %74 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %72, i32 %73, i32 4)
  br label %81

75:                                               ; preds = %39
  %76 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %77 = call i32 @hdmi_reg_infoframes(%struct.hdmi_context* %76)
  %78 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %79 = load i32, i32* @HDMI_CON_1, align 4
  %80 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %78, i32 %79, i32 2, i32 96)
  br label %81

81:                                               ; preds = %75, %47
  ret void
}

declare dso_local i32 @hdmi_reg_writemask(%struct.hdmi_context*, i32, i32, i32) #1

declare dso_local i32 @hdmi_reg_writeb(%struct.hdmi_context*, i32, i32) #1

declare dso_local i32 @HDMI_V13_AVI_BYTE(i32) #1

declare dso_local i32 @hdmi_reg_infoframes(%struct.hdmi_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
