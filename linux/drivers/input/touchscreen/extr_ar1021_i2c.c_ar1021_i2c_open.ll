; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ar1021_i2c.c_ar1021_i2c_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ar1021_i2c.c_ar1021_i2c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ar1021_i2c = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ar1021_i2c_open.cmd_enable_touch = internal constant [3 x i32] [i32 129, i32 1, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @ar1021_i2c_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar1021_i2c_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.ar1021_i2c*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = call %struct.ar1021_i2c* @input_get_drvdata(%struct.input_dev* %7)
  store %struct.ar1021_i2c* %8, %struct.ar1021_i2c** %4, align 8
  %9 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %4, align 8
  %10 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %4, align 8
  %13 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %15 = call i32 @i2c_master_send(%struct.i2c_client* %14, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ar1021_i2c_open.cmd_enable_touch, i64 0, i64 0), i32 12)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @enable_irq(i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.ar1021_i2c* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
