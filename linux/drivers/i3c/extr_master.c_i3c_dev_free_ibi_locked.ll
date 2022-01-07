; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_free_ibi_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_free_ibi_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i3c_master_controller = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.i3c_dev_desc*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i3c_dev_free_ibi_locked(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca %struct.i3c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %2, align 8
  %4 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %5 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %4)
  store %struct.i3c_master_controller* %5, %struct.i3c_master_controller** %3, align 8
  %6 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %7 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %13 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %21 = call i32 @i3c_dev_disable_ibi_locked(%struct.i3c_dev_desc* %20)
  %22 = call i64 @WARN_ON(i32 %21)
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %25 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.i3c_dev_desc*)*, i32 (%struct.i3c_dev_desc*)** %27, align 8
  %29 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %30 = call i32 %28(%struct.i3c_dev_desc* %29)
  %31 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %32 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @kfree(%struct.TYPE_4__* %33)
  %35 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %36 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %35, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %36, align 8
  br label %37

37:                                               ; preds = %23, %10
  ret void
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @i3c_dev_disable_ibi_locked(%struct.i3c_dev_desc*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
