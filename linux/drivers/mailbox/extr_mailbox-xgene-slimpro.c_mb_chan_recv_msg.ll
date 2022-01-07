; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_mb_chan_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_mb_chan_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slimpro_mbox_chan = type { i64, i8** }

@REG_DB_DIN0 = common dso_local global i64 0, align 8
@REG_DB_DIN1 = common dso_local global i64 0, align 8
@REG_DB_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slimpro_mbox_chan*)* @mb_chan_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb_chan_recv_msg(%struct.slimpro_mbox_chan* %0) #0 {
  %2 = alloca %struct.slimpro_mbox_chan*, align 8
  store %struct.slimpro_mbox_chan* %0, %struct.slimpro_mbox_chan** %2, align 8
  %3 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %2, align 8
  %4 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REG_DB_DIN0, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i8* @readl(i64 %7)
  %9 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %2, align 8
  %10 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* %8, i8** %12, align 8
  %13 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %2, align 8
  %14 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_DB_DIN1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i8* @readl(i64 %17)
  %19 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %2, align 8
  %20 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  store i8* %18, i8** %22, align 8
  %23 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %2, align 8
  %24 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_DB_IN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i8* @readl(i64 %27)
  %29 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %2, align 8
  %30 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %28, i8** %32, align 8
  ret void
}

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
