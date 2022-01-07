; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_gpio_set_pull_up_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_gpio_set_pull_up_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { i32, i32, i32 }

@PCAL953X_PULL_EN = common dso_local global i32 0, align 4
@PCAL953X_PULL_SEL = common dso_local global i32 0, align 4
@BANK_SZ = common dso_local global i32 0, align 4
@PCA_PCAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_UP = common dso_local global i64 0, align 8
@PIN_CONFIG_BIAS_PULL_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca953x_chip*, i32, i64)* @pca953x_gpio_set_pull_up_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_gpio_set_pull_up_down(%struct.pca953x_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pca953x_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %13 = load i32, i32* @PCAL953X_PULL_EN, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pca953x_recalc_addr(%struct.pca953x_chip* %12, i32 %13, i32 %14, i32 1, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %17 = load i32, i32* @PCAL953X_PULL_SEL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pca953x_recalc_addr(%struct.pca953x_chip* %16, i32 %17, i32 %18, i32 1, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BANK_SZ, align 4
  %22 = urem i32 %20, %21
  %23 = call i32 @BIT(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %25 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCA_PCAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %35 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %38 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @regmap_write_bits(i32 %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %82

46:                                               ; preds = %33
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @PIN_CONFIG_BIAS_PULL_UP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %52 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @regmap_write_bits(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %70

58:                                               ; preds = %46
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @PIN_CONFIG_BIAS_PULL_DOWN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %64 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @regmap_write_bits(i32 %65, i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %58
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %82

74:                                               ; preds = %70
  %75 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %76 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @regmap_write_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %74, %73, %45
  %83 = load %struct.pca953x_chip*, %struct.pca953x_chip** %5, align 8
  %84 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %30
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @pca953x_recalc_addr(%struct.pca953x_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
