; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_cancel_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_cancel_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.fw_card*, i32*)* }
%struct.fw_transaction = type { i32 }

@RCODE_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_cancel_transaction(%struct.fw_card* %0, %struct.fw_transaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_transaction*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_transaction* %1, %struct.fw_transaction** %5, align 8
  %6 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %7 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (%struct.fw_card*, i32*)*, i64 (%struct.fw_card*, i32*)** %9, align 8
  %11 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %12 = load %struct.fw_transaction*, %struct.fw_transaction** %5, align 8
  %13 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %12, i32 0, i32 0
  %14 = call i64 %10(%struct.fw_card* %11, i32* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.fw_transaction*, %struct.fw_transaction** %5, align 8
  %19 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %20 = load i32, i32* @RCODE_CANCELLED, align 4
  %21 = call i32 @close_transaction(%struct.fw_transaction* %18, %struct.fw_card* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @close_transaction(%struct.fw_transaction*, %struct.fw_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
