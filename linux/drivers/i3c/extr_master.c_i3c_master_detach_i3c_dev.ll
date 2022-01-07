; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_detach_i3c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_detach_i3c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i3c_master_controller = type { %struct.TYPE_3__*, %struct.i3c_dev_desc* }
%struct.TYPE_3__ = type { i32 (%struct.i3c_dev_desc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_dev_desc*)* @i3c_master_detach_i3c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_master_detach_i3c_dev(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca %struct.i3c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %2, align 8
  %4 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %5 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %4)
  store %struct.i3c_master_controller* %5, %struct.i3c_master_controller** %3, align 8
  %6 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %7 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %6, i32 0, i32 1
  %8 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %9 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %10 = icmp ne %struct.i3c_dev_desc* %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %13 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.i3c_dev_desc*)*, i32 (%struct.i3c_dev_desc*)** %15, align 8
  %17 = icmp ne i32 (%struct.i3c_dev_desc*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %20 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.i3c_dev_desc*)*, i32 (%struct.i3c_dev_desc*)** %22, align 8
  %24 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %25 = call i32 %23(%struct.i3c_dev_desc* %24)
  br label %26

26:                                               ; preds = %18, %11, %1
  %27 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %28 = call i32 @i3c_master_put_i3c_addrs(%struct.i3c_dev_desc* %27)
  %29 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %30 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @list_del(i32* %31)
  ret void
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_master_put_i3c_addrs(%struct.i3c_dev_desc*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
