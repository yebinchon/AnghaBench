; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_create_non_blocking_clone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_create_non_blocking_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, %struct.dm_transaction_manager* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_transaction_manager* @dm_tm_create_non_blocking_clone(%struct.dm_transaction_manager* %0) #0 {
  %2 = alloca %struct.dm_transaction_manager*, align 8
  %3 = alloca %struct.dm_transaction_manager*, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.dm_transaction_manager* @kmalloc(i32 16, i32 %4)
  store %struct.dm_transaction_manager* %5, %struct.dm_transaction_manager** %3, align 8
  %6 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  %7 = icmp ne %struct.dm_transaction_manager* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  %10 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %2, align 8
  %12 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  %13 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %12, i32 0, i32 1
  store %struct.dm_transaction_manager* %11, %struct.dm_transaction_manager** %13, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  ret %struct.dm_transaction_manager* %15
}

declare dso_local %struct.dm_transaction_manager* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
