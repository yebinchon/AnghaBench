; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_comp_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_comp_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpl115_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@MPL115_PADC = common dso_local global i32 0, align 4
@MPL115_TADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpl115_data*, i32*, i32*)* @mpl115_comp_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl115_comp_pressure(%struct.mpl115_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mpl115_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mpl115_data* %0, %struct.mpl115_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %15 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %18 = call i32 @mpl115_request(%struct.mpl115_data* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %93

22:                                               ; preds = %3
  %23 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %24 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %29 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MPL115_PADC, align 4
  %32 = call i32 %27(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %93

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 6
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %40 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %39, i32 0, i32 6
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %45 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MPL115_TADC, align 4
  %48 = call i32 %43(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %93

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 6
  store i32 %54, i32* %9, align 4
  %55 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %56 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %59 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = ashr i32 %62, 11
  %64 = add nsw i32 %57, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %66 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 10
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %75 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %76, %77
  %79 = ashr i32 %78, 1
  %80 = add nsw i32 %73, %79
  %81 = ashr i32 %80, 9
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %82, 65
  %84 = sdiv i32 %83, 1023
  %85 = add nsw i32 %84, 800
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = lshr i32 %86, 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  %90 = and i32 %89, 15
  %91 = mul i32 %90, 62500
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %52, %51, %35, %21
  %94 = load %struct.mpl115_data*, %struct.mpl115_data** %4, align 8
  %95 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %94, i32 0, i32 4
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mpl115_request(%struct.mpl115_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
