; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_debounce_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_debounce_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i64, i32, i64, i64, i64, i64 }

@ADS7846_FILTER_REPEAT = common dso_local global i32 0, align 4
@ADS7846_FILTER_IGNORE = common dso_local global i32 0, align 4
@ADS7846_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @ads7846_debounce_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7846_debounce_filter(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ads7846*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ads7846*
  store %struct.ads7846* %10, %struct.ads7846** %8, align 8
  %11 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %12 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %17 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  %22 = call i64 @abs(i32 %21)
  %23 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %24 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %15, %3
  %28 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %29 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %31 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %34 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %41 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %43 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* @ADS7846_FILTER_REPEAT, align 4
  store i32 %46, i32* %4, align 4
  br label %72

47:                                               ; preds = %27
  %48 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %49 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @ADS7846_FILTER_IGNORE, align 4
  store i32 %50, i32* %4, align 4
  br label %72

51:                                               ; preds = %15
  %52 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %53 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %57 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %62 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %64 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @ADS7846_FILTER_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %51
  %67 = load %struct.ads7846*, %struct.ads7846** %8, align 8
  %68 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @ADS7846_FILTER_REPEAT, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %60, %47, %37
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
