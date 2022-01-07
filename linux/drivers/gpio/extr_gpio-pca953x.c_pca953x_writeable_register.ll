; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_writeable_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_writeable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pca953x_chip = type { i32 }

@PCA953X_TYPE = common dso_local global i64 0, align 8
@PCA953x_BANK_OUTPUT = common dso_local global i32 0, align 4
@PCA953x_BANK_POLARITY = common dso_local global i32 0, align 4
@PCA953x_BANK_CONFIG = common dso_local global i32 0, align 4
@PCA957x_BANK_OUTPUT = common dso_local global i32 0, align 4
@PCA957x_BANK_POLARITY = common dso_local global i32 0, align 4
@PCA957x_BANK_CONFIG = common dso_local global i32 0, align 4
@PCA957x_BANK_BUSHOLD = common dso_local global i32 0, align 4
@PCA_PCAL = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_IN_LATCH = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_PULL_EN = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_PULL_SEL = common dso_local global i32 0, align 4
@PCAL9xxx_BANK_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pca953x_writeable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_writeable_register(%struct.device* %0, i32 %1) #0 {
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
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @PCA953x_BANK_OUTPUT, align 4
  %17 = load i32, i32* @PCA953x_BANK_POLARITY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PCA953x_BANK_CONFIG, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @PCA957x_BANK_OUTPUT, align 4
  %23 = load i32, i32* @PCA957x_BANK_POLARITY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PCA957x_BANK_CONFIG, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PCA957x_BANK_BUSHOLD, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %21, %15
  %30 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %31 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCA_PCAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i32, i32* @PCAL9xxx_BANK_IN_LATCH, align 4
  %38 = load i32, i32* @PCAL9xxx_BANK_PULL_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PCAL9xxx_BANK_PULL_SEL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PCAL9xxx_BANK_IRQ_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %29
  %47 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pca953x_check_register(%struct.pca953x_chip* %47, i32 %48, i32 %49)
  ret i32 %50
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
