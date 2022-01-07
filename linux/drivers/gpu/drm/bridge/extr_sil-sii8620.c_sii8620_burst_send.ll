; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i64, i64, i64 }

@REG_EMSC_XMIT_WRITE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_burst_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_burst_send(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %7 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %8 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %12 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  br label %15

15:                                               ; preds = %36, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %5, align 4
  %23 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %24 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %31 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %72

36:                                               ; preds = %18
  %37 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %38 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @min(i64 %40, i32 255)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %49 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %47
  store i64 %52, i64* %50, align 8
  %53 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %54 = load i32, i32* @REG_EMSC_XMIT_WRITE_PORT, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @sii8620_write_buf(%struct.sii8620* %53, i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %61 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %59
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %4, align 8
  br label %15

72:                                               ; preds = %35, %15
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %75 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %102, %72
  %78 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %79 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %77
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %85 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %86 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @min(i64 %88, i32 255)
  store i32 %89, i32* %84, align 4
  %90 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %92 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 2
  %96 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %97 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %83
  br label %120

102:                                              ; preds = %83
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %107 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %105
  store i64 %110, i64* %108, align 8
  %111 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %112 = load i32, i32* @REG_EMSC_XMIT_WRITE_PORT, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %114 = call i32 @sii8620_write_buf(%struct.sii8620* %111, i32 %112, i32* %113, i32 2)
  %115 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %116 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 2
  store i64 %119, i64* %117, align 8
  br label %77

120:                                              ; preds = %101, %77
  ret void
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @sii8620_write_buf(%struct.sii8620*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
