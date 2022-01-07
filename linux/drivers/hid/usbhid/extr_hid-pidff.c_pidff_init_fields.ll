; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_init_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_init_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@set_effect = common dso_local global i32 0, align 4
@PID_SET_EFFECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unknown set_effect report layout\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@block_load = common dso_local global i32 0, align 4
@PID_BLOCK_LOAD = common dso_local global i32 0, align 4
@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unknown pid_block_load report layout\0A\00", align 1
@effect_operation = common dso_local global i32 0, align 4
@PID_EFFECT_OPERATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unknown effect_operation report layout\0A\00", align 1
@block_free = common dso_local global i32 0, align 4
@PID_BLOCK_FREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"unknown pid_block_free report layout\0A\00", align 1
@set_envelope = common dso_local global i32 0, align 4
@PID_SET_ENVELOPE = common dso_local global i32 0, align 4
@FF_CONSTANT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"has constant effect but no envelope\0A\00", align 1
@FF_RAMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"has ramp effect but no envelope\0A\00", align 1
@FF_PERIODIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"has periodic effect but no envelope\0A\00", align 1
@set_constant = common dso_local global i32 0, align 4
@PID_SET_CONSTANT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"unknown constant effect layout\0A\00", align 1
@set_ramp = common dso_local global i32 0, align 4
@PID_SET_RAMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"unknown ramp effect layout\0A\00", align 1
@FF_SPRING = common dso_local global i32 0, align 4
@FF_DAMPER = common dso_local global i32 0, align 4
@FF_FRICTION = common dso_local global i32 0, align 4
@FF_INERTIA = common dso_local global i32 0, align 4
@set_condition = common dso_local global i32 0, align 4
@PID_SET_CONDITION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"unknown condition effect layout\0A\00", align 1
@set_periodic = common dso_local global i32 0, align 4
@PID_SET_PERIODIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"unknown periodic effect layout\0A\00", align 1
@pool = common dso_local global i32 0, align 4
@PID_POOL = common dso_local global i32 0, align 4
@device_gain = common dso_local global i32 0, align 4
@PID_DEVICE_GAIN = common dso_local global i32 0, align 4
@FF_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidff_device*, %struct.input_dev*)* @pidff_init_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_init_fields(%struct.pidff_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pidff_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @set_effect, align 4
  %8 = load i32, i32* @PID_SET_EFFECT, align 4
  %9 = call i64 @PIDFF_FIND_FIELDS(i32 %7, i32 %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %13 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @hid_err(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %258

18:                                               ; preds = %2
  %19 = load i32, i32* @block_load, align 4
  %20 = load i32, i32* @PID_BLOCK_LOAD, align 4
  %21 = call i64 @PIDFF_FIND_FIELDS(i32 %19, i32 %20, i32 0)
  %22 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %23 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %18
  %31 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %32 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hid_err(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %258

37:                                               ; preds = %18
  %38 = load i32, i32* @effect_operation, align 4
  %39 = load i32, i32* @PID_EFFECT_OPERATION, align 4
  %40 = call i64 @PIDFF_FIND_FIELDS(i32 %38, i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %44 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hid_err(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %258

49:                                               ; preds = %37
  %50 = load i32, i32* @block_free, align 4
  %51 = load i32, i32* @PID_BLOCK_FREE, align 4
  %52 = call i64 @PIDFF_FIND_FIELDS(i32 %50, i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %56 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hid_err(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %258

61:                                               ; preds = %49
  %62 = load i32, i32* @set_envelope, align 4
  %63 = load i32, i32* @PID_SET_ENVELOPE, align 4
  %64 = call i64 @PIDFF_FIND_FIELDS(i32 %62, i32 %63, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %69 = call i64 @pidff_find_special_fields(%struct.pidff_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = call i64 @pidff_find_effects(%struct.pidff_device* %72, %struct.input_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %67
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %258

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %119, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @FF_CONSTANT, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @test_and_clear_bit(i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %91 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @hid_warn(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32, i32* @FF_RAMP, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @test_and_clear_bit(i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %103 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @hid_warn(i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %101, %94
  %107 = load i32, i32* @FF_PERIODIC, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @test_and_clear_bit(i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %115 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @hid_warn(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %106
  br label %119

119:                                              ; preds = %118, %79
  %120 = load i32, i32* @FF_CONSTANT, align 4
  %121 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @test_bit(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %119
  %127 = load i32, i32* @set_constant, align 4
  %128 = load i32, i32* @PID_SET_CONSTANT, align 4
  %129 = call i64 @PIDFF_FIND_FIELDS(i32 %127, i32 %128, i32 1)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %133 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @hid_warn(i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @FF_CONSTANT, align 4
  %137 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @clear_bit(i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %131, %126, %119
  %142 = load i32, i32* @FF_RAMP, align 4
  %143 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %144 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @test_bit(i32 %142, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = load i32, i32* @set_ramp, align 4
  %150 = load i32, i32* @PID_SET_RAMP, align 4
  %151 = call i64 @PIDFF_FIND_FIELDS(i32 %149, i32 %150, i32 1)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %155 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @hid_warn(i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32, i32* @FF_RAMP, align 4
  %159 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %160 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @clear_bit(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %153, %148, %141
  %164 = load i32, i32* @FF_SPRING, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @test_bit(i32 %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %191, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @FF_DAMPER, align 4
  %172 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %173 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @test_bit(i32 %171, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* @FF_FRICTION, align 4
  %179 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @test_bit(i32 %178, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* @FF_INERTIA, align 4
  %186 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %187 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @test_bit(i32 %185, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %221

191:                                              ; preds = %184, %177, %170, %163
  %192 = load i32, i32* @set_condition, align 4
  %193 = load i32, i32* @PID_SET_CONDITION, align 4
  %194 = call i64 @PIDFF_FIND_FIELDS(i32 %192, i32 %193, i32 1)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %191
  %197 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %198 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @hid_warn(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32, i32* @FF_SPRING, align 4
  %202 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %203 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @clear_bit(i32 %201, i32 %204)
  %206 = load i32, i32* @FF_DAMPER, align 4
  %207 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %208 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @clear_bit(i32 %206, i32 %209)
  %211 = load i32, i32* @FF_FRICTION, align 4
  %212 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %213 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @clear_bit(i32 %211, i32 %214)
  %216 = load i32, i32* @FF_INERTIA, align 4
  %217 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %218 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @clear_bit(i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %196, %191, %184
  %222 = load i32, i32* @FF_PERIODIC, align 4
  %223 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %224 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @test_bit(i32 %222, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %221
  %229 = load i32, i32* @set_periodic, align 4
  %230 = load i32, i32* @PID_SET_PERIODIC, align 4
  %231 = call i64 @PIDFF_FIND_FIELDS(i32 %229, i32 %230, i32 1)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %228
  %234 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %235 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @hid_warn(i32 %236, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %238 = load i32, i32* @FF_PERIODIC, align 4
  %239 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %240 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @clear_bit(i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %233, %228, %221
  %244 = load i32, i32* @pool, align 4
  %245 = load i32, i32* @PID_POOL, align 4
  %246 = call i64 @PIDFF_FIND_FIELDS(i32 %244, i32 %245, i32 0)
  %247 = load i32, i32* @device_gain, align 4
  %248 = load i32, i32* @PID_DEVICE_GAIN, align 4
  %249 = call i64 @PIDFF_FIND_FIELDS(i32 %247, i32 %248, i32 1)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %243
  %252 = load i32, i32* @FF_GAIN, align 4
  %253 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %254 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @set_bit(i32 %252, i32 %255)
  br label %257

257:                                              ; preds = %251, %243
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %257, %76, %54, %42, %30, %11
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i64 @PIDFF_FIND_FIELDS(i32, i32, i32) #1

declare dso_local i32 @hid_err(i32, i8*) #1

declare dso_local i64 @pidff_find_special_fields(%struct.pidff_device*) #1

declare dso_local i64 @pidff_find_effects(%struct.pidff_device*, %struct.input_dev*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @hid_warn(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
