; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_slimpro_mbox_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_slimpro_mbox_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.slimpro_mbox_chan* }
%struct.slimpro_mbox_chan = type { i32, i32, i64 }

@REG_DB_STATMASK = common dso_local global i64 0, align 8
@MBOX_STATUS_ACK_MASK = common dso_local global i32 0, align 4
@MBOX_STATUS_AVAIL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @slimpro_mbox_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slimpro_mbox_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.slimpro_mbox_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %5, i32 0, i32 0
  %7 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %6, align 8
  store %struct.slimpro_mbox_chan* %7, %struct.slimpro_mbox_chan** %3, align 8
  %8 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %9 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_DB_STATMASK, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MBOX_STATUS_ACK_MASK, align 4
  %15 = load i32, i32* @MBOX_STATUS_AVAIL_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %21 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_DB_STATMASK, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %27 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %30 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %33 = call i32 @devm_free_irq(i32 %28, i32 %31, %struct.slimpro_mbox_chan* %32)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.slimpro_mbox_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
