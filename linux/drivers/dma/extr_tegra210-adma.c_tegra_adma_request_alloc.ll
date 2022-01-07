; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_request_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_adma_chan = type { i32, i32, i32, %struct.TYPE_4__, %struct.tegra_adma* }
%struct.TYPE_4__ = type { i32 }
%struct.tegra_adma = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid DMA request\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DMA request reserved\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"channel %s has invalid transfer type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_adma_chan*, i32)* @tegra_adma_request_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_request_alloc(%struct.tegra_adma_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_adma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_adma*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_adma_chan* %0, %struct.tegra_adma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %8, i32 0, i32 4
  %10 = load %struct.tegra_adma*, %struct.tegra_adma** %9, align 8
  store %struct.tegra_adma* %10, %struct.tegra_adma** %6, align 8
  %11 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ugt i32 %31, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %75 [
    i32 128, label %47
    i32 129, label %61
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %50 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %49, i32 0, i32 2
  %51 = call i32 @test_and_set_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %55 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %47
  br label %86

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %64 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %63, i32 0, i32 1
  %65 = call i32 @test_and_set_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %69 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %92

74:                                               ; preds = %61
  br label %86

75:                                               ; preds = %45
  %76 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %77 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %80 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @dma_chan_name(i32* %81)
  %83 = call i32 @dev_WARN(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %74, %60
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %89 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %75, %67, %53, %38, %28
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

declare dso_local i32 @dma_chan_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
