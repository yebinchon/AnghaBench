; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_attach_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_attach_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.i2c_adapter = type { i32, i32, i32 }
%struct.i2c_dev = type { %struct.TYPE_4__, %struct.i2c_dev* }
%struct.TYPE_4__ = type { i32 }

@i2c_adapter_type = common dso_local global i32 0, align 4
@i2cdev_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_MAJOR = common dso_local global i32 0, align 4
@i2c_dev_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i2c-%d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"i2c-dev: adapter [%s] registered as minor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @i2cdev_attach_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2cdev_attach_adapter(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, @i2c_adapter_type
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %15)
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %6, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %18 = call %struct.i2c_dev* @get_free_i2c_dev(%struct.i2c_adapter* %17)
  store %struct.i2c_dev* %18, %struct.i2c_dev** %7, align 8
  %19 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %20 = call i64 @IS_ERR(%struct.i2c_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.i2c_dev* %23)
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %14
  %26 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %26, i32 0, i32 0
  %28 = call i32 @cdev_init(%struct.TYPE_4__* %27, i32* @i2cdev_fops)
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %31 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %34 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %33, i32 0, i32 0
  %35 = load i32, i32* @I2C_MAJOR, align 4
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MKDEV(i32 %35, i32 %38)
  %40 = call i32 @cdev_add(%struct.TYPE_4__* %34, i32 %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %81

44:                                               ; preds = %25
  %45 = load i32, i32* @i2c_dev_class, align 4
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 2
  %48 = load i32, i32* @I2C_MAJOR, align 4
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MKDEV(i32 %48, i32 %51)
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.i2c_dev* @device_create(i32 %45, i32* %47, i32 %52, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %58 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %57, i32 0, i32 1
  store %struct.i2c_dev* %56, %struct.i2c_dev** %58, align 8
  %59 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %60 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %59, i32 0, i32 1
  %61 = load %struct.i2c_dev*, %struct.i2c_dev** %60, align 8
  %62 = call i64 @IS_ERR(%struct.i2c_dev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %44
  %65 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %65, i32 0, i32 1
  %67 = load %struct.i2c_dev*, %struct.i2c_dev** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.i2c_dev* %67)
  store i32 %68, i32* %8, align 4
  br label %77

69:                                               ; preds = %44
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75)
  store i32 0, i32* %3, align 4
  br label %85

77:                                               ; preds = %64
  %78 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %79 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %78, i32 0, i32 0
  %80 = call i32 @cdev_del(%struct.TYPE_4__* %79)
  br label %81

81:                                               ; preds = %77, %43
  %82 = load %struct.i2c_dev*, %struct.i2c_dev** %7, align 8
  %83 = call i32 @put_i2c_dev(%struct.i2c_dev* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %69, %22, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local %struct.i2c_dev* @get_free_i2c_dev(%struct.i2c_adapter*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_dev*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.i2c_dev* @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_4__*) #1

declare dso_local i32 @put_i2c_dev(%struct.i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
