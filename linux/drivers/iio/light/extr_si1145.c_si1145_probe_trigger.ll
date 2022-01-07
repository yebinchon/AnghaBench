; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32 }
%struct.si1145_data = type { %struct.iio_trigger*, %struct.i2c_client* }
%struct.iio_trigger = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.i2c_client = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@si1145_trigger_ops = common dso_local global i32 0, align 4
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"si1145_irq\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @si1145_probe_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_probe_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.si1145_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.si1145_data* @iio_priv(%struct.iio_dev* %8)
  store %struct.si1145_data* %9, %struct.si1145_data** %4, align 8
  %10 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %11 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.iio_trigger* @devm_iio_trigger_alloc(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  store %struct.iio_trigger* %21, %struct.iio_trigger** %6, align 8
  %22 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %23 = icmp ne %struct.iio_trigger* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %31 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %34 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %33, i32 0, i32 0
  store i32* @si1145_trigger_ops, i32** %34, align 8
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %37 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %35, %struct.iio_dev* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %44 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %45 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %46 = call i32 @devm_request_irq(i32* %39, i32 %42, i32 %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.iio_trigger* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %27
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %73

54:                                               ; preds = %27
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %58 = call i32 @devm_iio_trigger_register(i32* %56, %struct.iio_trigger* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %54
  %64 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %65 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %66 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %65, i32 0, i32 0
  store %struct.iio_trigger* %64, %struct.iio_trigger** %66, align 8
  %67 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %68 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %67, i32 0, i32 0
  %69 = load %struct.iio_trigger*, %struct.iio_trigger** %68, align 8
  %70 = call i32 @iio_trigger_get(%struct.iio_trigger* %69)
  %71 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %63, %61, %49, %24
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.si1145_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.iio_trigger*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_iio_trigger_register(i32*, %struct.iio_trigger*) #1

declare dso_local i32 @iio_trigger_get(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
