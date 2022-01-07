; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ar1021_i2c.c_ar1021_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ar1021_i2c.c_ar1021_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar1021_i2c = type { i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ar1021_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar1021_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ar1021_i2c*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ar1021_i2c*
  store %struct.ar1021_i2c* %13, %struct.ar1021_i2c** %5, align 8
  %14 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %5, align 8
  %15 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %14, i32 0, i32 2
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %5, align 8
  %18 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %5, align 8
  %21 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %5, align 8
  %24 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @i2c_master_recv(i32 %22, i32* %25, i32 8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %79

31:                                               ; preds = %2
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BIT(i32 7)
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %79

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BIT(i32 0)
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 31
  %49 = shl i32 %48, 7
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 127
  %54 = or i32 %49, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 31
  %59 = shl i32 %58, 7
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 127
  %64 = or i32 %59, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = load i32, i32* @ABS_X, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @input_report_abs(%struct.input_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %70 = load i32, i32* @ABS_Y, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @input_report_abs(%struct.input_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = load i32, i32* @BTN_TOUCH, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @input_report_key(%struct.input_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %78 = call i32 @input_sync(%struct.input_dev* %77)
  br label %79

79:                                               ; preds = %39, %38, %30
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %80
}

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
