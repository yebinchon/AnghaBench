; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cap11xx.c_cap11xx_thread_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cap11xx.c_cap11xx_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cap11xx_priv = type { %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@CAP11XX_REG_MAIN_CONTROL = common dso_local global i32 0, align 4
@CAP11XX_REG_SENSOR_INPUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cap11xx_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap11xx_thread_func(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cap11xx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cap11xx_priv*
  store %struct.cap11xx_priv* %10, %struct.cap11xx_priv** %5, align 8
  %11 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL, align 4
  %15 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 1, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %5, align 8
  %21 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAP11XX_REG_SENSOR_INPUT, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %61

28:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %5, align 8
  %32 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %5, align 8
  %39 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %5, align 8
  %42 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = call i32 @input_report_key(%struct.TYPE_3__* %40, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %5, align 8
  %58 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @input_sync(%struct.TYPE_3__* %59)
  br label %61

61:                                               ; preds = %56, %27, %18
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @input_report_key(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
