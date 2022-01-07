; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.a37xx_mbox* }
%struct.a37xx_mbox = type { i64 }
%struct.armada_37xx_rwtm_rx_msg = type { i8**, i8* }

@RWTM_MBOX_RETURN_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @a37xx_mbox_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a37xx_mbox_receive(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.a37xx_mbox*, align 8
  %4 = alloca %struct.armada_37xx_rwtm_rx_msg, align 8
  %5 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %6 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %6, i32 0, i32 0
  %8 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %7, align 8
  store %struct.a37xx_mbox* %8, %struct.a37xx_mbox** %3, align 8
  %9 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %3, align 8
  %10 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RWTM_MBOX_RETURN_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i8* @readl(i64 %13)
  %15 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %4, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %3, align 8
  %21 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @RWTM_MBOX_STATUS(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i8* @readl(i64 %25)
  %27 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %4, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  store i8* %26, i8** %31, align 8
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %37 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %36, %struct.armada_37xx_rwtm_rx_msg* %4)
  ret void
}

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @RWTM_MBOX_STATUS(i32) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, %struct.armada_37xx_rwtm_rx_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
