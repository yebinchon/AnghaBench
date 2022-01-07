; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_find_out_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_find_out_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ad5758_range = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*, %struct.ad5758_range*, i32, i32, i32)* @ad5758_find_out_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_find_out_range(%struct.ad5758_state* %0, %struct.ad5758_range* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad5758_state*, align 8
  %8 = alloca %struct.ad5758_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %7, align 8
  store %struct.ad5758_range* %1, %struct.ad5758_range** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %64, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.ad5758_range*, %struct.ad5758_range** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %19, i64 %21
  %23 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ad5758_range*, %struct.ad5758_range** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %28, i64 %30
  %32 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %26
  %36 = load %struct.ad5758_range*, %struct.ad5758_range** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %36, i64 %38
  %40 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ad5758_state*, %struct.ad5758_state** %7, align 8
  %43 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ad5758_range*, %struct.ad5758_range** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %45, i64 %47
  %49 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ad5758_state*, %struct.ad5758_state** %7, align 8
  %52 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ad5758_range*, %struct.ad5758_range** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %54, i64 %56
  %58 = getelementptr inbounds %struct.ad5758_range, %struct.ad5758_range* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ad5758_state*, %struct.ad5758_state** %7, align 8
  %61 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  store i32 0, i32* %6, align 4
  br label %70

63:                                               ; preds = %26, %17
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %13

67:                                               ; preds = %13
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %35
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
