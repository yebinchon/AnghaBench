; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_detach_i2c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_detach_i2c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_dev_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i3c_master_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.i2c_dev_desc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_dev_desc*)* @i3c_master_detach_i2c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_master_detach_i2c_dev(%struct.i2c_dev_desc* %0) #0 {
  %2 = alloca %struct.i2c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  store %struct.i2c_dev_desc* %0, %struct.i2c_dev_desc** %2, align 8
  %4 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %2, align 8
  %5 = call %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc* %4)
  store %struct.i3c_master_controller* %5, %struct.i3c_master_controller** %3, align 8
  %6 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_dev_desc, %struct.i2c_dev_desc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %11 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.i2c_dev_desc*)*, i32 (%struct.i2c_dev_desc*)** %13, align 8
  %15 = icmp ne i32 (%struct.i2c_dev_desc*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %18 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.i2c_dev_desc*)*, i32 (%struct.i2c_dev_desc*)** %20, align 8
  %22 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %2, align 8
  %23 = call i32 %21(%struct.i2c_dev_desc* %22)
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
