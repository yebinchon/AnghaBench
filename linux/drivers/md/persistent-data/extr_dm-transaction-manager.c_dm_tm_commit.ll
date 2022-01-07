; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, i64 }
%struct.dm_block = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_tm_commit(%struct.dm_transaction_manager* %0, %struct.dm_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_transaction_manager*, align 8
  %5 = alloca %struct.dm_block*, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %4, align 8
  store %struct.dm_block* %1, %struct.dm_block** %5, align 8
  %6 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %4, align 8
  %7 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EWOULDBLOCK, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %4, align 8
  %15 = call i32 @wipe_shadow_table(%struct.dm_transaction_manager* %14)
  %16 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %17 = call i32 @dm_bm_unlock(%struct.dm_block* %16)
  %18 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %4, align 8
  %19 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dm_bm_flush(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @wipe_shadow_table(%struct.dm_transaction_manager*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @dm_bm_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
