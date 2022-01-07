; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ltr501_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LTR501_ALS_THRESH_MASK = common dso_local global i32 0, align 4
@LTR501_ALS_THRESH_UP = common dso_local global i32 0, align 4
@LTR501_ALS_THRESH_LOW = common dso_local global i32 0, align 4
@LTR501_PS_THRESH_MASK = common dso_local global i32 0, align 4
@LTR501_PS_THRESH_UP = common dso_local global i32 0, align 4
@LTR501_PS_THRESH_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @ltr501_write_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_write_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ltr501_data*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.ltr501_data* %19, %struct.ltr501_data** %16, align 8
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %108

25:                                               ; preds = %7
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %105 [
    i32 129, label %29
    i32 128, label %67
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @LTR501_ALS_THRESH_MASK, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %108

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %64 [
    i32 130, label %38
    i32 131, label %51
  ]

38:                                               ; preds = %36
  %39 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %40 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %43 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LTR501_ALS_THRESH_UP, align 4
  %46 = call i32 @regmap_bulk_write(i32 %44, i32 %45, i32* %14, i32 2)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %48 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %8, align 4
  br label %108

51:                                               ; preds = %36
  %52 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %53 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %56 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LTR501_ALS_THRESH_LOW, align 4
  %59 = call i32 @regmap_bulk_write(i32 %57, i32 %58, i32* %14, i32 2)
  store i32 %59, i32* %17, align 4
  %60 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %61 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %8, align 4
  br label %108

64:                                               ; preds = %36
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %108

67:                                               ; preds = %25
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @LTR501_PS_THRESH_MASK, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %108

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %102 [
    i32 130, label %76
    i32 131, label %89
  ]

76:                                               ; preds = %74
  %77 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %78 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %81 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LTR501_PS_THRESH_UP, align 4
  %84 = call i32 @regmap_bulk_write(i32 %82, i32 %83, i32* %14, i32 2)
  store i32 %84, i32* %17, align 4
  %85 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %86 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %8, align 4
  br label %108

89:                                               ; preds = %74
  %90 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %91 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %90, i32 0, i32 0
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %94 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LTR501_PS_THRESH_LOW, align 4
  %97 = call i32 @regmap_bulk_write(i32 %95, i32 %96, i32* %14, i32 2)
  store i32 %97, i32* %17, align 4
  %98 = load %struct.ltr501_data*, %struct.ltr501_data** %16, align 8
  %99 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %8, align 4
  br label %108

102:                                              ; preds = %74
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %108

105:                                              ; preds = %25
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %105, %102, %89, %76, %71, %64, %51, %38, %33, %22
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
