; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_slave_map = type { i32, i32 }
%struct.dma_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dma_slave_map* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_slave_map* (%struct.dma_device*, i8*, %struct.device*)* @dma_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_slave_map* @dma_filter_match(%struct.dma_device* %0, i8* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.dma_slave_map*, align 8
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_slave_map*, align 8
  store %struct.dma_device* %0, %struct.dma_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %11 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.dma_slave_map* null, %struct.dma_slave_map** %4, align 8
  br label %53

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %49, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %20 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %26 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.dma_slave_map*, %struct.dma_slave_map** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dma_slave_map, %struct.dma_slave_map* %28, i64 %30
  store %struct.dma_slave_map* %31, %struct.dma_slave_map** %9, align 8
  %32 = load %struct.dma_slave_map*, %struct.dma_slave_map** %9, align 8
  %33 = getelementptr inbounds %struct.dma_slave_map, %struct.dma_slave_map* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i8* @dev_name(%struct.device* %35)
  %37 = call i32 @strcmp(i32 %34, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %24
  %40 = load %struct.dma_slave_map*, %struct.dma_slave_map** %9, align 8
  %41 = getelementptr inbounds %struct.dma_slave_map, %struct.dma_slave_map* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcmp(i32 %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load %struct.dma_slave_map*, %struct.dma_slave_map** %9, align 8
  store %struct.dma_slave_map* %47, %struct.dma_slave_map** %4, align 8
  br label %53

48:                                               ; preds = %39, %24
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %17

52:                                               ; preds = %17
  store %struct.dma_slave_map* null, %struct.dma_slave_map** %4, align 8
  br label %53

53:                                               ; preds = %52, %46, %15
  %54 = load %struct.dma_slave_map*, %struct.dma_slave_map** %4, align 8
  ret %struct.dma_slave_map* %54
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
