; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_message_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_message_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_test_device = type { i32 }

@mbox_data_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_test_device*)* @mbox_test_message_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbox_test_message_data_ready(%struct.mbox_test_device* %0) #0 {
  %2 = alloca %struct.mbox_test_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.mbox_test_device* %0, %struct.mbox_test_device** %2, align 8
  %5 = load %struct.mbox_test_device*, %struct.mbox_test_device** %2, align 8
  %6 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load i32, i32* @mbox_data_ready, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mbox_test_device*, %struct.mbox_test_device** %2, align 8
  %11 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* %11, i64 %12)
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
