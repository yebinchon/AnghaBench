; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_get_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_get_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"RX-BLK buffer exhausted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sii8620*, i32)* @sii8620_burst_get_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sii8620_burst_get_rx_buf(%struct.sii8620* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sii8620*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %9 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %13 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %20 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %27 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ARRAY_SIZE(i32 %29)
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %34 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %40 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  store i32* null, i32** %3, align 8
  br label %54

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %45 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %43
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %41, %32
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
