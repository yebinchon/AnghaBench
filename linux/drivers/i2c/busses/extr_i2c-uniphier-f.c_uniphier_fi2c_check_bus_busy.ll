; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_check_bus_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_check_bus_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.uniphier_fi2c_priv = type { i64, i64 }

@UNIPHIER_FI2C_SR = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_SR_DB = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @uniphier_fi2c_check_bus_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_fi2c_check_bus_busy(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.uniphier_fi2c_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = call %struct.uniphier_fi2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %5)
  store %struct.uniphier_fi2c_priv* %6, %struct.uniphier_fi2c_priv** %4, align 8
  %7 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %4, align 8
  %8 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UNIPHIER_FI2C_SR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  %13 = load i32, i32* @UNIPHIER_FI2C_SR_DB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %4, align 8
  %18 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = icmp sgt i64 %19, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %4, align 8
  %24 = call i32 @uniphier_fi2c_recover(%struct.uniphier_fi2c_priv* %23)
  %25 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %4, align 8
  %26 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %4, align 8
  %32 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.uniphier_fi2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @uniphier_fi2c_recover(%struct.uniphier_fi2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
