; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_unreg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_unreg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.em_i2c_device = type { i32*, i32, i64 }

@I2C_OFS_SVA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @em_i2c_unreg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_i2c_unreg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.em_i2c_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.em_i2c_device* @i2c_get_adapdata(i32 %6)
  store %struct.em_i2c_device* %7, %struct.em_i2c_device** %3, align 8
  %8 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %9 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %16 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I2C_OFS_SVA0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writeb(i32 0, i64 %19)
  %21 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %22 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @synchronize_irq(i32 %23)
  %25 = load %struct.em_i2c_device*, %struct.em_i2c_device** %3, align 8
  %26 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  ret i32 0
}

declare dso_local %struct.em_i2c_device* @i2c_get_adapdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
