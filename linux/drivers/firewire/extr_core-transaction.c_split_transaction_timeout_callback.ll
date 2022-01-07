; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_split_transaction_timeout_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_split_transaction_timeout_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_transaction = type { i64, i32, i32 (%struct.fw_card*, i32, i32*, i32, i32)*, i32, %struct.fw_card.0* }
%struct.fw_card = type opaque
%struct.fw_card.0 = type { i64, i32 }
%struct.timer_list = type { i32 }

@split_timeout_timer = common dso_local global i32 0, align 4
@RCODE_CANCELLED = common dso_local global i32 0, align 4
@t = common dso_local global %struct.fw_transaction* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @split_transaction_timeout_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_transaction_timeout_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fw_transaction*, align 8
  %4 = alloca %struct.fw_card.0*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %7 = ptrtoint %struct.fw_transaction* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @split_timeout_timer, align 4
  %10 = call %struct.fw_transaction* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.fw_transaction* %10, %struct.fw_transaction** %3, align 8
  %11 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %12 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %11, i32 0, i32 4
  %13 = load %struct.fw_card.0*, %struct.fw_card.0** %12, align 8
  store %struct.fw_card.0* %13, %struct.fw_card.0** %4, align 8
  %14 = load %struct.fw_card.0*, %struct.fw_card.0** %4, align 8
  %15 = getelementptr inbounds %struct.fw_card.0, %struct.fw_card.0* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %19 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %18, i32 0, i32 3
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.fw_card.0*, %struct.fw_card.0** %4, align 8
  %24 = getelementptr inbounds %struct.fw_card.0, %struct.fw_card.0* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %54

27:                                               ; preds = %1
  %28 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %29 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %28, i32 0, i32 3
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %32 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = shl i64 1, %33
  %35 = xor i64 %34, -1
  %36 = load %struct.fw_card.0*, %struct.fw_card.0** %4, align 8
  %37 = getelementptr inbounds %struct.fw_card.0, %struct.fw_card.0* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.fw_card.0*, %struct.fw_card.0** %4, align 8
  %41 = getelementptr inbounds %struct.fw_card.0, %struct.fw_card.0* %40, i32 0, i32 1
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %45 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %44, i32 0, i32 2
  %46 = load i32 (%struct.fw_card*, i32, i32*, i32, i32)*, i32 (%struct.fw_card*, i32, i32*, i32, i32)** %45, align 8
  %47 = load %struct.fw_card.0*, %struct.fw_card.0** %4, align 8
  %48 = bitcast %struct.fw_card.0* %47 to %struct.fw_card*
  %49 = load i32, i32* @RCODE_CANCELLED, align 4
  %50 = load %struct.fw_transaction*, %struct.fw_transaction** %3, align 8
  %51 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %46(%struct.fw_card* %48, i32 %49, i32* null, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %27, %22
  ret void
}

declare dso_local %struct.fw_transaction* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
