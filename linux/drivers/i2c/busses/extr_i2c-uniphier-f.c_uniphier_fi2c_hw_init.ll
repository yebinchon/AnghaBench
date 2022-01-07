; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_fi2c_priv = type { i32, i64 }

@UNIPHIER_FI2C_CR = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_CR_MST = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CYC = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_LCTL = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_SSUT = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_DSUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_fi2c_priv*)* @uniphier_fi2c_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_fi2c_hw_init(%struct.uniphier_fi2c_priv* %0) #0 {
  %2 = alloca %struct.uniphier_fi2c_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uniphier_fi2c_priv* %0, %struct.uniphier_fi2c_priv** %2, align 8
  %5 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %6 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %9 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UNIPHIER_FI2C_CR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @UNIPHIER_FI2C_CR_MST, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %19 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNIPHIER_FI2C_CR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %25 = call i32 @uniphier_fi2c_reset(%struct.uniphier_fi2c_priv* %24)
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %28 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UNIPHIER_FI2C_CYC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* %3, align 4
  %34 = mul i32 %33, 5
  %35 = udiv i32 %34, 9
  %36 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %37 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UNIPHIER_FI2C_LCTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %3, align 4
  %43 = udiv i32 %42, 2
  %44 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %45 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UNIPHIER_FI2C_SSUT, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* %3, align 4
  %51 = udiv i32 %50, 16
  %52 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %53 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UNIPHIER_FI2C_DSUT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %2, align 8
  %59 = call i32 @uniphier_fi2c_prepare_operation(%struct.uniphier_fi2c_priv* %58)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @uniphier_fi2c_reset(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @uniphier_fi2c_prepare_operation(%struct.uniphier_fi2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
