; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8975_data = type { i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@ak8975_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"irq %d request failed, (gpio %d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8975_data*)* @ak8975_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_setup_irq(%struct.ak8975_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8975_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ak8975_data* %0, %struct.ak8975_data** %3, align 8
  %7 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %8 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %7, i32 0, i32 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %11 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %10, i32 0, i32 3
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %14 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %13, i32 0, i32 2
  %15 = call i32 @clear_bit(i32 0, i32* %14)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %26 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpio_to_irq(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ak8975_irq_handler, align 4
  %34 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %35 = load i32, i32* @IRQF_ONESHOT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = call i32 @dev_name(i32* %38)
  %40 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %41 = call i32 @devm_request_irq(i32* %31, i32 %32, i32 %33, i32 %36, i32 %39, %struct.ak8975_data* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %29
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %49 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %29
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %57 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %44
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.ak8975_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
