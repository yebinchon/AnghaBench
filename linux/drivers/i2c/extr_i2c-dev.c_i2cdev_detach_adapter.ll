; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_detach_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_detach_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_dev = type { i32 }

@i2c_adapter_type = common dso_local global i32 0, align 4
@i2c_dev_class = common dso_local global i32 0, align 4
@I2C_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"i2c-dev: adapter [%s] unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @i2cdev_detach_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2cdev_detach_adapter(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @i2c_adapter_type
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %14)
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %6, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.i2c_dev* @i2c_dev_get_by_minor(i32 %18)
  store %struct.i2c_dev* %19, %struct.i2c_dev** %7, align 8
  %20 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %21 = icmp ne %struct.i2c_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %40

23:                                               ; preds = %13
  %24 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %24, i32 0, i32 0
  %26 = call i32 @cdev_del(i32* %25)
  %27 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %28 = call i32 @put_i2c_dev(%struct.i2c_dev* %27)
  %29 = load i32, i32* @i2c_dev_class, align 4
  %30 = load i32, i32* @I2C_MAJOR, align 4
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MKDEV(i32 %30, i32 %33)
  %35 = call i32 @device_destroy(i32 %29, i32 %34)
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %23, %22, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local %struct.i2c_dev* @i2c_dev_get_by_minor(i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @put_i2c_dev(%struct.i2c_dev*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
