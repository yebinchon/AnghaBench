; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_config_timing_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_config_timing_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@TIM_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@TIM_P_SHIFT = common dso_local global i32 0, align 4
@TIM_NO_DIV_SHIFT = common dso_local global i32 0, align 4
@TIM_DIV_SHIFT = common dso_local global i32 0, align 4
@TIM_OFFSET = common dso_local global i64 0, align 8
@HSTIM_HS_HOLD_SHIFT = common dso_local global i32 0, align 4
@HSTIM_HS_HIGH_PHASE_SHIFT = common dso_local global i32 0, align 4
@HSTIM_HS_SETUP_SHIFT = common dso_local global i32 0, align 4
@HSTIM_OFFSET = common dso_local global i64 0, align 8
@HSTIM_HS_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_kona_i2c_dev*)* @bcm_kona_i2c_config_timing_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_kona_i2c_config_timing_hs(%struct.bcm_kona_i2c_dev* %0) #0 {
  %2 = alloca %struct.bcm_kona_i2c_dev*, align 8
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %2, align 8
  %3 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %4 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TIM_PRESCALE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TIM_P_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %9, %16
  %18 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TIM_NO_DIV_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %17, %24
  %26 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %27 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TIM_DIV_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %25, %32
  %34 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %35 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TIM_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %41 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HSTIM_HS_HOLD_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %48 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HSTIM_HS_HIGH_PHASE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %46, %53
  %55 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HSTIM_HS_SETUP_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %54, %61
  %63 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %64 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HSTIM_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %70 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HSTIM_OFFSET, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  %75 = load i32, i32* @HSTIM_HS_MODE_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %78 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HSTIM_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
