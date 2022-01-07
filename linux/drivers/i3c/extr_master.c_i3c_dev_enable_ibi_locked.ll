; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_enable_ibi_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_enable_ibi_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i3c_master_controller = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.i3c_dev_desc*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_dev_enable_ibi_locked(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_dev_desc*, align 8
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %3, align 8
  %6 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %7 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %6)
  store %struct.i3c_master_controller* %7, %struct.i3c_master_controller** %4, align 8
  %8 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %9 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %17 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.i3c_dev_desc*)*, i32 (%struct.i3c_dev_desc*)** %19, align 8
  %21 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %22 = call i32 %20(%struct.i3c_dev_desc* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %27 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %15
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
