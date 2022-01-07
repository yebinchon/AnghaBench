; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { %struct.mcb_bus* }
%struct.mcb_bus = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcb_get_irq(%struct.mcb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcb_device*, align 8
  %4 = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_device* %0, %struct.mcb_device** %3, align 8
  %5 = load %struct.mcb_device*, %struct.mcb_device** %3, align 8
  %6 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %5, i32 0, i32 0
  %7 = load %struct.mcb_bus*, %struct.mcb_bus** %6, align 8
  store %struct.mcb_bus* %7, %struct.mcb_bus** %4, align 8
  %8 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %9 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.mcb_device*)**
  %11 = load i32 (%struct.mcb_device*)*, i32 (%struct.mcb_device*)** %10, align 8
  %12 = icmp ne i32 (%struct.mcb_device*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %15 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.mcb_device*)**
  %17 = load i32 (%struct.mcb_device*)*, i32 (%struct.mcb_device*)** %16, align 8
  %18 = load %struct.mcb_device*, %struct.mcb_device** %3, align 8
  %19 = call i32 %17(%struct.mcb_device* %18)
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.mcb_device*, %struct.mcb_device** %3, align 8
  %22 = call i32 @__mcb_get_irq(%struct.mcb_device* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @__mcb_get_irq(%struct.mcb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
