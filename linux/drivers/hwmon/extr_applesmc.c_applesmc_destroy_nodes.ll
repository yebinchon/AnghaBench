; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_destroy_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_destroy_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.applesmc_node_group = type { %struct.applesmc_dev_attr* }
%struct.applesmc_dev_attr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@pdev = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applesmc_node_group*)* @applesmc_destroy_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applesmc_destroy_nodes(%struct.applesmc_node_group* %0) #0 {
  %2 = alloca %struct.applesmc_node_group*, align 8
  %3 = alloca %struct.applesmc_node_group*, align 8
  %4 = alloca %struct.applesmc_dev_attr*, align 8
  store %struct.applesmc_node_group* %0, %struct.applesmc_node_group** %2, align 8
  %5 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %2, align 8
  store %struct.applesmc_node_group* %5, %struct.applesmc_node_group** %3, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %3, align 8
  %8 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %7, i32 0, i32 0
  %9 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %8, align 8
  %10 = icmp ne %struct.applesmc_dev_attr* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %6
  %12 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %3, align 8
  %13 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %12, i32 0, i32 0
  %14 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %13, align 8
  store %struct.applesmc_dev_attr* %14, %struct.applesmc_dev_attr** %4, align 8
  br label %15

15:                                               ; preds = %32, %11
  %16 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %4, align 8
  %17 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pdev, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %4, align 8
  %28 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @sysfs_remove_file(i32* %26, %struct.TYPE_9__* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %4, align 8
  %34 = getelementptr inbounds %struct.applesmc_dev_attr, %struct.applesmc_dev_attr* %33, i32 1
  store %struct.applesmc_dev_attr* %34, %struct.applesmc_dev_attr** %4, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %3, align 8
  %37 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %36, i32 0, i32 0
  %38 = load %struct.applesmc_dev_attr*, %struct.applesmc_dev_attr** %37, align 8
  %39 = call i32 @kfree(%struct.applesmc_dev_attr* %38)
  %40 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %3, align 8
  %41 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %40, i32 0, i32 0
  store %struct.applesmc_dev_attr* null, %struct.applesmc_dev_attr** %41, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load %struct.applesmc_node_group*, %struct.applesmc_node_group** %3, align 8
  %44 = getelementptr inbounds %struct.applesmc_node_group, %struct.applesmc_node_group* %43, i32 1
  store %struct.applesmc_node_group* %44, %struct.applesmc_node_group** %3, align 8
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.applesmc_dev_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
