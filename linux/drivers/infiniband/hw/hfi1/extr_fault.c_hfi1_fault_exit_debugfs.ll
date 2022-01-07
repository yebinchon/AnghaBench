; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_fault_exit_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_fault_exit_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_fault_exit_debugfs(%struct.hfi1_ibdev* %0) #0 {
  %2 = alloca %struct.hfi1_ibdev*, align 8
  store %struct.hfi1_ibdev* %0, %struct.hfi1_ibdev** %2, align 8
  %3 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %4 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @debugfs_remove_recursive(i32 %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @kfree(%struct.TYPE_2__* %17)
  %19 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %20 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %19, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %20, align 8
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
