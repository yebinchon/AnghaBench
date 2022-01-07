; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_put_i3c_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_put_i3c_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.i3c_master_controller = type { i32 }

@I3C_ADDR_SLOT_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_dev_desc*)* @i3c_master_put_i3c_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_master_put_i3c_addrs(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca %struct.i3c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %2, align 8
  %4 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %5 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %4)
  store %struct.i3c_master_controller* %5, %struct.i3c_master_controller** %3, align 8
  %6 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %7 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %13 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %12, i32 0, i32 0
  %14 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %15 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %19 = call i32 @i3c_bus_set_addr_slot_status(i32* %13, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %22 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %28 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %27, i32 0, i32 0
  %29 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %30 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %34 = call i32 @i3c_bus_set_addr_slot_status(i32* %28, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %37 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %42 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %49 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %48, i32 0, i32 0
  %50 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %51 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %55 = call i32 @i3c_bus_set_addr_slot_status(i32* %49, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %40, %35
  ret void
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_bus_set_addr_slot_status(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
