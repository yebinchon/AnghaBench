; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686.c_ad5686_write_dac_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686.c_ad5686_write_dac_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5686_state = type { i32, i32, i32 (%struct.ad5686_state*, i32, i32, i32)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AD5310_REF_BIT_MSK = common dso_local global i32 0, align 4
@AD5683_REF_BIT_MSK = common dso_local global i32 0, align 4
@AD5693_REF_BIT_MSK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD5686_CMD_POWERDOWN_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ad5686_write_dac_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5686_write_dac_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ad5686_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.ad5686_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad5686_state* %20, %struct.ad5686_state** %14, align 8
  store i32 0, i32* %18, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @strtobool(i8* %21, i32* %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %113

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  %35 = shl i32 3, %34
  %36 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %37 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  %45 = shl i32 3, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %48 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %40, %30
  %52 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %53 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %70 [
    i32 131, label %57
    i32 130, label %59
    i32 129, label %61
    i32 128, label %68
  ]

57:                                               ; preds = %51
  store i32 9, i32* %17, align 4
  %58 = load i32, i32* @AD5310_REF_BIT_MSK, align 4
  store i32 %58, i32* %16, align 4
  br label %73

59:                                               ; preds = %51
  store i32 13, i32* %17, align 4
  %60 = load i32, i32* @AD5683_REF_BIT_MSK, align 4
  store i32 %60, i32* %16, align 4
  br label %73

61:                                               ; preds = %51
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 7
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 8, i32* %18, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %73

68:                                               ; preds = %51
  store i32 13, i32* %17, align 4
  %69 = load i32, i32* @AD5693_REF_BIT_MSK, align 4
  store i32 %69, i32* %16, align 4
  br label %73

70:                                               ; preds = %51
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %113

73:                                               ; preds = %68, %67, %59, %57
  %74 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %75 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %78 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %76, %79
  %81 = load i32, i32* %17, align 4
  %82 = shl i32 %80, %81
  store i32 %82, i32* %15, align 4
  %83 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %84 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %87, %73
  %92 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %93 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %92, i32 0, i32 2
  %94 = load i32 (%struct.ad5686_state*, i32, i32, i32)*, i32 (%struct.ad5686_state*, i32, i32, i32)** %93, align 8
  %95 = load %struct.ad5686_state*, %struct.ad5686_state** %14, align 8
  %96 = load i32, i32* @AD5686_CMD_POWERDOWN_DAC, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %18, align 4
  %100 = mul nsw i32 %99, 2
  %101 = lshr i32 %98, %100
  %102 = call i32 %94(%struct.ad5686_state* %95, i32 %96, i32 %97, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  br label %110

108:                                              ; preds = %91
  %109 = load i64, i64* %11, align 8
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i64 [ %107, %105 ], [ %109, %108 ]
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %70, %25
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.ad5686_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
