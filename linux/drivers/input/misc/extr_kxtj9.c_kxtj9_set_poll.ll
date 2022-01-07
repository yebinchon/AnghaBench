; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_set_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_set_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.kxtj9_data = type { i32, %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kxtj9_set_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxtj9_set_poll(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.kxtj9_data*, align 8
  %12 = alloca %struct.input_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.kxtj9_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.kxtj9_data* %18, %struct.kxtj9_data** %11, align 8
  %19 = load %struct.kxtj9_data*, %struct.kxtj9_data** %11, align 8
  %20 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %19, i32 0, i32 2
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtouint(i8* %22, i32 10, i32* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %4
  %29 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @disable_irq(i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.kxtj9_data*, %struct.kxtj9_data** %11, align 8
  %38 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @max(i32 %36, i32 %40)
  %42 = load %struct.kxtj9_data*, %struct.kxtj9_data** %11, align 8
  %43 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.kxtj9_data*, %struct.kxtj9_data** %11, align 8
  %45 = load %struct.kxtj9_data*, %struct.kxtj9_data** %11, align 8
  %46 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kxtj9_update_odr(%struct.kxtj9_data* %44, i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @enable_irq(i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %28, %26
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.kxtj9_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @kxtj9_update_odr(%struct.kxtj9_data*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
