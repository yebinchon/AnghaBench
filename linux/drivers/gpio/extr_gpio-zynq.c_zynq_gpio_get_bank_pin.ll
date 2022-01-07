; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_get_bank_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_get_bank_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"invalid GPIO pin number: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, %struct.zynq_gpio*)* @zynq_gpio_get_bank_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_gpio_get_bank_pin(i32 %0, i32* %1, i32* %2, %struct.zynq_gpio* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zynq_gpio*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.zynq_gpio* %3, %struct.zynq_gpio** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %58, %4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %13 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %21 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %19, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %33 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ule i32 %31, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %47 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %45, %54
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %66

57:                                               ; preds = %30, %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %10

61:                                               ; preds = %10
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %6, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %42
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
