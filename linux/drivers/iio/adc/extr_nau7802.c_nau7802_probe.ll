; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.device_node* }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i64*, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node*, %struct.TYPE_9__* }
%struct.nau7802_state = type { i32, i64*, i32, i32, i32, %struct.i2c_client*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"No device tree node available.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@nau7802_info = common dso_local global i32 0, align 4
@NAU7802_REG_PUCTRL = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_RR_BIT = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_PUD_BIT = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_PUR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nuvoton,vldo\00", align 1
@NAU7802_PUCTRL_PUA_BIT = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_CS_BIT = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_AVDDS_BIT = common dso_local global i32 0, align 4
@NAU7802_REG_ADC_CTRL = common dso_local global i32 0, align 4
@NAU7802_REG_CTRL1 = common dso_local global i32 0, align 4
@nau7802_eoc_trigger = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate IRQ, using polling mode\0A\00", align 1
@NAU7802_SAMP_FREQ_320 = common dso_local global i32 0, align 4
@NAU7802_REG_CTRL2 = common dso_local global i32 0, align 4
@nau7802_chan_array = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nau7802_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.nau7802_state*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = call i32 @dev_err(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %294

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %30, i32 48)
  store %struct.iio_dev* %31, %struct.iio_dev** %6, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = icmp eq %struct.iio_dev* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %294

37:                                               ; preds = %28
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = call %struct.nau7802_state* @iio_priv(%struct.iio_dev* %38)
  store %struct.nau7802_state* %39, %struct.nau7802_state** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.iio_dev* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.device_node*, %struct.device_node** %50, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store %struct.device_node* %51, %struct.device_node** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = call i32 @dev_name(%struct.TYPE_9__* %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 2
  store i32* @nau7802_info, i32** %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %67 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %66, i32 0, i32 5
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  %68 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %69 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %68, i32 0, i32 5
  %70 = load %struct.i2c_client*, %struct.i2c_client** %69, align 8
  %71 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %72 = load i32, i32* @NAU7802_PUCTRL_RR_BIT, align 4
  %73 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %37
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %294

78:                                               ; preds = %37
  %79 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %80 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %79, i32 0, i32 5
  %81 = load %struct.i2c_client*, %struct.i2c_client** %80, align 8
  %82 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %83 = load i32, i32* @NAU7802_PUCTRL_PUD_BIT, align 4
  %84 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %81, i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %294

89:                                               ; preds = %78
  %90 = call i32 @udelay(i32 210)
  %91 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %92 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %91, i32 0, i32 5
  %93 = load %struct.i2c_client*, %struct.i2c_client** %92, align 8
  %94 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %95 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %294

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @NAU7802_PUCTRL_PUR_BIT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %3, align 4
  br label %294

107:                                              ; preds = %100
  %108 = load %struct.device_node*, %struct.device_node** %8, align 8
  %109 = call i32 @of_property_read_u32(%struct.device_node* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %112 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @NAU7802_PUCTRL_PUD_BIT, align 4
  %114 = load i32, i32* @NAU7802_PUCTRL_PUA_BIT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @NAU7802_PUCTRL_CS_BIT, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp sge i32 %118, 2400
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i32, i32* @NAU7802_PUCTRL_AVDDS_BIT, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %107
  %125 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %126 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %125, i32 0, i32 5
  %127 = load %struct.i2c_client*, %struct.i2c_client** %126, align 8
  %128 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %127, i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %294

135:                                              ; preds = %124
  %136 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %137 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %136, i32 0, i32 5
  %138 = load %struct.i2c_client*, %struct.i2c_client** %137, align 8
  %139 = load i32, i32* @NAU7802_REG_ADC_CTRL, align 4
  %140 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %138, i32 %139, i32 48)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %294

145:                                              ; preds = %135
  %146 = load i32, i32* %12, align 4
  %147 = icmp sge i32 %146, 2400
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 4500, %149
  %151 = sdiv i32 %150, 300
  %152 = call i32 @NAU7802_CTRL1_VLDO(i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %154 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %153, i32 0, i32 5
  %155 = load %struct.i2c_client*, %struct.i2c_client** %154, align 8
  %156 = load i32, i32* @NAU7802_REG_CTRL1, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %155, i32 %156, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %148
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %3, align 4
  br label %294

163:                                              ; preds = %148
  br label %164

164:                                              ; preds = %163, %145
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %188, %164
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %168 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = call i32 @ARRAY_SIZE(i64* %169)
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %165
  %173 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %174 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 1000000000
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 23, %178
  %180 = zext i32 %179 to i64
  %181 = lshr i64 %177, %180
  %182 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %183 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 %181, i64* %187, align 8
  br label %188

188:                                              ; preds = %172
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %165

191:                                              ; preds = %165
  %192 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %193 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %192, i32 0, i32 6
  %194 = call i32 @init_completion(i32* %193)
  %195 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %196 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %191
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @nau7802_eoc_trigger, align 4
  %204 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %205 = load i32, i32* @IRQF_ONESHOT, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %214 = call i32 @request_threaded_irq(i64 %202, i32* null, i32 %203, i32 %206, i32 %212, %struct.iio_dev* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %199
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 1
  %220 = call i32 @dev_info(%struct.TYPE_9__* %219, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  store i64 0, i64* %222, align 8
  br label %228

223:                                              ; preds = %199
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @disable_irq(i64 %226)
  br label %228

228:                                              ; preds = %223, %217
  br label %229

229:                                              ; preds = %228, %191
  %230 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %231 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %251, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* @NAU7802_SAMP_FREQ_320, align 4
  %236 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %237 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %239 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %238, i32 0, i32 5
  %240 = load %struct.i2c_client*, %struct.i2c_client** %239, align 8
  %241 = load i32, i32* @NAU7802_REG_CTRL2, align 4
  %242 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %243 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @NAU7802_CTRL2_CRS(i32 %244)
  %246 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %240, i32 %241, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %234
  br label %281

250:                                              ; preds = %234
  br label %251

251:                                              ; preds = %250, %229
  %252 = load i64*, i64** @nau7802_chan_array, align 8
  %253 = call i32 @ARRAY_SIZE(i64* %252)
  %254 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %255 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load i64*, i64** @nau7802_chan_array, align 8
  %257 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %258 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %257, i32 0, i32 1
  store i64* %256, i64** %258, align 8
  %259 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %260 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %259, i32 0, i32 3
  %261 = call i32 @mutex_init(i32* %260)
  %262 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %263 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %262, i32 0, i32 2
  %264 = call i32 @mutex_init(i32* %263)
  %265 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %266 = call i32 @iio_device_register(%struct.iio_dev* %265)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %251
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 1
  %272 = call i32 @dev_err(%struct.TYPE_9__* %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %274

273:                                              ; preds = %251
  store i32 0, i32* %3, align 4
  br label %294

274:                                              ; preds = %269
  %275 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %276 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %275, i32 0, i32 3
  %277 = call i32 @mutex_destroy(i32* %276)
  %278 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %279 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %278, i32 0, i32 2
  %280 = call i32 @mutex_destroy(i32* %279)
  br label %281

281:                                              ; preds = %274, %249
  %282 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %283 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %288 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %291 = call i32 @free_irq(i64 %289, %struct.iio_dev* %290)
  br label %292

292:                                              ; preds = %286, %281
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %292, %273, %161, %143, %133, %105, %98, %87, %76, %34, %22
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.nau7802_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @NAU7802_CTRL1_VLDO(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @NAU7802_CTRL2_CRS(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
