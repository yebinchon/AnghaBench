; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rmi_driver* }
%struct.rmi_driver = type { i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f54_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_config(%struct.rmi_function* %0) #0 {
  %2 = alloca %struct.rmi_function*, align 8
  %3 = alloca %struct.rmi_driver*, align 8
  store %struct.rmi_function* %0, %struct.rmi_function** %2, align 8
  %4 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %5 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.rmi_driver*, %struct.rmi_driver** %7, align 8
  store %struct.rmi_driver* %8, %struct.rmi_driver** %3, align 8
  %9 = load %struct.rmi_driver*, %struct.rmi_driver** %3, align 8
  %10 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %10, align 8
  %12 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %16 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %11(%struct.TYPE_2__* %14, i32 %17)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
