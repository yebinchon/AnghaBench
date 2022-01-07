; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.jz4780_dma_chan = type { i32, i32 }
%struct.jz4780_dma_dev = type { i32 }
%struct.jz4780_dma_filter_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @jz4780_dma_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jz4780_dma_chan*, align 8
  %7 = alloca %struct.jz4780_dma_dev*, align 8
  %8 = alloca %struct.jz4780_dma_filter_data*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = call %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan* %9)
  store %struct.jz4780_dma_chan* %10, %struct.jz4780_dma_chan** %6, align 8
  %11 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %6, align 8
  %12 = call %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan* %11)
  store %struct.jz4780_dma_dev* %12, %struct.jz4780_dma_dev** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.jz4780_dma_filter_data*
  store %struct.jz4780_dma_filter_data* %14, %struct.jz4780_dma_filter_data** %8, align 8
  %15 = load %struct.jz4780_dma_filter_data*, %struct.jz4780_dma_filter_data** %8, align 8
  %16 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.jz4780_dma_filter_data*, %struct.jz4780_dma_filter_data** %8, align 8
  %21 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %6, align 8
  %24 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %47

28:                                               ; preds = %19
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %7, align 8
  %31 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %6, align 8
  %34 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %47

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.jz4780_dma_filter_data*, %struct.jz4780_dma_filter_data** %8, align 8
  %43 = getelementptr inbounds %struct.jz4780_dma_filter_data, %struct.jz4780_dma_filter_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %6, align 8
  %46 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %39, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
