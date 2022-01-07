; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_recalc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_recalc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { i32 }

@PCAL_GPIO_MASK = common dso_local global i32 0, align 4
@PCAL_PINCTRL_MASK = common dso_local global i32 0, align 4
@BANK_SZ = common dso_local global i32 0, align 4
@REG_ADDR_AI = common dso_local global i32 0, align 4
@PCA957X_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca953x_chip*, i32, i32, i32, i32)* @pca953x_recalc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_recalc_addr(%struct.pca953x_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pca953x_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %17 = call i32 @pca953x_bank_shift(%struct.pca953x_chip* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PCAL_GPIO_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %12, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PCAL_PINCTRL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = shl i32 %25, 1
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BANK_SZ, align 4
  %32 = sdiv i32 %30, %31
  %33 = or i32 %29, %32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %6, align 4
  br label %62

38:                                               ; preds = %5
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %43 = call i32 @NBANK(%struct.pca953x_chip* %42)
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @REG_ADDR_AI, align 4
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %45, %41, %38
  %50 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %51 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @PCA_CHIP_TYPE(i32 %52)
  %54 = load i64, i64* @PCA957X_TYPE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @REG_ADDR_AI, align 4
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %36
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @pca953x_bank_shift(%struct.pca953x_chip*) #1

declare dso_local i32 @NBANK(%struct.pca953x_chip*) #1

declare dso_local i64 @PCA_CHIP_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
