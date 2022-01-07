; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_topology_release_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_topology_release_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32 }

@sys_props = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kfd_topology_release_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfd_topology_release_sysfs() #0 {
  %1 = call i32 (...) @kfd_remove_sysfs_node_tree()
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 0), align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 0), align 8
  %6 = call i32 @sysfs_remove_file(i32* %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 3))
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 0), align 8
  %8 = call i32 @sysfs_remove_file(i32* %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 2))
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 1), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 1), align 8
  %13 = call i32 @kobject_del(i32* %12)
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 1), align 8
  %15 = call i32 @kobject_put(i32* %14)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 1), align 8
  br label %16

16:                                               ; preds = %11, %4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 0), align 8
  %18 = call i32 @kobject_del(i32* %17)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 0), align 8
  %20 = call i32 @kobject_put(i32* %19)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_props, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @kfd_remove_sysfs_node_tree(...) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
