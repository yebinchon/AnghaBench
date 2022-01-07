; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_thresh_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_thresh_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.gp2ap020a00f_data = type { i64, i32*, i32, i32, i32, i32 }

@GP2AP020A00F_OP_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_A = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_P = common dso_local global i32 0, align 4
@GP2AP020A00F_PROX_DETECT = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_PROX_DETECT = common dso_local global i64 0, align 8
@GP2AP020A00F_D0_L_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_TH_L_REG = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@GP2AP020A00F_SCAN_MODE_LIGHT_CLEAR = common dso_local global i32 0, align 4
@IIO_MOD_LIGHT_CLEAR = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_FALLING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_TL_L_REG = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_READ_RAW_CLEAR = common dso_local global i64 0, align 8
@GP2AP020A00F_OPMODE_READ_RAW_IR = common dso_local global i64 0, align 8
@GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY = common dso_local global i64 0, align 8
@GP2AP020A00F_FLAG_DATA_READY = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_IR_TRIGGER = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_TRIGGER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gp2ap020a00f_thresh_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_thresh_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.gp2ap020a00f_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.iio_dev*
  store %struct.iio_dev* %14, %struct.iio_dev** %5, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.gp2ap020a00f_data* %16, %struct.gp2ap020a00f_data** %6, align 8
  %17 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %18 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %194

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GP2AP020A00F_FLAG_A, align 4
  %28 = load i32, i32* @GP2AP020A00F_FLAG_P, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GP2AP020A00F_PROX_DETECT, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @GP2AP020A00F_FLAG_A, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @GP2AP020A00F_FLAG_P, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @GP2AP020A00F_PROX_DETECT, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %44 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GP2AP020A00F_OPMODE_PROX_DETECT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %25
  %49 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %50 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @regmap_write(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %194

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @GP2AP020A00F_FLAG_A, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %145

64:                                               ; preds = %59
  %65 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %66 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GP2AP020A00F_D0_L_REG, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %70 = call i32 @regmap_bulk_read(i32 %67, i32 %68, i32* %69, i32 2)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %194

74:                                               ; preds = %64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %76 = call i32 @le16_to_cpup(i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @gp2ap020a00f_adjust_lux_mode(%struct.gp2ap020a00f_data* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %194

82:                                               ; preds = %74
  %83 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %84 = call i32 @gp2ap020a00f_output_to_lux(%struct.gp2ap020a00f_data* %83, i32* %9)
  %85 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %86 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %87 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %86, i32 0, i32 3
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = load i32, i32* @GP2AP020A00F_TH_L_REG, align 4
  %92 = call i32 @GP2AP020A00F_THRESH_VAL_ID(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %95 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ugt i32 %93, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %90
  %103 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %104 = load i32, i32* @IIO_LIGHT, align 4
  %105 = load i32, i32* @GP2AP020A00F_SCAN_MODE_LIGHT_CLEAR, align 4
  %106 = load i32, i32* @IIO_MOD_LIGHT_CLEAR, align 4
  %107 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %108 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %109 = call i32 @IIO_MOD_EVENT_CODE(i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %111 = call i32 @iio_get_time_ns(%struct.iio_dev* %110)
  %112 = call i32 @iio_push_event(%struct.iio_dev* %103, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %102, %90
  br label %114

114:                                              ; preds = %113, %82
  %115 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %116 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %117 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %116, i32 0, i32 3
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %114
  %121 = load i32, i32* @GP2AP020A00F_TL_L_REG, align 4
  %122 = call i32 @GP2AP020A00F_THRESH_VAL_ID(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %125 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %123, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %120
  %133 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %134 = load i32, i32* @IIO_LIGHT, align 4
  %135 = load i32, i32* @GP2AP020A00F_SCAN_MODE_LIGHT_CLEAR, align 4
  %136 = load i32, i32* @IIO_MOD_LIGHT_CLEAR, align 4
  %137 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %138 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %139 = call i32 @IIO_MOD_EVENT_CODE(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %141 = call i32 @iio_get_time_ns(%struct.iio_dev* %140)
  %142 = call i32 @iio_push_event(%struct.iio_dev* %133, i32 %139, i32 %141)
  br label %143

143:                                              ; preds = %132, %120
  br label %144

144:                                              ; preds = %143, %114
  br label %145

145:                                              ; preds = %144, %59
  %146 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %147 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @GP2AP020A00F_OPMODE_READ_RAW_CLEAR, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %153 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @GP2AP020A00F_OPMODE_READ_RAW_IR, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %159 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %157, %151, %145
  %164 = load i32, i32* @GP2AP020A00F_FLAG_DATA_READY, align 4
  %165 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %166 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %165, i32 0, i32 3
  %167 = call i32 @set_bit(i32 %164, i32* %166)
  %168 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %169 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %168, i32 0, i32 4
  %170 = call i32 @wake_up(i32* %169)
  br label %194

171:                                              ; preds = %157
  %172 = load i32, i32* @GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER, align 4
  %173 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %174 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %173, i32 0, i32 3
  %175 = call i64 @test_bit(i32 %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %171
  %178 = load i32, i32* @GP2AP020A00F_FLAG_ALS_IR_TRIGGER, align 4
  %179 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %180 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %179, i32 0, i32 3
  %181 = call i64 @test_bit(i32 %178, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @GP2AP020A00F_FLAG_PROX_TRIGGER, align 4
  %185 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %186 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %185, i32 0, i32 3
  %187 = call i64 @test_bit(i32 %184, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183, %177, %171
  %190 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %191 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %190, i32 0, i32 2
  %192 = call i32 @irq_work_queue(i32* %191)
  br label %193

193:                                              ; preds = %189, %183
  br label %194

194:                                              ; preds = %193, %163, %81, %73, %57, %24
  %195 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %195
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i64 @gp2ap020a00f_adjust_lux_mode(%struct.gp2ap020a00f_data*, i32) #1

declare dso_local i32 @gp2ap020a00f_output_to_lux(%struct.gp2ap020a00f_data*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @GP2AP020A00F_THRESH_VAL_ID(i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @irq_work_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
