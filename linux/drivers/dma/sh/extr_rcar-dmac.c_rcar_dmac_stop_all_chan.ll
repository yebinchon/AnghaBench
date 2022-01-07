; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_stop_all_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_stop_all_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac = type { i32, i32, %struct.rcar_dmac_chan* }
%struct.rcar_dmac_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_dmac*)* @rcar_dmac_stop_all_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_dmac_stop_all_chan(%struct.rcar_dmac* %0) #0 {
  %2 = alloca %struct.rcar_dmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_dmac_chan*, align 8
  store %struct.rcar_dmac* %0, %struct.rcar_dmac** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.rcar_dmac*, %struct.rcar_dmac** %2, align 8
  %8 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %5
  %12 = load %struct.rcar_dmac*, %struct.rcar_dmac** %2, align 8
  %13 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %12, i32 0, i32 2
  %14 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %14, i64 %16
  store %struct.rcar_dmac_chan* %17, %struct.rcar_dmac_chan** %4, align 8
  %18 = load %struct.rcar_dmac*, %struct.rcar_dmac** %2, align 8
  %19 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %11
  br label %35

26:                                               ; preds = %11
  %27 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %28 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %31 = call i32 @rcar_dmac_chan_halt(%struct.rcar_dmac_chan* %30)
  %32 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %33 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  br label %35

35:                                               ; preds = %26, %25
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %5

38:                                               ; preds = %5
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rcar_dmac_chan_halt(%struct.rcar_dmac_chan*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
