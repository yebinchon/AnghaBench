; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_readable_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_readable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pca953x_chip = type { i32 }

@PCA953X_TYPE = common dso_local global i64 0, align 8
@PCA953x_BANK_INPUT = common dso_local global i32 0, align 4
@PCA953x_BANK_OUTPUT = common dso_local global i32 0, align 4
@PCA953x_BANK_POLARITY = common dso_local global i32 0, align 4
@PCA953x_BANK_CONFIG = common dso_local global i32 0, align 4
@PCA957x_BANK_INPUT = common dso_local global i32 0, align 4
@PCA957x_BANK_OUTPUT = common dso_local global i32 0, align 4
@PCA957x_BANK_POLARITY = common dso_local global i32 0, align 4
@PCA957x_BANK_CONFIG = common dso_local global i32 0, align 4
@PCA957x_BANK_BUSHOLD = common dso_local global i32 0, align 4
@PCA_PCAL = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_IN_LATCH = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_PULL_EN = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_PULL_SEL = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_IRQ_MASK = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_IRQ_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pca953x_readable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_readable_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pca953x_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pca953x_chip* @dev_get_drvdata(%struct.device* %7)
  store %struct.pca953x_chip* %8, %struct.pca953x_chip** %5, align 8
  %9 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %10 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @PCA_CHIP_TYPE(i32 %11)
  %13 = load i64, i64* @PCA953X_TYPE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @PCA953x_BANK_INPUT, align 4
  %17 = load i32, i32* @PCA953x_BANK_OUTPUT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PCA953x_BANK_POLARITY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PCA953x_BANK_CONFIG, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @PCA957x_BANK_INPUT, align 4
  %25 = load i32, i32* @PCA957x_BANK_OUTPUT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PCA957x_BANK_POLARITY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PCA957x_BANK_CONFIG, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PCA957x_BANK_BUSHOLD, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %23, %15
  %34 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %35 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCA_PCAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* @PCAL9xxx_BANK_IN_LATCH, align 4
  %42 = load i32, i32* @PCAL9xxx_BANK_PULL_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PCAL9xxx_BANK_PULL_SEL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PCAL9xxx_BANK_IRQ_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PCAL9xxx_BANK_IRQ_STAT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %40, %33
  %53 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @pca953x_check_register(%struct.pca953x_chip* %53, i32 %54, i32 %55)
  ret i32 %56
}

declare dso_local %struct.pca953x_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @PCA_CHIP_TYPE(i32) #1

declare dso_local i32 @pca953x_check_register(%struct.pca953x_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
