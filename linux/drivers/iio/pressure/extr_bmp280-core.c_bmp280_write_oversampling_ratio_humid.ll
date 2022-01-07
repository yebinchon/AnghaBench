; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_write_oversampling_ratio_humid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_write_oversampling_ratio_humid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 (%struct.bmp280_data*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32)* @bmp280_write_oversampling_ratio_humid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_write_oversampling_ratio_humid(%struct.bmp280_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmp280_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %10 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %15 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %44, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ilog2(i32 %32)
  %34 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %35 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %37 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32 (%struct.bmp280_data*)*, i32 (%struct.bmp280_data*)** %39, align 8
  %41 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %42 = call i32 %40(%struct.bmp280_data* %41)
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
