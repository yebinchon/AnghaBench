; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_noa1305.c_noa1305_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_noa1305.c_noa1305_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noa1305_priv = type { i32 }

@NOA1305_REG_INTEGRATION_TIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noa1305_priv*, i32*, i32*)* @noa1305_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noa1305_scale(%struct.noa1305_priv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.noa1305_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.noa1305_priv* %0, %struct.noa1305_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.noa1305_priv*, %struct.noa1305_priv** %5, align 8
  %11 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NOA1305_REG_INTEGRATION_TIME, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %45 [
    i32 128, label %21
    i32 131, label %24
    i32 133, label %27
    i32 135, label %30
    i32 130, label %33
    i32 132, label %36
    i32 134, label %39
    i32 129, label %42
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %6, align 8
  store i32 100, i32* %22, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 616, i32* %23, align 4
  br label %48

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  store i32 100, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 308, i32* %26, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  store i32 100, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 154, i32* %29, align 4
  br label %48

30:                                               ; preds = %19
  %31 = load i32*, i32** %6, align 8
  store i32 100, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 77, i32* %32, align 4
  br label %48

33:                                               ; preds = %19
  %34 = load i32*, i32** %6, align 8
  store i32 1000, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 385, i32* %35, align 4
  br label %48

36:                                               ; preds = %19
  %37 = load i32*, i32** %6, align 8
  store i32 10000, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 1925, i32* %38, align 4
  br label %48

39:                                               ; preds = %19
  %40 = load i32*, i32** %6, align 8
  store i32 100000, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 9625, i32* %41, align 4
  br label %48

42:                                               ; preds = %19
  %43 = load i32*, i32** %6, align 8
  store i32 1000000, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 48125, i32* %44, align 4
  br label %48

45:                                               ; preds = %19
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %21
  %49 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %45, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
