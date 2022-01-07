; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@REG_EMSCRFIFOBCNTL = common dso_local global i32 0, align 4
@REG_EMSC_RCV_READ_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_burst_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_burst_receive(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %7 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %8 = load i32, i32* @REG_EMSCRFIFOBCNTL, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %10 = call i32 @sii8620_read_buf(%struct.sii8620* %7, i32 %8, i32* %9, i32 2)
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %12 = call i32 @get_unaligned_le16(i32* %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %68, %67, %58, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @min(i32 %17, i32 3)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %20 = load i32, i32* @REG_EMSC_RCV_READ_PORT, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sii8620_read_buf(%struct.sii8620* %19, i32 %20, i32* %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %30 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, %28
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %38 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %36
  store i64 %41, i64* %39, align 8
  %42 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %43 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %16
  %48 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %49 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %16
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %51
  br label %13

59:                                               ; preds = %54
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32* @sii8620_burst_get_rx_buf(%struct.sii8620* %62, i32 %63)
  store i32* %64, i32** %4, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %13

68:                                               ; preds = %59
  %69 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %70 = load i32, i32* @REG_EMSC_RCV_READ_PORT, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @sii8620_read_buf(%struct.sii8620* %69, i32 %70, i32* %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %79 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 8
  br label %13

83:                                               ; preds = %13
  ret void
}

declare dso_local i32 @sii8620_read_buf(%struct.sii8620*, i32, i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @sii8620_burst_get_rx_buf(%struct.sii8620*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
