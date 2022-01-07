; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ibm_iic_private = type { i32 }

@iic_force_poll = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"irq_of_parse_and_map failed\0A\00", align 1
@iic_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"IBM IIC\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"request_irq %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ibm_iic_private*)* @iic_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_request_irq(%struct.platform_device* %0, %struct.ibm_iic_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ibm_iic_private*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ibm_iic_private* %1, %struct.ibm_iic_private** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load i64, i64* @iic_force_poll, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i32 @irq_of_parse_and_map(%struct.device_node* %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %26 = call i32 @iic_interrupt_mode(%struct.ibm_iic_private* %25, i32 0)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @iic_handler, align 4
  %29 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %30 = call i64 @request_irq(i32 %27, i32 %28, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.ibm_iic_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %32, %20, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32 @iic_interrupt_mode(%struct.ibm_iic_private*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.ibm_iic_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
