; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_cctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_cctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PL080_CONTROL_SWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_DWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_SB_SIZE_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_DB_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_dma_chan*, i32, i32)* @pl08x_get_cctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_get_cctl(%struct.pl08x_dma_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pl08x_dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pl08x_width(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PL080_CONTROL_DWIDTH_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %5, align 8
  %28 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pl08x_burst(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @pl08x_cctl(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %34, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @pl08x_width(i32) #1

declare dso_local i32 @pl08x_burst(i32) #1

declare dso_local i32 @pl08x_cctl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
