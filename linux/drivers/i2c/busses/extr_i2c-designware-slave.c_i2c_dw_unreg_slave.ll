; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_unreg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_unreg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.dw_i2c_dev = type { i32, i32*, i32, i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @i2c_dw_unreg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_unreg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.dw_i2c_dev* @i2c_get_adapdata(i32 %6)
  store %struct.dw_i2c_dev* %7, %struct.dw_i2c_dev** %3, align 8
  %8 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %9 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %8, i32 0, i32 4
  %10 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %9, align 8
  %11 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %12 = call i32 %10(%struct.dw_i2c_dev* %11)
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %14 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %13, i32 0, i32 3
  %15 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %14, align 8
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %17 = call i32 %15(%struct.dw_i2c_dev* %16)
  %18 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @synchronize_irq(i32 %20)
  %22 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %25 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pm_runtime_put(i32 %26)
  ret i32 0
}

declare dso_local %struct.dw_i2c_dev* @i2c_get_adapdata(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
