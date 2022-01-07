; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pca953x_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @pca953x_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca953x_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pca953x_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = call %struct.pca953x_chip* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.pca953x_chip* %15, %struct.pca953x_chip** %7, align 8
  %16 = load i32, i32* @MAX_BANK, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %21 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %24 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %25 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pca953x_read_regs(%struct.pca953x_chip* %23, i32 %28, i32* %19)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %94

33:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %83, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %37 = call i32 @NBANK(%struct.pca953x_chip* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %34
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = urem i64 %47, 8
  %49 = mul i64 %48, 8
  %50 = lshr i64 %45, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %39
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = urem i64 %62, 8
  %64 = mul i64 %63, 8
  %65 = lshr i64 %60, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %19, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %19, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %54, %39
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %34

86:                                               ; preds = %34
  %87 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %88 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %89 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pca953x_write_regs(%struct.pca953x_chip* %87, i32 %92, i32* %19)
  br label %94

94:                                               ; preds = %86, %32
  %95 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %96 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

declare dso_local %struct.pca953x_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pca953x_read_regs(%struct.pca953x_chip*, i32, i32*) #1

declare dso_local i32 @NBANK(%struct.pca953x_chip*) #1

declare dso_local i32 @pca953x_write_regs(%struct.pca953x_chip*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
