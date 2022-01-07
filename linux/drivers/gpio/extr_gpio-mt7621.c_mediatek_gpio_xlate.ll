; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.mtk_gc = type { i32 }

@MTK_BANK_WIDTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* @mediatek_gpio_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_gpio_xlate(%struct.gpio_chip* %0, %struct.of_phandle_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.of_phandle_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_gc*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %16 = call %struct.mtk_gc* @to_mediatek_gpio(%struct.gpio_chip* %15)
  store %struct.mtk_gc* %16, %struct.mtk_gc** %9, align 8
  %17 = load %struct.mtk_gc*, %struct.mtk_gc** %9, align 8
  %18 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MTK_BANK_WIDTH, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MTK_BANK_WIDTH, align 4
  %40 = srem i32 %38, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.mtk_gc* @to_mediatek_gpio(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
