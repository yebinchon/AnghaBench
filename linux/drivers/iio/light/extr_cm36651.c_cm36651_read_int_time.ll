; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_int_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_int_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm36651_data = type { i32, i32* }
%struct.iio_chan_spec = type { i32, i64 }

@CM36651_CS_IT1 = common dso_local global i32 0, align 4
@CM36651_CS_IT2 = common dso_local global i32 0, align 4
@CM36651_CS_IT3 = common dso_local global i32 0, align 4
@CM36651_CS_IT4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CM36651_PS_IT1 = common dso_local global i32 0, align 4
@CM36651_PS_IT2 = common dso_local global i32 0, align 4
@CM36651_PS_IT3 = common dso_local global i32 0, align 4
@CM36651_PS_IT4 = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm36651_data*, %struct.iio_chan_spec*, i32*)* @cm36651_read_int_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_read_int_time(%struct.cm36651_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm36651_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  store %struct.cm36651_data* %0, %struct.cm36651_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %9 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %109 [
    i32 129, label %11
    i32 128, label %70
  ]

11:                                               ; preds = %3
  %12 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %13 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CM36651_CS_IT1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32*, i32** %7, align 8
  store i32 80000, i32* %23, align 4
  br label %69

24:                                               ; preds = %11
  %25 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %26 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CM36651_CS_IT2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  store i32 160000, i32* %36, align 4
  br label %68

37:                                               ; preds = %24
  %38 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %39 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CM36651_CS_IT3, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32*, i32** %7, align 8
  store i32 320000, i32* %49, align 4
  br label %67

50:                                               ; preds = %37
  %51 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %52 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CM36651_CS_IT4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  store i32 640000, i32* %62, align 4
  br label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %114

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %35
  br label %69

69:                                               ; preds = %68, %22
  br label %112

70:                                               ; preds = %3
  %71 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %72 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CM36651_PS_IT1, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32*, i32** %7, align 8
  store i32 320, i32* %77, align 4
  br label %108

78:                                               ; preds = %70
  %79 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %80 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CM36651_PS_IT2, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  store i32 420, i32* %85, align 4
  br label %107

86:                                               ; preds = %78
  %87 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %88 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CM36651_PS_IT3, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32*, i32** %7, align 8
  store i32 520, i32* %93, align 4
  br label %106

94:                                               ; preds = %86
  %95 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %96 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CM36651_PS_IT4, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32*, i32** %7, align 8
  store i32 640, i32* %101, align 4
  br label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %114

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %92
  br label %107

107:                                              ; preds = %106, %84
  br label %108

108:                                              ; preds = %107, %76
  br label %112

109:                                              ; preds = %3
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %114

112:                                              ; preds = %108, %69
  %113 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %109, %102, %63
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
