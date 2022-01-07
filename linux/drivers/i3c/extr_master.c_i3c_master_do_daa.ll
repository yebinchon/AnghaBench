; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_do_daa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_do_daa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_master_do_daa(%struct.i3c_master_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %3, align 8
  %5 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %6 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %5, i32 0, i32 0
  %7 = call i32 @i3c_bus_maintenance_lock(i32* %6)
  %8 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %9 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.i3c_master_controller*)**
  %13 = load i32 (%struct.i3c_master_controller*)*, i32 (%struct.i3c_master_controller*)** %12, align 8
  %14 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %15 = call i32 %13(%struct.i3c_master_controller* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %17 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %16, i32 0, i32 0
  %18 = call i32 @i3c_bus_maintenance_unlock(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %25 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %24, i32 0, i32 0
  %26 = call i32 @i3c_bus_normaluse_lock(i32* %25)
  %27 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %28 = call i32 @i3c_master_register_new_i3c_devs(%struct.i3c_master_controller* %27)
  %29 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %30 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %29, i32 0, i32 0
  %31 = call i32 @i3c_bus_normaluse_unlock(i32* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @i3c_bus_maintenance_lock(i32*) #1

declare dso_local i32 @i3c_bus_maintenance_unlock(i32*) #1

declare dso_local i32 @i3c_bus_normaluse_lock(i32*) #1

declare dso_local i32 @i3c_master_register_new_i3c_devs(%struct.i3c_master_controller*) #1

declare dso_local i32 @i3c_bus_normaluse_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
