; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686.c_ad5686_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686.c_ad5686_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ad5686_state = type { {}*, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.device* }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@ad5686_chip_info_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@ad5686_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5686_CMD_CONTROL_REG = common dso_local global i32 0, align 4
@AD5310_REF_BIT_MSK = common dso_local global i32 0, align 4
@AD5683_REF_BIT_MSK = common dso_local global i32 0, align 4
@AD5686_CMD_INTERNAL_REFER_SETUP = common dso_local global i32 0, align 4
@AD5693_REF_BIT_MSK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad5686_probe(%struct.device* %0, i32 %1, i8* %2, i32 (%struct.ad5686_state*, i32, i32, i32)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32 (%struct.ad5686_state*, i32, i32, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ad5686_state*, align 8
  %13 = alloca %struct.iio_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 (%struct.ad5686_state*, i32, i32, i32)* %3, i32 (%struct.ad5686_state*, i32, i32, i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %20, i32 48)
  store %struct.iio_dev* %21, %struct.iio_dev** %13, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %23 = icmp eq %struct.iio_dev* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %216

27:                                               ; preds = %5
  %28 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %29 = call %struct.ad5686_state* @iio_priv(%struct.iio_dev* %28)
  store %struct.ad5686_state* %29, %struct.ad5686_state** %12, align 8
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %32 = call i32 @dev_set_drvdata(%struct.device* %30, %struct.iio_dev* %31)
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %35 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %34, i32 0, i32 7
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load i32 (%struct.ad5686_state*, i32, i32, i32)*, i32 (%struct.ad5686_state*, i32, i32, i32)** %10, align 8
  %37 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %38 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.ad5686_state*, i32, i32, i32)**
  store i32 (%struct.ad5686_state*, i32, i32, i32)* %36, i32 (%struct.ad5686_state*, i32, i32, i32)** %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %42 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @devm_regulator_get_optional(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %46 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %48 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IS_ERR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %27
  %53 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %54 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regulator_enable(i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %6, align 4
  br label %216

61:                                               ; preds = %52
  %62 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %63 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @regulator_get_voltage(i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %203

69:                                               ; preds = %61
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %69, %27
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad5686_chip_info_tbl, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %77 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %76, i32 0, i32 5
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %77, align 8
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32, i32* %19, align 4
  %82 = sdiv i32 %81, 1000
  %83 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %84 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %93

85:                                               ; preds = %71
  %86 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %87 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %86, i32 0, i32 5
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %92 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %85, %80
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %110, %93
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %97 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %94
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %103, 2
  %105 = shl i32 1, %104
  %106 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %107 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  br label %94

113:                                              ; preds = %94
  %114 = load %struct.device*, %struct.device** %7, align 8
  %115 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store %struct.device* %114, %struct.device** %117, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %120 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 4
  store i32* @ad5686_info, i32** %122, align 8
  %123 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %124 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %127 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %126, i32 0, i32 5
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %132 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %134 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %133, i32 0, i32 5
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %139 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %141 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %140, i32 0, i32 5
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %174 [
    i32 131, label %145
    i32 130, label %154
    i32 129, label %163
    i32 128, label %165
  ]

145:                                              ; preds = %113
  %146 = load i32, i32* @AD5686_CMD_CONTROL_REG, align 4
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* @AD5310_REF_BIT_MSK, align 4
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %153 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  br label %177

154:                                              ; preds = %113
  %155 = load i32, i32* @AD5686_CMD_CONTROL_REG, align 4
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* @AD5683_REF_BIT_MSK, align 4
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %162 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  br label %177

163:                                              ; preds = %113
  %164 = load i32, i32* @AD5686_CMD_INTERNAL_REFER_SETUP, align 4
  store i32 %164, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %177

165:                                              ; preds = %113
  %166 = load i32, i32* @AD5686_CMD_CONTROL_REG, align 4
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* @AD5693_REF_BIT_MSK, align 4
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %173 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  br label %177

174:                                              ; preds = %113
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %17, align 4
  br label %203

177:                                              ; preds = %165, %163, %154, %145
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %15, align 4
  %180 = or i32 %178, %179
  store i32 %180, i32* %14, align 4
  %181 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %182 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %181, i32 0, i32 0
  %183 = bitcast {}** %182 to i32 (%struct.ad5686_state*, i32, i32, i32)**
  %184 = load i32 (%struct.ad5686_state*, i32, i32, i32)*, i32 (%struct.ad5686_state*, i32, i32, i32)** %183, align 8
  %185 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 %184(%struct.ad5686_state* %185, i32 %186, i32 0, i32 %191)
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %177
  br label %203

196:                                              ; preds = %177
  %197 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %198 = call i32 @iio_device_register(%struct.iio_dev* %197)
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %203

202:                                              ; preds = %196
  store i32 0, i32* %6, align 4
  br label %216

203:                                              ; preds = %201, %195, %174, %68
  %204 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %205 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @IS_ERR(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %203
  %210 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %211 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @regulator_disable(i32 %212)
  br label %214

214:                                              ; preds = %209, %203
  %215 = load i32, i32* %17, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %202, %59, %24
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.ad5686_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
