; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.nspire_keypad = type { i64, i32, i32, %struct.input_dev*, i32, i32, i32 }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate keypad memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KEYPAD_BITMASK_COLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"scan-interval\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get scan-interval\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"row-delay\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get row-delay\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"active-low\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"nspire-keypad\00", align 1
@nspire_keypad_open = common dso_local global i32 0, align 4
@nspire_keypad_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@KEYPAD_BITMASK_ROWS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"building keymap failed\0A\00", align 1
@nspire_keypad_irq = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"nspire_keypad\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"allocate irq %d failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"unable to register input device: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"TI-NSPIRE keypad at %pR (scan_interval=%uus, row_delay=%uus%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c", active_low\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nspire_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nspire_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nspire_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %203

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nspire_keypad* @devm_kzalloc(%struct.TYPE_10__* %23, i32 40, i32 %24)
  store %struct.nspire_keypad* %25, %struct.nspire_keypad** %5, align 8
  %26 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %27 = icmp ne %struct.nspire_keypad* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %203

34:                                               ; preds = %21
  %35 = load i32, i32* @KEYPAD_BITMASK_COLS, align 4
  %36 = call i32 @get_count_order(i32 %35)
  %37 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %38 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %41 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %40, i32 0, i32 1
  %42 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %203

50:                                               ; preds = %34
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %53 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %52, i32 0, i32 2
  %54 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %203

62:                                               ; preds = %50
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = call i64 @of_property_read_bool(%struct.device_node* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %66 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @devm_clk_get(%struct.TYPE_10__* %68, i32* null)
  %70 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %71 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %73 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %62
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %82 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %203

85:                                               ; preds = %62
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load i32, i32* @IORESOURCE_MEM, align 4
  %88 = call %struct.resource* @platform_get_resource(%struct.platform_device* %86, i32 %87, i32 0)
  store %struct.resource* %88, %struct.resource** %7, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.resource*, %struct.resource** %7, align 8
  %92 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %90, %struct.resource* %91)
  %93 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %94 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %96 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %85
  %101 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %102 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %203

105:                                              ; preds = %85
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_10__* %107)
  store %struct.input_dev* %108, %struct.input_dev** %6, align 8
  %109 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %110 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %109, i32 0, i32 3
  store %struct.input_dev* %108, %struct.input_dev** %110, align 8
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = icmp ne %struct.input_dev* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %105
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %203

119:                                              ; preds = %105
  %120 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %121 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %122 = call i32 @input_set_drvdata(%struct.input_dev* %120, %struct.nspire_keypad* %121)
  %123 = load i32, i32* @BUS_HOST, align 4
  %124 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %125 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %128, align 8
  %129 = load i32, i32* @nspire_keypad_open, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @nspire_keypad_close, align 4
  %133 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @EV_KEY, align 4
  %136 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @__set_bit(i32 %135, i32 %138)
  %140 = load i32, i32* @EV_REP, align 4
  %141 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @__set_bit(i32 %140, i32 %143)
  %145 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %146 = load i32, i32* @EV_MSC, align 4
  %147 = load i32, i32* @MSC_SCAN, align 4
  %148 = call i32 @input_set_capability(%struct.input_dev* %145, i32 %146, i32 %147)
  %149 = load i32, i32* @KEYPAD_BITMASK_ROWS, align 4
  %150 = load i32, i32* @KEYPAD_BITMASK_COLS, align 4
  %151 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %152 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %149, i32 %150, i32* null, %struct.input_dev* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %119
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %2, align 4
  br label %203

160:                                              ; preds = %119
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @nspire_keypad_irq, align 4
  %165 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %166 = call i32 @devm_request_irq(%struct.TYPE_10__* %162, i32 %163, i32 %164, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.nspire_keypad* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* %8, align 4
  %173 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %203

175:                                              ; preds = %160
  %176 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %177 = call i32 @input_register_device(%struct.input_dev* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = load i32, i32* %9, align 4
  %184 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %2, align 4
  br label %203

186:                                              ; preds = %175
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.resource*, %struct.resource** %7, align 8
  %190 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %191 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %194 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.nspire_keypad*, %struct.nspire_keypad** %5, align 8
  %197 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %202 = call i32 @dev_dbg(%struct.TYPE_10__* %188, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0), %struct.resource* %189, i32 %192, i32 %195, i8* %201)
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %186, %180, %169, %155, %113, %100, %77, %57, %45, %28, %18
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.nspire_keypad* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_10__*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.nspire_keypad*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32*, %struct.input_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i8*, %struct.nspire_keypad*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, %struct.resource*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
