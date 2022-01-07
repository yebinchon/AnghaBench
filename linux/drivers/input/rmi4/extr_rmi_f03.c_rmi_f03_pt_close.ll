; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_pt_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_pt_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.f03_data* }
%struct.f03_data = type { %struct.rmi_function* }
%struct.rmi_function = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @rmi_f03_pt_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f03_pt_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.f03_data*, align 8
  %4 = alloca %struct.rmi_function*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 0
  %7 = load %struct.f03_data*, %struct.f03_data** %6, align 8
  store %struct.f03_data* %7, %struct.f03_data** %3, align 8
  %8 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %9 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %8, i32 0, i32 0
  %10 = load %struct.rmi_function*, %struct.rmi_function** %9, align 8
  store %struct.rmi_function* %10, %struct.rmi_function** %4, align 8
  %11 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %12 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %16, align 8
  %18 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %19 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %22 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %17(%struct.TYPE_4__* %20, i32 %23)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
