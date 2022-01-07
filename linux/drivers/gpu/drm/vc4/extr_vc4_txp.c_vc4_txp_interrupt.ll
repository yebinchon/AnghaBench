; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_txp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TXP_DST_CTRL = common dso_local global i32 0, align 4
@TXP_EI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vc4_txp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_txp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vc4_txp*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.vc4_txp*
  store %struct.vc4_txp* %7, %struct.vc4_txp** %5, align 8
  %8 = load i32, i32* @TXP_DST_CTRL, align 4
  %9 = load i32, i32* @TXP_DST_CTRL, align 4
  %10 = call i32 @TXP_READ(i32 %9)
  %11 = load i32, i32* @TXP_EI, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @TXP_WRITE(i32 %8, i32 %13)
  %15 = load %struct.vc4_txp*, %struct.vc4_txp** %5, align 8
  %16 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @to_vc4_crtc(i32 %21)
  %23 = call i32 @vc4_crtc_handle_vblank(i32 %22)
  %24 = load %struct.vc4_txp*, %struct.vc4_txp** %5, align 8
  %25 = getelementptr inbounds %struct.vc4_txp, %struct.vc4_txp* %24, i32 0, i32 0
  %26 = call i32 @drm_writeback_signal_completion(%struct.TYPE_6__* %25, i32 0)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %27
}

declare dso_local i32 @TXP_WRITE(i32, i32) #1

declare dso_local i32 @TXP_READ(i32) #1

declare dso_local i32 @vc4_crtc_handle_vblank(i32) #1

declare dso_local i32 @to_vc4_crtc(i32) #1

declare dso_local i32 @drm_writeback_signal_completion(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
