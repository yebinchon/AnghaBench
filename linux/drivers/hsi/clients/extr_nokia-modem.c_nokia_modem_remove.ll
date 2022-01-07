; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_nokia-modem.c_nokia_modem_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_nokia-modem.c_nokia_modem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nokia_modem_device = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nokia_modem_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_modem_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nokia_modem_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.nokia_modem_device* @dev_get_drvdata(%struct.device* %5)
  store %struct.nokia_modem_device* %6, %struct.nokia_modem_device** %4, align 8
  %7 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %8 = icmp ne %struct.nokia_modem_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %12 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %17 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @hsi_remove_client(i32* %19, i32* null)
  %21 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %22 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %21, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %22, align 8
  br label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %25 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %30 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @hsi_remove_client(i32* %32, i32* null)
  %34 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %35 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %34, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %35, align 8
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @nokia_modem_gpio_unexport(%struct.device* %37)
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i32 @dev_set_drvdata(%struct.device* %39, i32* null)
  %41 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %42 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @disable_irq_wake(i32 %43)
  %45 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %4, align 8
  %46 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %45, i32 0, i32 0
  %47 = call i32 @tasklet_kill(i32* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.nokia_modem_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @hsi_remove_client(i32*, i32*) #1

declare dso_local i32 @nokia_modem_gpio_unexport(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
