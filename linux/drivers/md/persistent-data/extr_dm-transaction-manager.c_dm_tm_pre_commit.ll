; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_pre_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_pre_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, i32, i64 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_tm_pre_commit(%struct.dm_transaction_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_transaction_manager*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %3, align 8
  %5 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  %6 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EWOULDBLOCK, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  %14 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dm_sm_commit(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %12
  %22 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  %23 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dm_bm_flush(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @dm_sm_commit(i32) #1

declare dso_local i32 @dm_bm_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
