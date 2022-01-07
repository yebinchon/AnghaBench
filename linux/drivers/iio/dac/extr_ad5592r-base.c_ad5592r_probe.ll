; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.ad5592r_rw_ops = type { i32 (%struct.ad5592r_state*, i32, i32)* }
%struct.ad5592r_state = type { i32, i32*, %struct.ad5592r_rw_ops*, %struct.device* }
%struct.iio_dev = type { i8*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ad5592r_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5592R_REG_PD = common dso_local global i32 0, align 4
@AD5592R_REG_PD_EN_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad5592r_probe(%struct.device* %0, i8* %1, %struct.ad5592r_rw_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ad5592r_rw_ops*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad5592r_state*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ad5592r_rw_ops* %2, %struct.ad5592r_rw_ops** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 32)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %156

18:                                               ; preds = %3
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = call %struct.ad5592r_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad5592r_state* %20, %struct.ad5592r_state** %9, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %23 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %22, i32 0, i32 3
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %7, align 8
  %25 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %26 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %25, i32 0, i32 2
  store %struct.ad5592r_rw_ops* %24, %struct.ad5592r_rw_ops** %26, align 8
  %27 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %28 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %27, i32 0, i32 0
  store i32 8, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %31 = call i32 @dev_set_drvdata(%struct.device* %29, %struct.iio_dev* %30)
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32* @devm_regulator_get_optional(%struct.device* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %35 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %37 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %18
  %42 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %43 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %56 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @PTR_ERR(i32* %57)
  store i32 %58, i32* %4, align 4
  br label %156

59:                                               ; preds = %49, %41
  %60 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %61 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %72

62:                                               ; preds = %18
  %63 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %64 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @regulator_enable(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %156

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store %struct.device* %73, %struct.device** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 2
  store i32* @ad5592r_info, i32** %81, align 8
  %82 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %86 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %87 = call i32 @ad5592r_get_vref(%struct.ad5592r_state* %86)
  %88 = call i32 @ad5592r_init_scales(%struct.ad5592r_state* %85, i32 %87)
  %89 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %90 = call i32 @ad5592r_reset(%struct.ad5592r_state* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %72
  br label %144

94:                                               ; preds = %72
  %95 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %7, align 8
  %96 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %95, i32 0, i32 0
  %97 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %96, align 8
  %98 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %99 = load i32, i32* @AD5592R_REG_PD, align 4
  %100 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %101 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @AD5592R_REG_PD_EN_REF, align 4
  br label %107

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  %109 = call i32 %97(%struct.ad5592r_state* %98, i32 %99, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %144

113:                                              ; preds = %107
  %114 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %115 = call i32 @ad5592r_alloc_channels(%struct.ad5592r_state* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %144

119:                                              ; preds = %113
  %120 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %121 = call i32 @ad5592r_set_channel_modes(%struct.ad5592r_state* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %141

125:                                              ; preds = %119
  %126 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %127 = call i32 @iio_device_register(%struct.iio_dev* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %141

131:                                              ; preds = %125
  %132 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %133 = call i32 @ad5592r_gpio_init(%struct.ad5592r_state* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %138

137:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %156

138:                                              ; preds = %136
  %139 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %140 = call i32 @iio_device_unregister(%struct.iio_dev* %139)
  br label %141

141:                                              ; preds = %138, %130, %124
  %142 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %143 = call i32 @ad5592r_reset_channel_modes(%struct.ad5592r_state* %142)
  br label %144

144:                                              ; preds = %141, %118, %112, %93
  %145 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %146 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %151 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @regulator_disable(i32* %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %137, %69, %54, %15
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.ad5592r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @ad5592r_init_scales(%struct.ad5592r_state*, i32) #1

declare dso_local i32 @ad5592r_get_vref(%struct.ad5592r_state*) #1

declare dso_local i32 @ad5592r_reset(%struct.ad5592r_state*) #1

declare dso_local i32 @ad5592r_alloc_channels(%struct.ad5592r_state*) #1

declare dso_local i32 @ad5592r_set_channel_modes(%struct.ad5592r_state*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @ad5592r_gpio_init(%struct.ad5592r_state*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @ad5592r_reset_channel_modes(%struct.ad5592r_state*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
