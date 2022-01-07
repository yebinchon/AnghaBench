; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gyroadc = type { i64, i64, i64, i32 }

@RCAR_GYROADC_MODE_SELECT_1_MB88101A = common dso_local global i64 0, align 8
@RCAR_GYROADC_START_STOP = common dso_local global i64 0, align 8
@RCAR_GYROADC_MODEL_R8A7792 = common dso_local global i64 0, align 8
@RCAR_GYROADC_INTENR = common dso_local global i64 0, align 8
@RCAR_GYROADC_MODE_SELECT = common dso_local global i64 0, align 8
@RCAR_GYROADC_CLOCK_LENGTH = common dso_local global i64 0, align 8
@RCAR_GYROADC_1_25MS_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_gyroadc*)* @rcar_gyroadc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_gyroadc_hw_init(%struct.rcar_gyroadc* %0) #0 {
  %2 = alloca %struct.rcar_gyroadc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rcar_gyroadc* %0, %struct.rcar_gyroadc** %2, align 8
  %6 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %7 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_get_rate(i32 %8)
  %10 = sdiv i32 %9, 1000000
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %13 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RCAR_GYROADC_MODE_SELECT_1_MB88101A, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 10, i32 5
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 1
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %31 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RCAR_GYROADC_START_STOP, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i64 0, i64 %34)
  %36 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %37 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RCAR_GYROADC_MODEL_R8A7792, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %43 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RCAR_GYROADC_INTENR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i64 0, i64 %46)
  br label %48

48:                                               ; preds = %41, %29
  %49 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %50 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %53 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RCAR_GYROADC_MODE_SELECT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i64 %51, i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %60 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RCAR_GYROADC_CLOCK_LENGTH, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i64 %58, i64 %63)
  %65 = load i64, i64* %3, align 8
  %66 = mul i64 %65, 1250
  %67 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %2, align 8
  %68 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RCAR_GYROADC_1_25MS_LENGTH, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i64 %66, i64 %71)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
