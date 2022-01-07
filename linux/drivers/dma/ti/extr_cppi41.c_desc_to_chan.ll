; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_desc_to_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_desc_to_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_channel = type { i32 }
%struct.cppi41_dd = type { i64, %struct.TYPE_2__, %struct.cppi41_channel** }
%struct.TYPE_2__ = type { i32 }

@ALLOC_DECS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cppi41_channel* (%struct.cppi41_dd*, i64)* @desc_to_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cppi41_channel* @desc_to_chan(%struct.cppi41_dd* %0, i64 %1) #0 {
  %3 = alloca %struct.cppi41_channel*, align 8
  %4 = alloca %struct.cppi41_dd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cppi41_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cppi41_dd* %0, %struct.cppi41_dd** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %14 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %20 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %2
  store %struct.cppi41_channel* null, %struct.cppi41_channel** %3, align 8
  br label %56

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %29 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = udiv i64 %31, 4
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp sge i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %40 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %39, i32 0, i32 2
  %41 = load %struct.cppi41_channel**, %struct.cppi41_channel*** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.cppi41_channel*, %struct.cppi41_channel** %41, i64 %42
  %44 = load %struct.cppi41_channel*, %struct.cppi41_channel** %43, align 8
  store %struct.cppi41_channel* %44, %struct.cppi41_channel** %6, align 8
  %45 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %46 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %45, i32 0, i32 2
  %47 = load %struct.cppi41_channel**, %struct.cppi41_channel*** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.cppi41_channel*, %struct.cppi41_channel** %47, i64 %48
  store %struct.cppi41_channel* null, %struct.cppi41_channel** %49, align 8
  %50 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %51 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pm_runtime_put(i32 %53)
  %55 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  store %struct.cppi41_channel* %55, %struct.cppi41_channel** %3, align 8
  br label %56

56:                                               ; preds = %26, %25
  %57 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  ret %struct.cppi41_channel* %57
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
