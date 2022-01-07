; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_bus_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_bus_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i3c_master_controller*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_master_controller*)* @i3c_master_bus_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_master_bus_cleanup(%struct.i3c_master_controller* %0) #0 {
  %2 = alloca %struct.i3c_master_controller*, align 8
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %2, align 8
  %3 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %2, align 8
  %4 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.i3c_master_controller*)*, i32 (%struct.i3c_master_controller*)** %6, align 8
  %8 = icmp ne i32 (%struct.i3c_master_controller*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %2, align 8
  %11 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.i3c_master_controller*)*, i32 (%struct.i3c_master_controller*)** %13, align 8
  %15 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %2, align 8
  %16 = call i32 %14(%struct.i3c_master_controller* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %2, align 8
  %19 = call i32 @i3c_master_detach_free_devs(%struct.i3c_master_controller* %18)
  ret void
}

declare dso_local i32 @i3c_master_detach_free_devs(%struct.i3c_master_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
