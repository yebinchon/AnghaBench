; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i8*, i32 }
%struct.isl29018_chip = type { i32, i32, i64, i32, i32, i32, i32, i64, i32 }
%struct.iio_dev = type { i8*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ISL29018_INT_TIME_16 = common dso_local global i64 0, align 8
@isl29018_scales = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get VCC regulator!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to enable VCC regulator!\0A\00", align 1
@isl29018_disable_regulator_action = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to setup regulator cleanup action!\0A\00", align 1
@isl29018_chip_info_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"regmap initialization fails: %d\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl29018_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.isl29018_chip*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 48)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %192

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call %struct.isl29018_chip* @iio_priv(%struct.iio_dev* %20)
  store %struct.isl29018_chip* %21, %struct.isl29018_chip** %6, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.iio_dev* %23)
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = icmp ne %struct.i2c_device_id* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i64 @ACPI_HANDLE(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i8* @isl29018_match_acpi_device(i32* %41, i32* %10)
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %45 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %44, i32 0, i32 8
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %49 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %51 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %53 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* @ISL29018_INT_TIME_16, align 8
  %55 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %56 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i32**, i32*** @isl29018_scales, align 8
  %58 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %59 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %66 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %68 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %67, i32 0, i32 3
  store i32 0, i32* %68, align 8
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 @devm_regulator_get(i32* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %73 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %75 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %43
  %80 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %81 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EPROBE_DEFER, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %192

94:                                               ; preds = %43
  %95 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %96 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @regulator_enable(i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %192

106:                                              ; preds = %94
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i32, i32* @isl29018_disable_regulator_action, align 4
  %110 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %111 = call i32 @devm_add_action_or_reset(i32* %108, i32 %109, %struct.isl29018_chip* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %192

119:                                              ; preds = %106
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isl29018_chip_info_tbl, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %120, i32 %126)
  %128 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %129 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %131 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @IS_ERR(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %119
  %136 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %137 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @PTR_ERR(i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %192

145:                                              ; preds = %119
  %146 = load %struct.isl29018_chip*, %struct.isl29018_chip** %6, align 8
  %147 = call i32 @isl29018_chip_init(%struct.isl29018_chip* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %192

152:                                              ; preds = %145
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isl29018_chip_info_tbl, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %160 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isl29018_chip_info_tbl, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %168 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @isl29018_chip_info_tbl, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %176 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %179 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %183 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i32* %181, i32** %184, align 8
  %185 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %186 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %187 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 0
  %190 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %191 = call i32 @devm_iio_device_register(i32* %189, %struct.iio_dev* %190)
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %152, %150, %135, %114, %101, %92, %16
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.isl29018_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i8* @isl29018_match_acpi_device(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.isl29018_chip*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32) #1

declare dso_local i32 @isl29018_chip_init(%struct.isl29018_chip*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
