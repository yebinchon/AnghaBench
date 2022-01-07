; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_pcc.c_get_pcc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_pcc.c_get_pcc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mbox_chan = type { i32 }

@pcc_mbox_ctrl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@pcc_mbox_channels = common dso_local global %struct.mbox_chan* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (i32)* @get_pcc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @get_pcc_channel(i32 %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcc_mbox_ctrl, i32 0, i32 0), align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mbox_chan* @ERR_PTR(i32 %12)
  store %struct.mbox_chan* %13, %struct.mbox_chan** %2, align 8
  br label %19

14:                                               ; preds = %6
  %15 = load %struct.mbox_chan*, %struct.mbox_chan** @pcc_mbox_channels, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %15, i64 %17
  store %struct.mbox_chan* %18, %struct.mbox_chan** %2, align 8
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  ret %struct.mbox_chan* %20
}

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
