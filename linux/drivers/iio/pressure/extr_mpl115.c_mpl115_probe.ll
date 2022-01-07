; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mpl115_ops = type { i32 (%struct.device.0*)*, i32 (%struct.device.1*, i32)* }
%struct.device.0 = type opaque
%struct.device.1 = type opaque
%struct.mpl115_data = type { i32, i32, i32, i32, %struct.device*, %struct.mpl115_ops*, i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@mpl115_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mpl115_channels = common dso_local global i32 0, align 4
@MPL115_A0 = common dso_local global i32 0, align 4
@MPL115_B1 = common dso_local global i32 0, align 4
@MPL115_B2 = common dso_local global i32 0, align 4
@MPL115_C12 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpl115_probe(%struct.device* %0, i8* %1, %struct.mpl115_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpl115_ops*, align 8
  %8 = alloca %struct.mpl115_data*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpl115_ops* %2, %struct.mpl115_ops** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 40)
  store %struct.iio_dev* %12, %struct.iio_dev** %9, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %143

18:                                               ; preds = %3
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = call %struct.mpl115_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.mpl115_data* %20, %struct.mpl115_data** %8, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %23 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %22, i32 0, i32 4
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.mpl115_ops*, %struct.mpl115_ops** %7, align 8
  %25 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %26 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %25, i32 0, i32 5
  store %struct.mpl115_ops* %24, %struct.mpl115_ops** %26, align 8
  %27 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %28 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %27, i32 0, i32 6
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 5
  store i32* @mpl115_info, i32** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.device* %35, %struct.device** %38, align 8
  %39 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @mpl115_channels, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @mpl115_channels, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %50 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %49, i32 0, i32 5
  %51 = load %struct.mpl115_ops*, %struct.mpl115_ops** %50, align 8
  %52 = getelementptr inbounds %struct.mpl115_ops, %struct.mpl115_ops* %51, i32 0, i32 0
  %53 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %52, align 8
  %54 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %55 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %54, i32 0, i32 4
  %56 = load %struct.device*, %struct.device** %55, align 8
  %57 = bitcast %struct.device* %56 to %struct.device.0*
  %58 = call i32 %53(%struct.device.0* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %18
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %143

63:                                               ; preds = %18
  %64 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %65 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %64, i32 0, i32 5
  %66 = load %struct.mpl115_ops*, %struct.mpl115_ops** %65, align 8
  %67 = getelementptr inbounds %struct.mpl115_ops, %struct.mpl115_ops* %66, i32 0, i32 1
  %68 = load i32 (%struct.device.1*, i32)*, i32 (%struct.device.1*, i32)** %67, align 8
  %69 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %70 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %69, i32 0, i32 4
  %71 = load %struct.device*, %struct.device** %70, align 8
  %72 = bitcast %struct.device* %71 to %struct.device.1*
  %73 = load i32, i32* @MPL115_A0, align 4
  %74 = call i32 %68(%struct.device.1* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %143

79:                                               ; preds = %63
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %82 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %84 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %83, i32 0, i32 5
  %85 = load %struct.mpl115_ops*, %struct.mpl115_ops** %84, align 8
  %86 = getelementptr inbounds %struct.mpl115_ops, %struct.mpl115_ops* %85, i32 0, i32 1
  %87 = load i32 (%struct.device.1*, i32)*, i32 (%struct.device.1*, i32)** %86, align 8
  %88 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %89 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %88, i32 0, i32 4
  %90 = load %struct.device*, %struct.device** %89, align 8
  %91 = bitcast %struct.device* %90 to %struct.device.1*
  %92 = load i32, i32* @MPL115_B1, align 4
  %93 = call i32 %87(%struct.device.1* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %143

98:                                               ; preds = %79
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %101 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %103 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %102, i32 0, i32 5
  %104 = load %struct.mpl115_ops*, %struct.mpl115_ops** %103, align 8
  %105 = getelementptr inbounds %struct.mpl115_ops, %struct.mpl115_ops* %104, i32 0, i32 1
  %106 = load i32 (%struct.device.1*, i32)*, i32 (%struct.device.1*, i32)** %105, align 8
  %107 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %108 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %107, i32 0, i32 4
  %109 = load %struct.device*, %struct.device** %108, align 8
  %110 = bitcast %struct.device* %109 to %struct.device.1*
  %111 = load i32, i32* @MPL115_B2, align 4
  %112 = call i32 %106(%struct.device.1* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %98
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %143

117:                                              ; preds = %98
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %120 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %122 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %121, i32 0, i32 5
  %123 = load %struct.mpl115_ops*, %struct.mpl115_ops** %122, align 8
  %124 = getelementptr inbounds %struct.mpl115_ops, %struct.mpl115_ops* %123, i32 0, i32 1
  %125 = load i32 (%struct.device.1*, i32)*, i32 (%struct.device.1*, i32)** %124, align 8
  %126 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %127 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %126, i32 0, i32 4
  %128 = load %struct.device*, %struct.device** %127, align 8
  %129 = bitcast %struct.device* %128 to %struct.device.1*
  %130 = load i32, i32* @MPL115_C12, align 4
  %131 = call i32 %125(%struct.device.1* %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %117
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %4, align 4
  br label %143

136:                                              ; preds = %117
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.mpl115_data*, %struct.mpl115_data** %8, align 8
  %139 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.device*, %struct.device** %5, align 8
  %141 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %142 = call i32 @devm_iio_device_register(%struct.device* %140, %struct.iio_dev* %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %136, %134, %115, %96, %77, %61, %15
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.mpl115_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
