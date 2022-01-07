; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@UNIPHIER_I2C_DTRM_STA = common dso_local global i32 0, align 4
@UNIPHIER_I2C_DTRM_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32, i32*)* @uniphier_i2c_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_i2c_tx(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 1
  %14 = load i32, i32* @UNIPHIER_I2C_DTRM_STA, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UNIPHIER_I2C_DTRM_NACK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @uniphier_i2c_send_byte(%struct.i2c_adapter* %11, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %42

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %30 = load i32, i32* @UNIPHIER_I2C_DTRM_NACK, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %31, align 4
  %34 = or i32 %30, %33
  %35 = call i32 @uniphier_i2c_send_byte(%struct.i2c_adapter* %29, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %28
  br label %24

41:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38, %21
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @uniphier_i2c_send_byte(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
