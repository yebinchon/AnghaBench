; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_setup_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_setup_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5755_platform_data = type { i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.ad5755_state = type { i32 }

@AD5755_DC_DC_PHASE_90_DEGREE = common dso_local global i32 0, align 4
@AD5755_DC_DC_FREQ_650kHZ = common dso_local global i32 0, align 4
@AD5755_DC_DC_MAXV_29V5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD5755_DC_DC_MAXV = common dso_local global i32 0, align 4
@AD5755_DC_DC_FREQ_SHIFT = common dso_local global i32 0, align 4
@AD5755_DC_DC_PHASE_SHIFT = common dso_local global i32 0, align 4
@AD5755_EXT_DC_DC_COMP_RES = common dso_local global i32 0, align 4
@AD5755_CTRL_REG_DC_DC = common dso_local global i32 0, align 4
@AD5755_SLEW_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AD5755_SLEW_RATE_SHIFT = common dso_local global i32 0, align 4
@AD5755_SLEW_ENABLE = common dso_local global i32 0, align 4
@AD5755_CTRL_REG_SLEW = common dso_local global i32 0, align 4
@AD5755_DAC_INT_CURRENT_SENSE_RESISTOR = common dso_local global i32 0, align 4
@AD5755_DAC_VOLTAGE_OVERRANGE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.ad5755_platform_data*)* @ad5755_setup_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_setup_pdata(%struct.iio_dev* %0, %struct.ad5755_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad5755_platform_data*, align 8
  %6 = alloca %struct.ad5755_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.ad5755_platform_data* %1, %struct.ad5755_platform_data** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.ad5755_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ad5755_state* %11, %struct.ad5755_state** %6, align 8
  %12 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %13 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AD5755_DC_DC_PHASE_90_DEGREE, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AD5755_DC_DC_FREQ_650kHZ, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AD5755_DC_DC_MAXV_29V5, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %205

32:                                               ; preds = %23
  %33 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AD5755_DC_DC_MAXV, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AD5755_DC_DC_FREQ_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %46 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AD5755_DC_DC_PHASE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %32
  %57 = load i32, i32* @AD5755_EXT_DC_DC_COMP_RES, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %32
  %61 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %62 = load i32, i32* @AD5755_CTRL_REG_DC_DC, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ad5755_write_ctrl(%struct.iio_dev* %61, i32 0, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %205

69:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %127, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %73 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %74)
  %76 = icmp ult i32 %71, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %70
  %78 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %79 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @AD5755_SLEW_STEP_SIZE_SHIFT, align 4
  %88 = shl i32 %86, %87
  store i32 %88, i32* %7, align 4
  %89 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %90 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AD5755_SLEW_RATE_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %103 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %77
  %113 = load i32, i32* @AD5755_SLEW_ENABLE, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %112, %77
  %117 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @AD5755_CTRL_REG_SLEW, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ad5755_write_ctrl(%struct.iio_dev* %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %3, align 4
  br label %205

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %70

130:                                              ; preds = %70
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %201, %130
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %134 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %135)
  %137 = icmp ult i32 %132, %136
  br i1 %137, label %138, label %204

138:                                              ; preds = %131
  %139 = load %struct.ad5755_state*, %struct.ad5755_state** %6, align 8
  %140 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %141 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ad5755_is_valid_mode(%struct.ad5755_state* %139, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %138
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %205

153:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  %154 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %155 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %153
  %164 = load i32, i32* @AD5755_DAC_INT_CURRENT_SENSE_RESISTOR, align 4
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %163, %153
  %168 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %169 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %167
  %178 = load i32, i32* @AD5755_DAC_VOLTAGE_OVERRANGE_EN, align 4
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %177, %167
  %182 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %183 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %182, i32 0, i32 3
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  %192 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @ad5755_update_dac_ctrl(%struct.iio_dev* %192, i32 %193, i32 %194, i32 0)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %181
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %3, align 4
  br label %205

200:                                              ; preds = %181
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %131

204:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %198, %150, %124, %67, %29
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.ad5755_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5755_write_ctrl(%struct.iio_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @ad5755_is_valid_mode(%struct.ad5755_state*, i32) #1

declare dso_local i32 @ad5755_update_dac_ctrl(%struct.iio_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
