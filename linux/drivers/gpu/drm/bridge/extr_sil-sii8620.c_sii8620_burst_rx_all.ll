; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_rx_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_rx_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_burst_rx_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_burst_rx_all(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %7 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %8 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %12 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @get_unaligned_be16(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %34 [
    i32 128, label %27
  ]

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i32 @get_unaligned_le16(i32* %29)
  %31 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %32 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  br label %35

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %3, align 8
  br label %15

43:                                               ; preds = %15
  %44 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %45 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  ret void
}

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
