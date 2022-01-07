; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_isr_transfer_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_isr_transfer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac_chan = type { %struct.usb_dmac_desc* }
%struct.usb_dmac_desc = type { i64, i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_dmac_chan*)* @usb_dmac_isr_transfer_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dmac_isr_transfer_end(%struct.usb_dmac_chan* %0) #0 {
  %2 = alloca %struct.usb_dmac_chan*, align 8
  %3 = alloca %struct.usb_dmac_desc*, align 8
  store %struct.usb_dmac_chan* %0, %struct.usb_dmac_chan** %2, align 8
  %4 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %2, align 8
  %5 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %4, i32 0, i32 0
  %6 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %5, align 8
  store %struct.usb_dmac_desc* %6, %struct.usb_dmac_desc** %3, align 8
  %7 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %8 = icmp ne %struct.usb_dmac_desc* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %13 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %17 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %2, align 8
  %22 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %23 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @usb_dmac_chan_start_sg(%struct.usb_dmac_chan* %21, i64 %24)
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %2, align 8
  %28 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %29 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %30 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @usb_dmac_get_current_residue(%struct.usb_dmac_chan* %27, %struct.usb_dmac_desc* %28, i64 %32)
  %34 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %35 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %37 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %42 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %44 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %43, i32 0, i32 2
  %45 = call i32 @vchan_cookie_complete(%struct.TYPE_4__* %44)
  %46 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %2, align 8
  %47 = call i32 @usb_dmac_chan_start_desc(%struct.usb_dmac_chan* %46)
  br label %48

48:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @usb_dmac_chan_start_sg(%struct.usb_dmac_chan*, i64) #1

declare dso_local i32 @usb_dmac_get_current_residue(%struct.usb_dmac_chan*, %struct.usb_dmac_desc*, i64) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_dmac_chan_start_desc(%struct.usb_dmac_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
