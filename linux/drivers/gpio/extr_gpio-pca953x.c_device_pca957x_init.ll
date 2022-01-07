; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_device_pca957x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_device_pca957x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { i32 }

@MAX_BANK = common dso_local global i32 0, align 4
@PCA957X_BKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca953x_chip*, i32)* @device_pca957x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_pca957x_init(%struct.pca953x_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pca953x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MAX_BANK, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.pca953x_chip*, %struct.pca953x_chip** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @device_pca95xx_init(%struct.pca953x_chip* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.pca953x_chip*, %struct.pca953x_chip** %4, align 8
  %22 = call i32 @NBANK(%struct.pca953x_chip* %21)
  %23 = call i32 @memset(i32* %13, i32 2, i32 %22)
  %24 = load %struct.pca953x_chip*, %struct.pca953x_chip** %4, align 8
  %25 = load i32, i32* @PCA957X_BKEN, align 4
  %26 = call i32 @pca953x_write_regs(%struct.pca953x_chip* %24, i32 %25, i32* %13)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @device_pca95xx_init(%struct.pca953x_chip*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @NBANK(%struct.pca953x_chip*) #2

declare dso_local i32 @pca953x_write_regs(%struct.pca953x_chip*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
