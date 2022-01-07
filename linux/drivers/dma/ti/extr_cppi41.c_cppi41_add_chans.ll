; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_add_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_add_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cppi41_dd = type { i32, i32, i32, %struct.TYPE_4__, i32*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.cppi41_channel = type { i32, i32, i32, %struct.TYPE_3__, i32*, i64, %struct.cppi41_dd* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cppi41_dd*)* @cppi41_add_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppi41_add_chans(%struct.device* %0, %struct.cppi41_dd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cppi41_dd*, align 8
  %6 = alloca %struct.cppi41_channel*, align 8
  %7 = alloca %struct.cppi41_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cppi41_dd* %1, %struct.cppi41_dd** %5, align 8
  %10 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %11 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cppi41_channel* @devm_kcalloc(%struct.device* %15, i32 %16, i32 56, i32 %17)
  store %struct.cppi41_channel* %18, %struct.cppi41_channel** %7, align 8
  %19 = load %struct.cppi41_channel*, %struct.cppi41_channel** %7, align 8
  %20 = icmp ne %struct.cppi41_channel* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %110

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %103, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %25
  %30 = load %struct.cppi41_channel*, %struct.cppi41_channel** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %30, i64 %32
  store %struct.cppi41_channel* %33, %struct.cppi41_channel** %6, align 8
  %34 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %35 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %36 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %35, i32 0, i32 6
  store %struct.cppi41_dd* %34, %struct.cppi41_dd** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %29
  %41 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %42 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 1
  %46 = call i64 @DMA_TXGCR(i32 %45)
  %47 = add nsw i64 %43, %46
  %48 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %49 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %51 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %64

52:                                               ; preds = %29
  %53 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %54 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 1
  %58 = call i64 @DMA_RXGCR(i32 %57)
  %59 = add nsw i64 %55, %58
  %60 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %61 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  %62 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %63 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %52, %40
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %65, 1
  %67 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %68 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %70 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %76 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %78 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %81 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %86 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %92 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %91, i32 0, i32 3
  %93 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %94 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %95, align 8
  %96 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %97 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %100 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @list_add_tail(i32* %98, i32* %101)
  br label %103

103:                                              ; preds = %64
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %25

106:                                              ; preds = %25
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %109 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %21
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.cppi41_channel* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @DMA_TXGCR(i32) #1

declare dso_local i64 @DMA_RXGCR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
