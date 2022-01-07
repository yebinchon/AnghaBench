; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_imx25_setup_queue_cfgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_imx25_setup_queue_cfgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25_tcq_priv = type { i32, i32, i32 }

@MX25_PRECHARGE_VALUE = common dso_local global i32 0, align 4
@MX25_TOUCH_DETECT_VALUE = common dso_local global i32 0, align 4
@MX25_TSC_TICR = common dso_local global i32 0, align 4
@MX25_CFG_PRECHARGE = common dso_local global i32 0, align 4
@MX25_CFG_TOUCH_DETECT = common dso_local global i32 0, align 4
@MX25_CFG_X_MEASUREMENT = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_YPLL_OFF = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_XNUR_LOW = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_XPUL_HIGH = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_REFP_XP = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_IN_YP = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_REFN_XN = common dso_local global i32 0, align 4
@MX25_CFG_Y_MEASUREMENT = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_YNLR = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_YPLL_HIGH = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_XNUR_OFF = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_XPUL_OFF = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_REFP_YP = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_IN_XP = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_REFN_YN = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_IGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx25_tcq_priv*, i32)* @imx25_setup_queue_cfgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx25_setup_queue_cfgs(%struct.mx25_tcq_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mx25_tcq_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mx25_tcq_priv* %0, %struct.mx25_tcq_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MX25_PRECHARGE_VALUE, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @MX25_ADCQ_CFG_SETTLING_TIME(i32 %8)
  %10 = or i32 %7, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @MX25_TOUCH_DETECT_VALUE, align 4
  %12 = call i32 @MX25_ADCQ_CFG_NOS(i32 1)
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MX25_ADCQ_CFG_SETTLING_TIME(i32 %14)
  %16 = or i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MX25_TSC_TICR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MX25_CFG_PRECHARGE, align 4
  %27 = call i32 @MX25_ADCQ_CFG(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @regmap_write(i32 %25, i32 %27, i32 %28)
  %30 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MX25_CFG_TOUCH_DETECT, align 4
  %34 = call i32 @MX25_ADCQ_CFG(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @regmap_write(i32 %32, i32 %34, i32 %35)
  %37 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MX25_CFG_X_MEASUREMENT, align 4
  %41 = call i32 @MX25_ADCQ_CFG(i32 %40)
  %42 = load i32, i32* @MX25_ADCQ_CFG_YPLL_OFF, align 4
  %43 = load i32, i32* @MX25_ADCQ_CFG_XNUR_LOW, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MX25_ADCQ_CFG_XPUL_HIGH, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MX25_ADCQ_CFG_REFP_XP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MX25_ADCQ_CFG_IN_YP, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MX25_ADCQ_CFG_REFN_XN, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MX25_ADCQ_CFG_NOS(i32 %55)
  %57 = or i32 %52, %56
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @MX25_ADCQ_CFG_SETTLING_TIME(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @regmap_write(i32 %39, i32 %41, i32 %60)
  %62 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MX25_CFG_Y_MEASUREMENT, align 4
  %66 = call i32 @MX25_ADCQ_CFG(i32 %65)
  %67 = load i32, i32* @MX25_ADCQ_CFG_YNLR, align 4
  %68 = load i32, i32* @MX25_ADCQ_CFG_YPLL_HIGH, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MX25_ADCQ_CFG_XNUR_OFF, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MX25_ADCQ_CFG_XPUL_OFF, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MX25_ADCQ_CFG_REFP_YP, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MX25_ADCQ_CFG_IN_XP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @MX25_ADCQ_CFG_REFN_YN, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %81 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MX25_ADCQ_CFG_NOS(i32 %82)
  %84 = or i32 %79, %83
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @MX25_ADCQ_CFG_SETTLING_TIME(i32 %85)
  %87 = or i32 %84, %86
  %88 = call i32 @regmap_write(i32 %64, i32 %66, i32 %87)
  %89 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %3, align 8
  %90 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MX25_TSC_TICR, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @MX25_ADCQ_CFG_IGS, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @regmap_write(i32 %91, i32 %92, i32 %95)
  ret void
}

declare dso_local i32 @MX25_ADCQ_CFG_SETTLING_TIME(i32) #1

declare dso_local i32 @MX25_ADCQ_CFG_NOS(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @MX25_ADCQ_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
