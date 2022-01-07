; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_write_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_write_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vcnl4035_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@VCNL4035_ALS_THDH = common dso_local global i32 0, align 4
@VCNL4035_ALS_THDL = common dso_local global i32 0, align 4
@VCNL4035_ALS_CONF = common dso_local global i32 0, align 4
@VCNL4035_ALS_PERS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @vcnl4035_write_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_write_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vcnl4035_data*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.vcnl4035_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.vcnl4035_data* %19, %struct.vcnl4035_data** %16, align 8
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %113 [
    i32 128, label %21
    i32 129, label %84
  ]

21:                                               ; preds = %7
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %116

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %37 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %116

43:                                               ; preds = %34
  %44 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %45 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VCNL4035_ALS_THDH, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @regmap_write(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %8, align 4
  br label %116

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %57 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %82

58:                                               ; preds = %30
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %61 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %116

67:                                               ; preds = %58
  %68 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %69 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VCNL4035_ALS_THDL, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @regmap_write(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %8, align 4
  br label %116

78:                                               ; preds = %67
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %81 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %54
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %8, align 4
  br label %116

84:                                               ; preds = %7
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 8
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @hweight8(i32 %91)
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %87, %84
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %116

97:                                               ; preds = %90
  %98 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %99 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @VCNL4035_ALS_CONF, align 4
  %102 = load i32, i32* @VCNL4035_ALS_PERS_MASK, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @regmap_update_bits(i32 %100, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %16, align 8
  %110 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %97
  %112 = load i32, i32* %17, align 4
  store i32 %112, i32* %8, align 4
  br label %116

113:                                              ; preds = %7
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %113, %111, %94, %82, %76, %64, %52, %40, %27
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local %struct.vcnl4035_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
