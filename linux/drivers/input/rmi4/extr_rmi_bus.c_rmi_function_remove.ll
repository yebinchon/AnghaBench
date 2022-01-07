; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_function_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_function_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rmi_function = type { i32 }
%struct.rmi_function_handler = type { i32 (%struct.rmi_function.0*)* }
%struct.rmi_function.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rmi_function_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_function_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.rmi_function_handler*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.rmi_function* @to_rmi_function(%struct.device* %5)
  store %struct.rmi_function* %6, %struct.rmi_function** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.rmi_function_handler* @to_rmi_function_handler(i32 %9)
  store %struct.rmi_function_handler* %10, %struct.rmi_function_handler** %4, align 8
  %11 = load %struct.rmi_function_handler*, %struct.rmi_function_handler** %4, align 8
  %12 = getelementptr inbounds %struct.rmi_function_handler, %struct.rmi_function_handler* %11, i32 0, i32 0
  %13 = load i32 (%struct.rmi_function.0*)*, i32 (%struct.rmi_function.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.rmi_function.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.rmi_function_handler*, %struct.rmi_function_handler** %4, align 8
  %17 = getelementptr inbounds %struct.rmi_function_handler, %struct.rmi_function_handler* %16, i32 0, i32 0
  %18 = load i32 (%struct.rmi_function.0*)*, i32 (%struct.rmi_function.0*)** %17, align 8
  %19 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %20 = bitcast %struct.rmi_function* %19 to %struct.rmi_function.0*
  %21 = call i32 %18(%struct.rmi_function.0* %20)
  br label %22

22:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.rmi_function* @to_rmi_function(%struct.device*) #1

declare dso_local %struct.rmi_function_handler* @to_rmi_function_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
