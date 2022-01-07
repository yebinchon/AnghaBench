; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.stk3310_data = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IIO_LIGHT = common dso_local global i64 0, align 8
@IIO_PROXIMITY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@stk3310_it_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sensor configuration failed\0A\00", align 1
@stk3310_scale_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @stk3310_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stk3310_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.stk3310_data* %16, %struct.stk3310_data** %14, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IIO_LIGHT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IIO_PROXIMITY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %130

31:                                               ; preds = %22, %5
  %32 = load i64, i64* %11, align 8
  switch i64 %32, label %127 [
    i64 129, label %33
    i64 128, label %80
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @stk3310_it_table, align 4
  %35 = load i32, i32* @stk3310_it_table, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @stk3310_get_index(i32 %34, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %130

45:                                               ; preds = %33
  %46 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %47 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IIO_LIGHT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %56 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @regmap_field_write(i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %66

60:                                               ; preds = %45
  %61 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %62 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @regmap_field_write(i32 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %71 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %77 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %130

80:                                               ; preds = %31
  %81 = load i32, i32* @stk3310_scale_table, align 4
  %82 = load i32, i32* @stk3310_scale_table, align 4
  %83 = call i32 @ARRAY_SIZE(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @stk3310_get_index(i32 %81, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %130

92:                                               ; preds = %80
  %93 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %94 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %97 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IIO_LIGHT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %103 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @regmap_field_write(i32 %104, i32 %105)
  store i32 %106, i32* %12, align 4
  br label %113

107:                                              ; preds = %92
  %108 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %109 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @regmap_field_write(i32 %110, i32 %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %118 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %116, %113
  %123 = load %struct.stk3310_data*, %struct.stk3310_data** %14, align 8
  %124 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %6, align 4
  br label %130

127:                                              ; preds = %31
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %122, %89, %75, %42, %28
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stk3310_get_index(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
