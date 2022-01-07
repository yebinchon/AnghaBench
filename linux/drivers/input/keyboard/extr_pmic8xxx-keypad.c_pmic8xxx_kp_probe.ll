; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pmic8xxx_kp = type { i32, i32, i64, i64, i32, %struct.TYPE_15__*, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i8*, i8*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@PM8XXX_MAX_COLS = common dso_local global i32 0, align 4
@PM8XXX_MAX_ROWS = common dso_local global i32 0, align 4
@PM8XXX_MIN_COLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"linux,input-no-autorepeat\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"linux,keypad-wakeup\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to allocate input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PMIC8XXX keypad\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"pmic8xxx_keypad/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@pmic8xxx_kp_open = common dso_local global i32 0, align 4
@pmic8xxx_kp_close = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"unable to initialize keypad controller\0A\00", align 1
@pmic8xxx_kp_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"pmic-keypad\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to request keypad sense irq\0A\00", align 1
@pmic8xxx_kp_stuck_irq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"pmic-keypad-stuck\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"failed to request keypad stuck irq\0A\00", align 1
@KEYP_CTRL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"failed to read KEYP_CTRL register\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"unable to register keypad input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmic8xxx_kp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmic8xxx_kp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @matrix_keypad_parse_properties(%struct.TYPE_14__* %17, i32* %5, i32* %6)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %2, align 4
  br label %306

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PM8XXX_MAX_COLS, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PM8XXX_MAX_ROWS, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PM8XXX_MIN_COLS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27, %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_14__* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %306

41:                                               ; preds = %31
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = call i64 @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i64 @of_property_read_bool(%struct.device_node* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = call i64 @of_property_read_bool(%struct.device_node* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %50, %41
  %55 = phi i1 [ true, %41 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.pmic8xxx_kp* @devm_kzalloc(%struct.TYPE_14__* %58, i32 64, i32 %59)
  store %struct.pmic8xxx_kp* %60, %struct.pmic8xxx_kp** %9, align 8
  %61 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %62 = icmp ne %struct.pmic8xxx_kp* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %306

66:                                               ; preds = %54
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_get_regmap(i32 %70, i32* null)
  %72 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %73 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %75 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %306

81:                                               ; preds = %66
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.pmic8xxx_kp* %83)
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %87 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %90 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %94 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %93, i32 0, i32 10
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call %struct.TYPE_15__* @devm_input_allocate_device(%struct.TYPE_14__* %96)
  %98 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %99 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %98, i32 0, i32 5
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %99, align 8
  %100 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %101 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %100, i32 0, i32 5
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = icmp ne %struct.TYPE_15__* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %81
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(%struct.TYPE_14__* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %306

110:                                              ; preds = %81
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = call i8* @platform_get_irq(%struct.platform_device* %111, i32 0)
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %115 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %117 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %122 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %2, align 4
  br label %306

125:                                              ; preds = %110
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = call i8* @platform_get_irq(%struct.platform_device* %126, i32 1)
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %130 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %132 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %137 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %2, align 4
  br label %306

140:                                              ; preds = %125
  %141 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %142 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %141, i32 0, i32 5
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %146 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %145, i32 0, i32 5
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %148, align 8
  %149 = load i32, i32* @BUS_I2C, align 4
  %150 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %151 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %150, i32 0, i32 5
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  store i32 %149, i32* %154, align 4
  %155 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %156 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %155, i32 0, i32 5
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 4
  %160 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %161 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %160, i32 0, i32 5
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %166 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %165, i32 0, i32 5
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  store i32 1, i32* %169, align 4
  %170 = load i32, i32* @pmic8xxx_kp_open, align 4
  %171 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %172 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %171, i32 0, i32 5
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 4
  store i32 %170, i32* %174, align 8
  %175 = load i32, i32* @pmic8xxx_kp_close, align 4
  %176 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %177 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %176, i32 0, i32 5
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* @PM8XXX_MAX_ROWS, align 4
  %181 = load i32, i32* @PM8XXX_MAX_COLS, align 4
  %182 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %183 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %186 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %185, i32 0, i32 5
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %180, i32 %181, i32 %184, %struct.TYPE_15__* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %140
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = call i32 @dev_err(%struct.TYPE_14__* %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %2, align 4
  br label %306

196:                                              ; preds = %140
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load i32, i32* @EV_REP, align 4
  %201 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %202 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %201, i32 0, i32 5
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @__set_bit(i32 %200, i32 %205)
  br label %207

207:                                              ; preds = %199, %196
  %208 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %209 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %208, i32 0, i32 5
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = load i32, i32* @EV_MSC, align 4
  %212 = load i32, i32* @MSC_SCAN, align 4
  %213 = call i32 @input_set_capability(%struct.TYPE_15__* %210, i32 %211, i32 %212)
  %214 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %215 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %214, i32 0, i32 5
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %218 = call i32 @input_set_drvdata(%struct.TYPE_15__* %216, %struct.pmic8xxx_kp* %217)
  %219 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %220 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @memset(i32 %221, i32 255, i32 4)
  %223 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %224 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @memset(i32 %225, i32 255, i32 4)
  %227 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = call i32 @pmic8xxx_kpd_init(%struct.pmic8xxx_kp* %227, %struct.platform_device* %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %207
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = call i32 @dev_err(%struct.TYPE_14__* %234, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %236 = load i32, i32* %10, align 4
  store i32 %236, i32* %2, align 4
  br label %306

237:                                              ; preds = %207
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 0
  %240 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %241 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = load i32, i32* @pmic8xxx_kp_irq, align 4
  %245 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %246 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %247 = call i32 @devm_request_any_context_irq(%struct.TYPE_14__* %239, i32 %243, i32 %244, i32 %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.pmic8xxx_kp* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %237
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %251, i32 0, i32 0
  %253 = call i32 @dev_err(%struct.TYPE_14__* %252, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %2, align 4
  br label %306

255:                                              ; preds = %237
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %259 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = load i32, i32* @pmic8xxx_kp_stuck_irq, align 4
  %263 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %264 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %265 = call i32 @devm_request_any_context_irq(%struct.TYPE_14__* %257, i32 %261, i32 %262, i32 %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), %struct.pmic8xxx_kp* %264)
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %255
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = call i32 @dev_err(%struct.TYPE_14__* %270, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %2, align 4
  br label %306

273:                                              ; preds = %255
  %274 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %275 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @KEYP_CTRL, align 4
  %278 = call i32 @regmap_read(i32 %276, i32 %277, i32* %11)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %273
  %282 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %283 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %282, i32 0, i32 0
  %284 = call i32 @dev_err(%struct.TYPE_14__* %283, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %285 = load i32, i32* %10, align 4
  store i32 %285, i32* %2, align 4
  br label %306

286:                                              ; preds = %273
  %287 = load i32, i32* %11, align 4
  %288 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %289 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %288, i32 0, i32 4
  store i32 %287, i32* %289, align 8
  %290 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %9, align 8
  %291 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %290, i32 0, i32 5
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = call i32 @input_register_device(%struct.TYPE_15__* %292)
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %286
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = call i32 @dev_err(%struct.TYPE_14__* %298, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %300 = load i32, i32* %10, align 4
  store i32 %300, i32* %2, align 4
  br label %306

301:                                              ; preds = %286
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %302, i32 0, i32 0
  %304 = load i32, i32* %8, align 4
  %305 = call i32 @device_init_wakeup(%struct.TYPE_14__* %303, i32 %304)
  store i32 0, i32* %2, align 4
  br label %306

306:                                              ; preds = %301, %296, %281, %268, %250, %232, %191, %135, %120, %104, %78, %63, %35, %21
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i32 @matrix_keypad_parse_properties(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.pmic8xxx_kp* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pmic8xxx_kp*) #1

declare dso_local %struct.TYPE_15__* @devm_input_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_15__*, %struct.pmic8xxx_kp*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pmic8xxx_kpd_init(%struct.pmic8xxx_kp*, %struct.platform_device*) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_14__*, i32, i32, i32, i8*, %struct.pmic8xxx_kp*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_15__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
