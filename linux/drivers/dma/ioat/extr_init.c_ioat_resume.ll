; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { %struct.ioatdma_chan** }
%struct.ioatdma_chan = type { i64, i32, i32 }

@IOAT_MAX_CHANS = common dso_local global i32 0, align 4
@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4
@IOAT_CHANERR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioatdma_device*)* @ioat_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_resume(%struct.ioatdma_device* %0) #0 {
  %2 = alloca %struct.ioatdma_device*, align 8
  %3 = alloca %struct.ioatdma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IOAT_MAX_CHANS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.ioatdma_device*, %struct.ioatdma_device** %2, align 8
  %12 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %11, i32 0, i32 0
  %13 = load %struct.ioatdma_chan**, %struct.ioatdma_chan*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ioatdma_chan*, %struct.ioatdma_chan** %13, i64 %15
  %17 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %16, align 8
  store %struct.ioatdma_chan* %17, %struct.ioatdma_chan** %3, align 8
  %18 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %19 = icmp ne %struct.ioatdma_chan* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %45

21:                                               ; preds = %10
  %22 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %26 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %26, i32 0, i32 2
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IOAT_CHANERR_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IOAT_CHANERR_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %21, %20
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
