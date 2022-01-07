; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hsi_client = type { i32 }
%struct.hsc_client_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HSC_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hsc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsc_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.hsc_client_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.hsi_client* @to_hsi_client(%struct.device* %6)
  store %struct.hsi_client* %7, %struct.hsi_client** %3, align 8
  %8 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %9 = call %struct.hsc_client_data* @hsi_client_drvdata(%struct.hsi_client* %8)
  store %struct.hsc_client_data* %9, %struct.hsc_client_data** %4, align 8
  %10 = load %struct.hsc_client_data*, %struct.hsc_client_data** %4, align 8
  %11 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hsc_client_data*, %struct.hsc_client_data** %4, align 8
  %15 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %14, i32 0, i32 0
  %16 = call i32 @cdev_del(%struct.TYPE_2__* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HSC_DEVS, align 4
  %19 = call i32 @unregister_chrdev_region(i32 %17, i32 %18)
  %20 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %21 = call i32 @hsi_client_set_drvdata(%struct.hsi_client* %20, i32* null)
  %22 = load %struct.hsc_client_data*, %struct.hsc_client_data** %4, align 8
  %23 = call i32 @kfree(%struct.hsc_client_data* %22)
  ret i32 0
}

declare dso_local %struct.hsi_client* @to_hsi_client(%struct.device*) #1

declare dso_local %struct.hsc_client_data* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @hsi_client_set_drvdata(%struct.hsi_client*, i32*) #1

declare dso_local i32 @kfree(%struct.hsc_client_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
