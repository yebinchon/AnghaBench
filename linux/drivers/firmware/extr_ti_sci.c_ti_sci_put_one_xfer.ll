; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_put_one_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_put_one_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_xfers_info = type { i32, i32, i32 }
%struct.ti_sci_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ti_sci_msg_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_sci_xfers_info*, %struct.ti_sci_xfer*)* @ti_sci_put_one_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_put_one_xfer(%struct.ti_sci_xfers_info* %0, %struct.ti_sci_xfer* %1) #0 {
  %3 = alloca %struct.ti_sci_xfers_info*, align 8
  %4 = alloca %struct.ti_sci_xfer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ti_sci_msg_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.ti_sci_xfers_info* %0, %struct.ti_sci_xfers_info** %3, align 8
  store %struct.ti_sci_xfer* %1, %struct.ti_sci_xfer** %4, align 8
  %8 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %4, align 8
  %9 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %12, %struct.ti_sci_msg_hdr** %6, align 8
  %13 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %3, align 8
  %17 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %3, align 8
  %22 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %20, i32 %23)
  %25 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %3, align 8
  %26 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %3, align 8
  %30 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %29, i32 0, i32 0
  %31 = call i32 @up(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
