; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_master_remove_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_master_remove_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_slave = type { i32, i32 }

@fsi_slave_remove_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @fsi_master_remove_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_remove_slave(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsi_slave*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.fsi_slave* @to_fsi_slave(%struct.device* %6)
  store %struct.fsi_slave* %7, %struct.fsi_slave** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load i32, i32* @fsi_slave_remove_device, align 4
  %10 = call i32 @device_for_each_child(%struct.device* %8, i32* null, i32 %9)
  %11 = load %struct.fsi_slave*, %struct.fsi_slave** %5, align 8
  %12 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %11, i32 0, i32 1
  %13 = load %struct.fsi_slave*, %struct.fsi_slave** %5, align 8
  %14 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %13, i32 0, i32 0
  %15 = call i32 @cdev_device_del(i32* %12, i32* %14)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @put_device(%struct.device* %16)
  ret i32 0
}

declare dso_local %struct.fsi_slave* @to_fsi_slave(%struct.device*) #1

declare dso_local i32 @device_for_each_child(%struct.device*, i32*, i32) #1

declare dso_local i32 @cdev_device_del(i32*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
