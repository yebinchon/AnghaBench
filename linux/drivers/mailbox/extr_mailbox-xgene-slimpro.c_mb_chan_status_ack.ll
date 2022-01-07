; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_mb_chan_status_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_mb_chan_status_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slimpro_mbox_chan = type { i64 }

@REG_DB_STAT = common dso_local global i64 0, align 8
@MBOX_STATUS_ACK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slimpro_mbox_chan*)* @mb_chan_status_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_chan_status_ack(%struct.slimpro_mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slimpro_mbox_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.slimpro_mbox_chan* %0, %struct.slimpro_mbox_chan** %3, align 8
  %5 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %6 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_DB_STAT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MBOX_STATUS_ACK_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @MBOX_STATUS_ACK_MASK, align 4
  %17 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %18 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_DB_STAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
