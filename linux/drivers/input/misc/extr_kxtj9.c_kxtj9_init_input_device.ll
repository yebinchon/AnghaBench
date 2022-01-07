; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_init_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_init_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxtj9_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.input_dev = type { i8*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@G_MAX = common dso_local global i32 0, align 4
@FUZZ = common dso_local global i32 0, align 4
@FLAT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"kxtj9_accel\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kxtj9_data*, %struct.input_dev*)* @kxtj9_init_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kxtj9_init_input_device(%struct.kxtj9_data* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.kxtj9_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %5 = load i32, i32* @EV_ABS, align 4
  %6 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__set_bit(i32 %5, i32 %8)
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = load i32, i32* @ABS_X, align 4
  %12 = load i32, i32* @G_MAX, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* @G_MAX, align 4
  %15 = load i32, i32* @FUZZ, align 4
  %16 = load i32, i32* @FLAT, align 4
  %17 = call i32 @input_set_abs_params(%struct.input_dev* %10, i32 %11, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = load i32, i32* @ABS_Y, align 4
  %20 = load i32, i32* @G_MAX, align 4
  %21 = sub nsw i32 0, %20
  %22 = load i32, i32* @G_MAX, align 4
  %23 = load i32, i32* @FUZZ, align 4
  %24 = load i32, i32* @FLAT, align 4
  %25 = call i32 @input_set_abs_params(%struct.input_dev* %18, i32 %19, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = load i32, i32* @ABS_Z, align 4
  %28 = load i32, i32* @G_MAX, align 4
  %29 = sub nsw i32 0, %28
  %30 = load i32, i32* @G_MAX, align 4
  %31 = load i32, i32* @FUZZ, align 4
  %32 = load i32, i32* @FLAT, align 4
  %33 = call i32 @input_set_abs_params(%struct.input_dev* %26, i32 %27, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @BUS_I2C, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %41 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
