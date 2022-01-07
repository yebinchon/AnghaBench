; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.hi6220_mbox_chan* }
%struct.hi6220_mbox_chan = type { i32, i64, %struct.hi6220_mbox* }
%struct.hi6220_mbox = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @hi6220_mbox_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_mbox_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.hi6220_mbox_chan*, align 8
  %4 = alloca %struct.hi6220_mbox*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %5, i32 0, i32 0
  %7 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %6, align 8
  store %struct.hi6220_mbox_chan* %7, %struct.hi6220_mbox_chan** %3, align 8
  %8 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %3, align 8
  %9 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %8, i32 0, i32 2
  %10 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %9, align 8
  store %struct.hi6220_mbox* %10, %struct.hi6220_mbox** %4, align 8
  %11 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %3, align 8
  %12 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %3, align 8
  %14 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BIT(i32 %15)
  %17 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %4, align 8
  %18 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ACK_INT_ENA_REG(i32 %19)
  %21 = call i32 @writel(i32 %16, i32 %20)
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ACK_INT_ENA_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
