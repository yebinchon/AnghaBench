; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c_hfi1_dbg_ibdev_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c_hfi1_dbg_ibdev_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibdev = type { i32*, i32 }

@hfi1_dbg_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_dbg_ibdev_exit(%struct.hfi1_ibdev* %0) #0 {
  %2 = alloca %struct.hfi1_ibdev*, align 8
  store %struct.hfi1_ibdev* %0, %struct.hfi1_ibdev** %2, align 8
  %3 = load i32, i32* @hfi1_dbg_root, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %8 = call i32 @hfi1_fault_exit_debugfs(%struct.hfi1_ibdev* %7)
  %9 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @debugfs_remove(i32 %11)
  %13 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @debugfs_remove_recursive(i32* %15)
  br label %17

17:                                               ; preds = %6, %5
  %18 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @hfi1_fault_exit_debugfs(%struct.hfi1_ibdev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
