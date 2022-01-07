; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.rotary_encoder = type { i32, i32, i32*, %struct.TYPE_8__*, i8*, i8*, %struct.input_dev*, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.input_dev = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.device* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"rotary-encoder,steps\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rotary-encoder,steps-per-period\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"rotary-encoder,half-period\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rotary-encoder,rollover\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"rotary-encoder,encoding\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@ROTENC_GRAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@ROTENC_BINARY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"unknown encoding setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"linux,axis\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"rotary-encoder,relative-axis\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"unable to get gpios: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"not enough gpios found\0A\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@rotary_encoder_quarter_period_irq = common dso_local global i32 0, align 4
@rotary_encoder_half_period_irq = common dso_local global i32 0, align 4
@rotary_encoder_irq = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"'%d' is not a valid steps-per-period value\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"unable to request IRQ %d (gpio#%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rotary_encoder_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotary_encoder_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rotary_encoder*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rotary_encoder* @devm_kzalloc(%struct.device* %13, i32 72, i32 %14)
  store %struct.rotary_encoder* %15, %struct.rotary_encoder** %5, align 8
  %16 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %17 = icmp ne %struct.rotary_encoder* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %286

21:                                               ; preds = %1
  %22 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %23 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %22, i32 0, i32 9
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %27 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %26, i32 0, i32 0
  %28 = call i32 @device_property_read_u32(%struct.device* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @device_property_read_u32(%struct.device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i8* @device_property_read_bool(%struct.device* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %33, %21
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i8* @device_property_read_bool(%struct.device* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %43 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @device_property_present(%struct.device* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @device_property_match_string(%struct.device* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* @ROTENC_GRAY, align 4
  %55 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %56 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  br label %73

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @device_property_match_string(%struct.device* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* @ROTENC_BINARY, align 4
  %65 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %66 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %286

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %76 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %75, i32 0, i32 1
  %77 = call i32 @device_property_read_u32(%struct.device* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i8* @device_property_read_bool(%struct.device* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %80 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %81 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* @GPIOD_IN, align 4
  %84 = call %struct.TYPE_8__* @devm_gpiod_get_array(%struct.device* %82, i32* null, i32 %83)
  %85 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %86 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %85, i32 0, i32 3
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %88 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = call i64 @IS_ERR(%struct.TYPE_8__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %73
  %93 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %94 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @PTR_ERR(%struct.TYPE_8__* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @EPROBE_DEFER, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %92
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %2, align 4
  br label %286

107:                                              ; preds = %73
  %108 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %109 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %286

119:                                              ; preds = %107
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %120)
  store %struct.input_dev* %121, %struct.input_dev** %6, align 8
  %122 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %123 = icmp ne %struct.input_dev* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %286

127:                                              ; preds = %119
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %130 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %129, i32 0, i32 6
  store %struct.input_dev* %128, %struct.input_dev** %130, align 8
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @BUS_HOST, align 4
  %137 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store %struct.device* %140, %struct.device** %143, align 8
  %144 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %145 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %144, i32 0, i32 5
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %127
  %149 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %150 = load i32, i32* @EV_REL, align 4
  %151 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %152 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @input_set_capability(%struct.input_dev* %149, i32 %150, i32 %153)
  br label %164

155:                                              ; preds = %127
  %156 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %157 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %158 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %161 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @input_set_abs_params(%struct.input_dev* %156, i32 %159, i32 0, i32 %162, i32 0, i32 1)
  br label %164

164:                                              ; preds = %155, %148
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %167 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %166, i32 0, i32 3
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 2
  %172 = ashr i32 %165, %171
  switch i32 %172, label %184 [
    i32 4, label %173
    i32 2, label %178
    i32 1, label %183
  ]

173:                                              ; preds = %164
  store i32* @rotary_encoder_quarter_period_irq, i32** %7, align 8
  %174 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %175 = call i8* @rotary_encoder_get_state(%struct.rotary_encoder* %174)
  %176 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %177 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  br label %190

178:                                              ; preds = %164
  store i32* @rotary_encoder_half_period_irq, i32** %7, align 8
  %179 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %180 = call i8* @rotary_encoder_get_state(%struct.rotary_encoder* %179)
  %181 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %182 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  br label %190

183:                                              ; preds = %164
  store i32* @rotary_encoder_irq, i32** %7, align 8
  br label %190

184:                                              ; preds = %164
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %286

190:                                              ; preds = %183, %178, %173
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %193 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %192, i32 0, i32 3
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @GFP_KERNEL, align 4
  %198 = call i32* @devm_kcalloc(%struct.device* %191, i32 %196, i32 4, i32 %197)
  %199 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %200 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %199, i32 0, i32 2
  store i32* %198, i32** %200, align 8
  %201 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %202 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %190
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %286

208:                                              ; preds = %190
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %266, %208
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %212 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %211, i32 0, i32 3
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %210, %215
  br i1 %216, label %217, label %269

217:                                              ; preds = %209
  %218 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %219 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %218, i32 0, i32 3
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @gpiod_to_irq(i32 %226)
  %228 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %229 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %227, i32* %233, align 4
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %236 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %244 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @IRQF_ONESHOT, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @DRV_NAME, align 4
  %249 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %250 = call i32 @devm_request_threaded_irq(%struct.device* %234, i32 %241, i32* null, i32* %242, i32 %247, i32 %248, %struct.rotary_encoder* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %217
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %256 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %9, align 4
  %263 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load i32, i32* %10, align 4
  store i32 %264, i32* %2, align 4
  br label %286

265:                                              ; preds = %217
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %9, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %209

269:                                              ; preds = %209
  %270 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %271 = call i32 @input_register_device(%struct.input_dev* %270)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = load %struct.device*, %struct.device** %4, align 8
  %276 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %277 = load i32, i32* %10, align 4
  store i32 %277, i32* %2, align 4
  br label %286

278:                                              ; preds = %269
  %279 = load %struct.device*, %struct.device** %4, align 8
  %280 = load %struct.device*, %struct.device** %4, align 8
  %281 = call i8* @device_property_read_bool(%struct.device* %280, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %282 = call i32 @device_init_wakeup(%struct.device* %279, i8* %281)
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %285 = call i32 @platform_set_drvdata(%struct.platform_device* %283, %struct.rotary_encoder* %284)
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %278, %274, %253, %205, %184, %124, %114, %105, %67, %18
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local %struct.rotary_encoder* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i8* @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_present(%struct.device*, i8*) #1

declare dso_local i32 @device_property_match_string(%struct.device*, i8*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @devm_gpiod_get_array(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @rotary_encoder_get_state(%struct.rotary_encoder*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32*, i32, i32, %struct.rotary_encoder*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rotary_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
