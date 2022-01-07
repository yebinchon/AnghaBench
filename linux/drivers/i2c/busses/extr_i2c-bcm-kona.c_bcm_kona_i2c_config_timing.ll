; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_config_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_config_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@HSTIM_OFFSET = common dso_local global i64 0, align 8
@HSTIM_HS_MODE_MASK = common dso_local global i32 0, align 4
@TIM_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@TIM_P_SHIFT = common dso_local global i32 0, align 4
@TIM_NO_DIV_SHIFT = common dso_local global i32 0, align 4
@TIM_DIV_SHIFT = common dso_local global i32 0, align 4
@TIM_OFFSET = common dso_local global i64 0, align 8
@CLKEN_M_SHIFT = common dso_local global i32 0, align 4
@CLKEN_N_SHIFT = common dso_local global i32 0, align 4
@CLKEN_CLKEN_MASK = common dso_local global i32 0, align 4
@CLKEN_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_kona_i2c_dev*)* @bcm_kona_i2c_config_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_kona_i2c_config_timing(%struct.bcm_kona_i2c_dev* %0) #0 {
  %2 = alloca %struct.bcm_kona_i2c_dev*, align 8
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %2, align 8
  %3 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %4 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HSTIM_OFFSET, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load i32, i32* @HSTIM_HS_MODE_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HSTIM_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TIM_PRESCALE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %26 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TIM_P_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %24, %31
  %33 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %34 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TIM_NO_DIV_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %32, %39
  %41 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %42 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TIM_DIV_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %40, %47
  %49 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %50 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TIM_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CLKEN_M_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %63 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CLKEN_N_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %61, %68
  %70 = load i32, i32* @CLKEN_CLKEN_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %2, align 8
  %73 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CLKEN_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
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
