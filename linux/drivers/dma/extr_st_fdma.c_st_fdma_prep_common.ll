; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_prep_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_prep_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_chan = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"bad direction?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_fdma_chan* (%struct.dma_chan*, i64, i32)* @st_fdma_prep_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_fdma_chan* @st_fdma_prep_common(%struct.dma_chan* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.st_fdma_chan*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_fdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %10 = icmp ne %struct.dma_chan* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store %struct.st_fdma_chan* null, %struct.st_fdma_chan** %4, align 8
  br label %30

15:                                               ; preds = %11
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %16)
  store %struct.st_fdma_chan* %17, %struct.st_fdma_chan** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @is_slave_direction(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %23 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.st_fdma_chan* null, %struct.st_fdma_chan** %4, align 8
  br label %30

28:                                               ; preds = %15
  %29 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  store %struct.st_fdma_chan* %29, %struct.st_fdma_chan** %4, align 8
  br label %30

30:                                               ; preds = %28, %21, %14
  %31 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  ret %struct.st_fdma_chan* %31
}

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
