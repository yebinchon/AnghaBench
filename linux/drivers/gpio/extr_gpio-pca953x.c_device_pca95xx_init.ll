; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_device_pca95xx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_device_pca95xx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@MAX_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca953x_chip*, i64)* @device_pca95xx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_pca95xx_init(%struct.pca953x_chip* %0, i64 %1) #0 {
  %3 = alloca %struct.pca953x_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @MAX_BANK, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %13 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %16 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %21 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %26 = call i64 @NBANK(%struct.pca953x_chip* %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @regcache_sync_region(i32 %14, i64 %19, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %72

32:                                               ; preds = %2
  %33 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %34 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %37 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %42 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %47 = call i64 @NBANK(%struct.pca953x_chip* %46)
  %48 = add nsw i64 %45, %47
  %49 = call i32 @regcache_sync_region(i32 %35, i64 %40, i64 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %72

53:                                               ; preds = %32
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %58 = call i64 @NBANK(%struct.pca953x_chip* %57)
  %59 = call i32 @memset(i32* %11, i32 255, i64 %58)
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %62 = call i64 @NBANK(%struct.pca953x_chip* %61)
  %63 = call i32 @memset(i32* %11, i32 0, i64 %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %66 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %67 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pca953x_write_regs(%struct.pca953x_chip* %65, i32 %70, i32* %11)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %64, %52, %31
  %73 = load i32, i32* %5, align 4
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regcache_sync_region(i32, i64, i64) #2

declare dso_local i64 @NBANK(%struct.pca953x_chip*) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

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
