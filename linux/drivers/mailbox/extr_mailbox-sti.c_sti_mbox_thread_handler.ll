; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mbox_device = type { i32 }
%struct.sti_mbox_pdata = type { i32 }
%struct.mbox_chan = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sti_mbox_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_mbox_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sti_mbox_device*, align 8
  %6 = alloca %struct.sti_mbox_pdata*, align 8
  %7 = alloca %struct.mbox_chan*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sti_mbox_device*
  store %struct.sti_mbox_device* %10, %struct.sti_mbox_device** %5, align 8
  %11 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %12 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sti_mbox_pdata* @dev_get_platdata(i32 %13)
  store %struct.sti_mbox_pdata* %14, %struct.sti_mbox_pdata** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.sti_mbox_pdata*, %struct.sti_mbox_pdata** %6, align 8
  %18 = getelementptr inbounds %struct.sti_mbox_pdata, %struct.sti_mbox_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %29, %21
  %23 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.mbox_chan* @sti_mbox_irq_to_channel(%struct.sti_mbox_device* %23, i32 %24)
  store %struct.mbox_chan* %25, %struct.mbox_chan** %7, align 8
  %26 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %27 = icmp ne %struct.mbox_chan* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %31 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %30, i32* null)
  %32 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %33 = call i32 @sti_mbox_clear_irq(%struct.mbox_chan* %32)
  %34 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %35 = call i32 @sti_mbox_enable_channel(%struct.mbox_chan* %34)
  br label %22

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local %struct.sti_mbox_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.mbox_chan* @sti_mbox_irq_to_channel(%struct.sti_mbox_device*, i32) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, i32*) #1

declare dso_local i32 @sti_mbox_clear_irq(%struct.mbox_chan*) #1

declare dso_local i32 @sti_mbox_enable_channel(%struct.mbox_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
