; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_setup_host_notify_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_setup_host_notify_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.irq_domain*, %struct.TYPE_2__ }
%struct.irq_domain = type { i32 }
%struct.TYPE_2__ = type { i32 }

@I2C_FUNC_SMBUS_HOST_NOTIFY = common dso_local global i32 0, align 4
@I2C_ADDR_7BITS_COUNT = common dso_local global i32 0, align 4
@i2c_host_notify_irq_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2c_setup_host_notify_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_setup_host_notify_irq_domain(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = load i32, i32* @I2C_FUNC_SMBUS_HOST_NOTIFY, align 4
  %7 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @I2C_ADDR_7BITS_COUNT, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %17 = call %struct.irq_domain* @irq_domain_create_linear(i32 %14, i32 %15, i32* @i2c_host_notify_irq_ops, %struct.i2c_adapter* %16)
  store %struct.irq_domain* %17, %struct.irq_domain** %4, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %19 = icmp ne %struct.irq_domain* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %10
  %24 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 0
  store %struct.irq_domain* %24, %struct.irq_domain** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %20, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.irq_domain* @irq_domain_create_linear(i32, i32, i32*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
