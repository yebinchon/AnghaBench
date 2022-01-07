; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_start_split_transaction_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_start_split_transaction_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_transaction = type { i32, i32, i32 }
%struct.fw_card = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_transaction*, %struct.fw_card*)* @start_split_transaction_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_split_transaction_timeout(%struct.fw_transaction* %0, %struct.fw_card* %1) #0 {
  %3 = alloca %struct.fw_transaction*, align 8
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i64, align 8
  store %struct.fw_transaction* %0, %struct.fw_transaction** %3, align 8
  store %struct.fw_card* %1, %struct.fw_card** %4, align 8
  %6 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %7 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %11 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %10, i32 0, i32 2
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %16 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %2
  %21 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %22 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %40

25:                                               ; preds = %14
  %26 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %27 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %29 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %28, i32 0, i32 1
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %32 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i32 @mod_timer(i32* %29, i64 %34)
  %36 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %37 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
