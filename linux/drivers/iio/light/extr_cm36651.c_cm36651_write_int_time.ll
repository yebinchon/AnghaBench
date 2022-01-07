; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_write_int_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_write_int_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm36651_data = type { i32*, i32, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@CM36651_CS_IT1 = common dso_local global i32 0, align 4
@CM36651_CS_IT2 = common dso_local global i32 0, align 4
@CM36651_CS_IT3 = common dso_local global i32 0, align 4
@CM36651_CS_IT4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CM36651_CS_CONF3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CS integration time write failed\0A\00", align 1
@CM36651_PS_IT1 = common dso_local global i32 0, align 4
@CM36651_PS_IT2 = common dso_local global i32 0, align 4
@CM36651_PS_IT3 = common dso_local global i32 0, align 4
@CM36651_PS_IT4 = common dso_local global i32 0, align 4
@CM36651_PS_CONF1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PS integration time write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm36651_data*, %struct.iio_chan_spec*, i32)* @cm36651_write_int_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_write_int_time(%struct.cm36651_data* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm36651_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cm36651_data* %0, %struct.cm36651_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %13 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %12, i32 0, i32 3
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  %15 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %16 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %9, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %116 [
    i32 129, label %21
    i32 128, label %74
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 80000
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @CM36651_CS_IT1, align 4
  store i32 %25, i32* %10, align 4
  br label %47

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 160000
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @CM36651_CS_IT2, align 4
  store i32 %30, i32* %10, align 4
  br label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 320000
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @CM36651_CS_IT3, align 4
  store i32 %35, i32* %10, align 4
  br label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 640000
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @CM36651_CS_IT4, align 4
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %121

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %34
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %49 = load i32, i32* @CM36651_CS_CONF3, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 2, %53
  %55 = ashr i32 %50, %54
  %56 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %48, i32 %49, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %121

64:                                               ; preds = %47
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %67 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %70 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %65, i32* %73, align 4
  br label %119

74:                                               ; preds = %3
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 320
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @CM36651_PS_IT1, align 4
  store i32 %78, i32* %10, align 4
  br label %100

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 420
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @CM36651_PS_IT2, align 4
  store i32 %83, i32* %10, align 4
  br label %99

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 520
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @CM36651_PS_IT3, align 4
  store i32 %88, i32* %10, align 4
  br label %98

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 640
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @CM36651_PS_IT4, align 4
  store i32 %93, i32* %10, align 4
  br label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %121

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %87
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %102 = load i32, i32* @CM36651_PS_CONF1, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  br label %121

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %115 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %119

116:                                              ; preds = %3
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %121

119:                                              ; preds = %112, %64
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %116, %107, %94, %59, %41
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
