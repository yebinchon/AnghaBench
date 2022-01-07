; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_get_adiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_get_adiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AUDIO_DIV_SERCLK_32 = common dso_local global i32 0, align 4
@AUDIO_DIV_SERCLK_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ser_clk=%luHz fs=%uHz min_aclk=%luHz adiv=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, i32)* @tda998x_get_adiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_get_adiv(%struct.tda998x_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.tda998x_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul i32 %8, 128
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 1000
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @AUDIO_DIV_SERCLK_32, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AUDIO_DIV_SERCLK_1, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 %23, %25
  %27 = icmp ugt i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  br label %17

33:                                               ; preds = %28, %17
  %34 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %35 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39, i64 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
