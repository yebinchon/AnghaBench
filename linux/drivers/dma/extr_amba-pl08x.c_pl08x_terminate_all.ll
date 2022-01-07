; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.pl08x_dma_chan = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32, %struct.pl08x_driver_data* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pl08x_driver_data = type { i32 }

@PL08X_CHAN_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @pl08x_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.pl08x_dma_chan*, align 8
  %5 = alloca %struct.pl08x_driver_data*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.pl08x_dma_chan* @to_pl08x_chan(%struct.dma_chan* %7)
  store %struct.pl08x_dma_chan* %8, %struct.pl08x_dma_chan** %4, align 8
  %9 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %9, i32 0, i32 4
  %11 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %10, align 8
  store %struct.pl08x_driver_data* %11, %struct.pl08x_driver_data** %5, align 8
  %12 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %13 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  store i32 0, i32* %2, align 4
  br label %65

32:                                               ; preds = %21, %1
  %33 = load i32, i32* @PL08X_CHAN_IDLE, align 4
  %34 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %42 = call i32 @pl08x_phy_free(%struct.pl08x_dma_chan* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %45 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %50 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @vchan_terminate_vdesc(i32* %52)
  %54 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %55 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %54, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %55, align 8
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %58 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %59 = call i32 @pl08x_free_txd_list(%struct.pl08x_driver_data* %57, %struct.pl08x_dma_chan* %58)
  %60 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %61 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %56, %26
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.pl08x_dma_chan* @to_pl08x_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pl08x_phy_free(%struct.pl08x_dma_chan*) #1

declare dso_local i32 @vchan_terminate_vdesc(i32*) #1

declare dso_local i32 @pl08x_free_txd_list(%struct.pl08x_driver_data*, %struct.pl08x_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
