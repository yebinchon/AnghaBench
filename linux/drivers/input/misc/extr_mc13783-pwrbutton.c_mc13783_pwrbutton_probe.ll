; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_mc13783-pwrbutton.c_mc13783_pwrbutton_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_mc13783-pwrbutton.c_mc13783_pwrbutton_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mc13xxx_buttons_platform_data = type { i32, i32, i32, i64, i64, i64 }
%struct.mc13xxx = type { i32 }
%struct.input_dev = type { i8*, i8*, i64*, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.mc13783_pwrb = type { i64*, i32, %struct.mc13xxx*, %struct.input_dev* }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't allocate power button\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MC13783_POWER_CONTROL_2_ON1BDBNC = common dso_local global i32 0, align 4
@MC13783_POWER_CONTROL_2_ON2BDBNC = common dso_local global i32 0, align 4
@MC13783_POWER_CONTROL_2_ON3BDBNC = common dso_local global i32 0, align 4
@MC13783_BUTTON_ENABLE = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i64 0, align 8
@MC13783_BUTTON_POL_INVERT = common dso_local global i32 0, align 4
@MC13783_PWRB_B1_POL_INVERT = common dso_local global i32 0, align 4
@MC13783_BUTTON_RESET_EN = common dso_local global i32 0, align 4
@MC13783_POWER_CONTROL_2_ON1BRSTEN = common dso_local global i32 0, align 4
@MC13783_IRQ_ONOFD1 = common dso_local global i32 0, align 4
@button_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"b1on\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Can't request irq\0A\00", align 1
@MC13783_PWRB_B2_POL_INVERT = common dso_local global i32 0, align 4
@MC13783_POWER_CONTROL_2_ON2BRSTEN = common dso_local global i32 0, align 4
@MC13783_IRQ_ONOFD2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"b2on\00", align 1
@MC13783_PWRB_B3_POL_INVERT = common dso_local global i32 0, align 4
@MC13783_POWER_CONTROL_2_ON3BRSTEN = common dso_local global i32 0, align 4
@MC13783_IRQ_ONOFD3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"b3on\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Can't request irq: %d\0A\00", align 1
@MC13783_REG_POWER_CONTROL_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"mc13783_pwrbutton\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"mc13783_pwrbutton/input0\00", align 1
@EV_KEY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"Can't register power button: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mc13783_pwrbutton_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_pwrbutton_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mc13xxx_buttons_platform_data*, align 8
  %5 = alloca %struct.mc13xxx*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.mc13783_pwrb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mc13xxx* @dev_get_drvdata(i32 %13)
  store %struct.mc13xxx* %14, %struct.mc13xxx** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.mc13xxx_buttons_platform_data* @dev_get_platdata(%struct.TYPE_6__* %16)
  store %struct.mc13xxx_buttons_platform_data* %17, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %18 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %19 = icmp ne %struct.mc13xxx_buttons_platform_data* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %372

26:                                               ; preds = %1
  %27 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %27, %struct.input_dev** %6, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %372

36:                                               ; preds = %26
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.mc13783_pwrb* @kzalloc(i32 32, i32 %37)
  store %struct.mc13783_pwrb* %38, %struct.mc13783_pwrb** %7, align 8
  %39 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %40 = icmp ne %struct.mc13783_pwrb* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %368

47:                                               ; preds = %36
  %48 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 3
  %52 = load i32, i32* @MC13783_POWER_CONTROL_2_ON1BDBNC, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %57 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 3
  %60 = load i32, i32* @MC13783_POWER_CONTROL_2_ON2BDBNC, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %65 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 3
  %68 = load i32, i32* @MC13783_POWER_CONTROL_2_ON3BDBNC, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %73 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %74 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %73, i32 0, i32 3
  store %struct.input_dev* %72, %struct.input_dev** %74, align 8
  %75 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %76 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %77 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %76, i32 0, i32 2
  store %struct.mc13xxx* %75, %struct.mc13xxx** %77, align 8
  %78 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %79 = call i32 @mc13xxx_lock(%struct.mc13xxx* %78)
  %80 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %81 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %144

86:                                               ; preds = %47
  %87 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %88 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %91 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 %89, i64* %93, align 8
  %94 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %95 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @KEY_RESERVED, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %86
  %100 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__set_bit(i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %99, %86
  %108 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %109 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MC13783_BUTTON_POL_INVERT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* @MC13783_PWRB_B1_POL_INVERT, align 4
  %116 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %117 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %122 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MC13783_BUTTON_RESET_EN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* @MC13783_POWER_CONTROL_2_ON1BRSTEN, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %127, %120
  %132 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %133 = load i32, i32* @MC13783_IRQ_ONOFD1, align 4
  %134 = load i32, i32* @button_irq, align 4
  %135 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %136 = call i32 @mc13xxx_irq_request(%struct.mc13xxx* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.mc13783_pwrb* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %363

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %47
  %145 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %146 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %209

151:                                              ; preds = %144
  %152 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %153 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %156 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  store i64 %154, i64* %158, align 8
  %159 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %160 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @KEY_RESERVED, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %151
  %165 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %166 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @__set_bit(i64 %167, i32 %170)
  br label %172

172:                                              ; preds = %164, %151
  %173 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %174 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MC13783_BUTTON_POL_INVERT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @MC13783_PWRB_B2_POL_INVERT, align 4
  %181 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %182 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %172
  %186 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %187 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @MC13783_BUTTON_RESET_EN, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i32, i32* @MC13783_POWER_CONTROL_2_ON2BRSTEN, align 4
  %194 = load i32, i32* %9, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %192, %185
  %197 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %198 = load i32, i32* @MC13783_IRQ_ONOFD2, align 4
  %199 = load i32, i32* @button_irq, align 4
  %200 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %201 = call i32 @mc13xxx_irq_request(%struct.mc13xxx* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.mc13783_pwrb* %200)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %350

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %144
  %210 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %211 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %275

216:                                              ; preds = %209
  %217 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %218 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %221 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 2
  store i64 %219, i64* %223, align 8
  %224 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %225 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @KEY_RESERVED, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %216
  %230 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %231 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %234 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @__set_bit(i64 %232, i32 %235)
  br label %237

237:                                              ; preds = %229, %216
  %238 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %239 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @MC13783_BUTTON_POL_INVERT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = load i32, i32* @MC13783_PWRB_B3_POL_INVERT, align 4
  %246 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %247 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %237
  %251 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %252 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @MC13783_BUTTON_RESET_EN, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %250
  %258 = load i32, i32* @MC13783_POWER_CONTROL_2_ON3BRSTEN, align 4
  %259 = load i32, i32* %9, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %257, %250
  %262 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %263 = load i32, i32* @MC13783_IRQ_ONOFD3, align 4
  %264 = load i32, i32* @button_irq, align 4
  %265 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %266 = call i32 @mc13xxx_irq_request(%struct.mc13xxx* %262, i32 %263, i32 %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.mc13783_pwrb* %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %261
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = load i32, i32* %8, align 4
  %273 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %272)
  br label %337

274:                                              ; preds = %261
  br label %275

275:                                              ; preds = %274, %209
  %276 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %277 = load i32, i32* @MC13783_REG_POWER_CONTROL_2, align 4
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @mc13xxx_reg_rmw(%struct.mc13xxx* %276, i32 %277, i32 1022, i32 %278)
  %280 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %281 = call i32 @mc13xxx_unlock(%struct.mc13xxx* %280)
  %282 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %283 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %282, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %283, align 8
  %284 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %285 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %284, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %285, align 8
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %289 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %288, i32 0, i32 6
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 0
  store %struct.TYPE_6__* %287, %struct.TYPE_6__** %290, align 8
  %291 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %292 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %291, i32 0, i32 0
  %293 = load i64*, i64** %292, align 8
  %294 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %295 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %294, i32 0, i32 2
  store i64* %293, i64** %295, align 8
  %296 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %297 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %296, i32 0, i32 0
  %298 = load i64*, i64** %297, align 8
  %299 = call i32 @ARRAY_SIZE(i64* %298)
  %300 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %301 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %300, i32 0, i32 5
  store i32 %299, i32* %301, align 8
  %302 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %303 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %302, i32 0, i32 3
  store i32 8, i32* %303, align 8
  %304 = load i64, i64* @EV_KEY, align 8
  %305 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %306 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @__set_bit(i64 %304, i32 %307)
  %309 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %310 = call i32 @input_register_device(%struct.input_dev* %309)
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %275
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %314, i32 0, i32 0
  %316 = load i32, i32* %8, align 4
  %317 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %315, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %316)
  br label %322

318:                                              ; preds = %275
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %321 = call i32 @platform_set_drvdata(%struct.platform_device* %319, %struct.mc13783_pwrb* %320)
  store i32 0, i32* %2, align 4
  br label %372

322:                                              ; preds = %313
  %323 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %324 = call i32 @mc13xxx_lock(%struct.mc13xxx* %323)
  %325 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %326 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %322
  %332 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %333 = load i32, i32* @MC13783_IRQ_ONOFD3, align 4
  %334 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %335 = call i32 @mc13xxx_irq_free(%struct.mc13xxx* %332, i32 %333, %struct.mc13783_pwrb* %334)
  br label %336

336:                                              ; preds = %331, %322
  br label %337

337:                                              ; preds = %336, %269
  %338 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %339 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %337
  %345 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %346 = load i32, i32* @MC13783_IRQ_ONOFD2, align 4
  %347 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %348 = call i32 @mc13xxx_irq_free(%struct.mc13xxx* %345, i32 %346, %struct.mc13783_pwrb* %347)
  br label %349

349:                                              ; preds = %344, %337
  br label %350

350:                                              ; preds = %349, %204
  %351 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %352 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %350
  %358 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %359 = load i32, i32* @MC13783_IRQ_ONOFD1, align 4
  %360 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %361 = call i32 @mc13xxx_irq_free(%struct.mc13xxx* %358, i32 %359, %struct.mc13783_pwrb* %360)
  br label %362

362:                                              ; preds = %357, %350
  br label %363

363:                                              ; preds = %362, %139
  %364 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %365 = call i32 @mc13xxx_unlock(%struct.mc13xxx* %364)
  %366 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %7, align 8
  %367 = call i32 @kfree(%struct.mc13783_pwrb* %366)
  br label %368

368:                                              ; preds = %363, %41
  %369 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %370 = call i32 @input_free_device(%struct.input_dev* %369)
  %371 = load i32, i32* %8, align 4
  store i32 %371, i32* %2, align 4
  br label %372

372:                                              ; preds = %368, %318, %30, %20
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local %struct.mc13xxx* @dev_get_drvdata(i32) #1

declare dso_local %struct.mc13xxx_buttons_platform_data* @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.mc13783_pwrb* @kzalloc(i32, i32) #1

declare dso_local i32 @mc13xxx_lock(%struct.mc13xxx*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @mc13xxx_irq_request(%struct.mc13xxx*, i32, i32, i8*, %struct.mc13783_pwrb*) #1

declare dso_local i32 @mc13xxx_reg_rmw(%struct.mc13xxx*, i32, i32, i32) #1

declare dso_local i32 @mc13xxx_unlock(%struct.mc13xxx*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mc13783_pwrb*) #1

declare dso_local i32 @mc13xxx_irq_free(%struct.mc13xxx*, i32, %struct.mc13783_pwrb*) #1

declare dso_local i32 @kfree(%struct.mc13783_pwrb*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
