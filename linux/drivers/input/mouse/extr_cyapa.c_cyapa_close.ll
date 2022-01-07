; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.cyapa = type { i32, %struct.TYPE_2__*, i64, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (%struct.cyapa*, i32, i32, i32)* }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }

@PWR_MODE_OFF = common dso_local global i32 0, align 4
@CYAPA_PM_DEACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @cyapa_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %7 = call %struct.cyapa* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.cyapa* %7, %struct.cyapa** %3, align 8
  %8 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %9 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %12 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %11, i32 0, i32 3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %16 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @disable_irq(i32 %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i64 @pm_runtime_enabled(%struct.device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @pm_runtime_disable(%struct.device* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @pm_runtime_set_suspended(%struct.device* %29)
  %31 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %32 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %37 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.cyapa*, i32, i32, i32)*, i32 (%struct.cyapa*, i32, i32, i32)** %39, align 8
  %41 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %42 = load i32, i32* @PWR_MODE_OFF, align 4
  %43 = load i32, i32* @CYAPA_PM_DEACTIVE, align 4
  %44 = call i32 %40(%struct.cyapa* %41, i32 %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %47 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.cyapa* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i64 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
