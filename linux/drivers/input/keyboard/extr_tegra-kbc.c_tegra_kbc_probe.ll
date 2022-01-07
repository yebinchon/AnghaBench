; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.tegra_kbc = type { i32, i32, i64, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { %struct.TYPE_11__* }

@tegra_kbc_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc memory for kbc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@tegra_kbc_keypress_timer = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get keyboard clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"kbc\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to get keyboard reset\0A\00", align 1
@KBC_MAX_DEBOUNCE_CNT = common dso_local global i32 0, align 4
@KBC_ROW_SCAN_TIME = common dso_local global i32 0, align 4
@KBC_ROW_SCAN_DLY = common dso_local global i64 0, align 8
@KBC_CYCLE_MS = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@tegra_kbc_open = common dso_local global i32 0, align 4
@tegra_kbc_close = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to setup keymap\0A\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@tegra_kbc_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to request keyboard IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_kbc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_kbc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_kbc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @tegra_kbc_of_match, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.of_device_id* @of_match_device(i32 %12, i32* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %11, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.tegra_kbc* @devm_kzalloc(i32* %17, i32 112, i32 %18)
  store %struct.tegra_kbc* %19, %struct.tegra_kbc** %4, align 8
  %20 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %21 = icmp ne %struct.tegra_kbc* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %331

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %31, i32 0, i32 17
  store i32* %30, i32** %32, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %36, i32 0, i32 6
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %38, i32 0, i32 6
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %43, i32 0, i32 6
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %42, %47
  %49 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %51, i32 0, i32 6
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %56, i32 0, i32 6
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %55, %60
  %62 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %10, align 4
  %67 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %67, i32 0, i32 16
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %71 = call i32 @tegra_kbc_parse_dt(%struct.tegra_kbc* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %28
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %331

76:                                               ; preds = %28
  %77 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %78 = call i32 @tegra_kbc_check_pin_cfg(%struct.tegra_kbc* %77, i32* %7)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %331

83:                                               ; preds = %76
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i64 @platform_get_irq(%struct.platform_device* %84, i32 0)
  %86 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %89 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @ENXIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %331

95:                                               ; preds = %83
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call %struct.TYPE_12__* @devm_input_allocate_device(i32* %97)
  %99 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %100 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %99, i32 0, i32 4
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %100, align 8
  %101 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %101, i32 0, i32 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %95
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %331

111:                                              ; preds = %95
  %112 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %113 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %112, i32 0, i32 15
  %114 = load i32, i32* @tegra_kbc_keypress_timer, align 4
  %115 = call i32 @timer_setup(i32* %113, i32 %114, i32 0)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load i32, i32* @IORESOURCE_MEM, align 4
  %118 = call %struct.resource* @platform_get_resource(%struct.platform_device* %116, i32 %117, i32 0)
  store %struct.resource* %118, %struct.resource** %5, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.resource*, %struct.resource** %5, align 8
  %122 = call i32 @devm_ioremap_resource(i32* %120, %struct.resource* %121)
  %123 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %124 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %123, i32 0, i32 14
  store i32 %122, i32* %124, align 4
  %125 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %126 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %125, i32 0, i32 14
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @IS_ERR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %111
  %131 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %132 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PTR_ERR(i32 %133)
  store i32 %134, i32* %2, align 4
  br label %331

135:                                              ; preds = %111
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @devm_clk_get(i32* %137, i32* null)
  %139 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %140 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %139, i32 0, i32 13
  store i32 %138, i32* %140, align 8
  %141 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %142 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @IS_ERR(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %135
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %151 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @PTR_ERR(i32 %152)
  store i32 %153, i32* %2, align 4
  br label %331

154:                                              ; preds = %135
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 @devm_reset_control_get(i32* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %158 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %159 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %158, i32 0, i32 12
  store i32 %157, i32* %159, align 4
  %160 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %161 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @IS_ERR(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_err(i32* %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %170 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @PTR_ERR(i32 %171)
  store i32 %172, i32* %2, align 4
  br label %331

173:                                              ; preds = %154
  %174 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %175 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @KBC_MAX_DEBOUNCE_CNT, align 4
  %178 = call i32 @min(i32 %176, i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @KBC_ROW_SCAN_TIME, align 4
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %179, %180
  %182 = load i32, i32* %7, align 4
  %183 = mul i32 %181, %182
  store i32 %183, i32* %9, align 4
  %184 = load i64, i64* @KBC_ROW_SCAN_DLY, align 8
  %185 = load i32, i32* %9, align 4
  %186 = zext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %189 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %193 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %192, i32 0, i32 9
  store i64 %191, i64* %193, align 8
  %194 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %195 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* @KBC_CYCLE_MS, align 4
  %198 = call i64 @DIV_ROUND_UP(i64 %196, i32 %197)
  %199 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %200 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %199, i32 0, i32 9
  store i64 %198, i64* %200, align 8
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %205 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %204, i32 0, i32 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 5
  store i32 %203, i32* %207, align 4
  %208 = load i32, i32* @BUS_HOST, align 4
  %209 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %210 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %209, i32 0, i32 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i32 %208, i32* %213, align 8
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %217 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %216, i32 0, i32 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store i32* %215, i32** %220, align 8
  %221 = load i32, i32* @tegra_kbc_open, align 4
  %222 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %223 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %222, i32 0, i32 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  store i32 %221, i32* %225, align 8
  %226 = load i32, i32* @tegra_kbc_close, align 4
  %227 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %228 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %227, i32 0, i32 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  store i32 %226, i32* %230, align 4
  %231 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %232 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %173
  %236 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %237 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %236, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %10, align 4
  %242 = mul i32 %241, 2
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %240, %235, %173
  %244 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %245 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %244, i32 0, i32 7
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %249 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %248, i32 0, i32 6
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %254 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %257 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %256, i32 0, i32 4
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = call i32 @matrix_keypad_build_keymap(i64 %246, i32* null, i32 %247, i32 %252, i32 %255, %struct.TYPE_12__* %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %243
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = call i32 @dev_err(i32* %264, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %2, align 4
  br label %331

267:                                              ; preds = %243
  %268 = load i32, i32* @EV_REP, align 4
  %269 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %270 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %269, i32 0, i32 4
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @__set_bit(i32 %268, i32 %273)
  %275 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %276 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %275, i32 0, i32 4
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = load i32, i32* @EV_MSC, align 4
  %279 = load i32, i32* @MSC_SCAN, align 4
  %280 = call i32 @input_set_capability(%struct.TYPE_12__* %277, i32 %278, i32 %279)
  %281 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %282 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %281, i32 0, i32 4
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %285 = call i32 @input_set_drvdata(%struct.TYPE_12__* %283, %struct.tegra_kbc* %284)
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %289 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* @tegra_kbc_isr, align 4
  %292 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %293 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %297 = call i32 @devm_request_irq(i32* %287, i64 %290, i32 %291, i32 %292, i32 %295, %struct.tegra_kbc* %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %267
  %301 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %302 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %301, i32 0, i32 0
  %303 = call i32 @dev_err(i32* %302, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %304 = load i32, i32* %6, align 4
  store i32 %304, i32* %2, align 4
  br label %331

305:                                              ; preds = %267
  %306 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %307 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @disable_irq(i64 %308)
  %310 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %311 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %310, i32 0, i32 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %311, align 8
  %313 = call i32 @input_register_device(%struct.TYPE_12__* %312)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %305
  %317 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %318 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %317, i32 0, i32 0
  %319 = call i32 @dev_err(i32* %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %320 = load i32, i32* %6, align 4
  store i32 %320, i32* %2, align 4
  br label %331

321:                                              ; preds = %305
  %322 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %323 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %324 = call i32 @platform_set_drvdata(%struct.platform_device* %322, %struct.tegra_kbc* %323)
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %325, i32 0, i32 0
  %327 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %328 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @device_init_wakeup(i32* %326, i32 %329)
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %321, %316, %300, %262, %165, %146, %130, %105, %92, %80, %74, %22
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.tegra_kbc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tegra_kbc_parse_dt(%struct.tegra_kbc*) #1

declare dso_local i32 @tegra_kbc_check_pin_cfg(%struct.tegra_kbc*, i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_12__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @devm_reset_control_get(i32*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(i64, i32*, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_12__*, %struct.tegra_kbc*) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.tegra_kbc*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_kbc*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
