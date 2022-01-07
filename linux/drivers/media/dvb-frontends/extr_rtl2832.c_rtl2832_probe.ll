; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_range_cfg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_10__, %struct.i2c_adapter* }
%struct.TYPE_10__ = type { %struct.rtl2832_platform_data* }
%struct.rtl2832_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rtl2832_dev = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_9__*, %struct.TYPE_8__, i32, %struct.rtl2832_platform_data*, %struct.i2c_client* }
%struct.TYPE_7__ = type { %struct.rtl2832_dev*, i32 }
%struct.TYPE_9__ = type { %struct.rtl2832_dev* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.regmap_range_cfg*, i32 }

@rtl2832_probe.regmap_range_cfg = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { i32 0, i32 255, i32 256, i32 0, i32 1280, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtl2832_i2c_gate_work = common dso_local global i32 0, align 4
@rtl2832_volatile_reg = common dso_local global i32 0, align 4
@REGCACHE_NONE = common dso_local global i32 0, align 4
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@rtl2832_select = common dso_local global i32 0, align 4
@rtl2832_deselect = common dso_local global i32 0, align 4
@rtl2832_ops = common dso_local global i32 0, align 4
@rtl2832_get_dvb_frontend = common dso_local global i32 0, align 4
@rtl2832_get_i2c_adapter = common dso_local global i32 0, align 4
@rtl2832_slave_ts_ctrl = common dso_local global i32 0, align 4
@rtl2832_pid_filter = common dso_local global i32 0, align 4
@rtl2832_pid_filter_ctrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Realtek RTL2832 successfully attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rtl2832_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rtl2832_platform_data*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.rtl2832_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %13, align 8
  store %struct.rtl2832_platform_data* %14, %struct.rtl2832_platform_data** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %16, align 8
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %7, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.rtl2832_dev* @kzalloc(i32 96, i32 %21)
  store %struct.rtl2832_dev* %22, %struct.rtl2832_dev** %8, align 8
  %23 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %24 = icmp eq %struct.rtl2832_dev* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %165

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.rtl2832_dev* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %34 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %33, i32 0, i32 7
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %37, align 8
  %39 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %40 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %39, i32 0, i32 6
  store %struct.rtl2832_platform_data* %38, %struct.rtl2832_platform_data** %40, align 8
  %41 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %42 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %44 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %43, i32 0, i32 5
  %45 = load i32, i32* @rtl2832_i2c_gate_work, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %48 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 8, i32* %49, align 8
  %50 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %51 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 8, i32* %52, align 4
  %53 = load i32, i32* @rtl2832_volatile_reg, align 4
  %54 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %55 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %58 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 1280, i32* %59, align 8
  %60 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %61 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store %struct.regmap_range_cfg* getelementptr inbounds ([1 x %struct.regmap_range_cfg], [1 x %struct.regmap_range_cfg]* @rtl2832_probe.regmap_range_cfg, i64 0, i64 0), %struct.regmap_range_cfg** %62, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.regmap_range_cfg* getelementptr inbounds ([1 x %struct.regmap_range_cfg], [1 x %struct.regmap_range_cfg]* @rtl2832_probe.regmap_range_cfg, i64 0, i64 0))
  %64 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %65 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @REGCACHE_NONE, align 4
  %68 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %69 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %73 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %72, i32 0, i32 4
  %74 = call i32 @regmap_init_i2c(%struct.i2c_client* %71, %struct.TYPE_8__* %73)
  %75 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %76 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %78 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %28
  %83 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %84 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %9, align 4
  br label %162

87:                                               ; preds = %28
  %88 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %89 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @regmap_bulk_read(i32 %90, i32 0, i32* %10, i32 1)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %157

95:                                               ; preds = %87
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %97 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %98 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %97, i32 0, i32 0
  %99 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %100 = load i32, i32* @rtl2832_select, align 4
  %101 = load i32, i32* @rtl2832_deselect, align 4
  %102 = call %struct.TYPE_9__* @i2c_mux_alloc(%struct.i2c_adapter* %96, i32* %98, i32 1, i32 0, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %104 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %103, i32 0, i32 3
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %104, align 8
  %105 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %106 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %105, i32 0, i32 3
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = icmp ne %struct.TYPE_9__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %95
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %157

112:                                              ; preds = %95
  %113 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %114 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %115 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %114, i32 0, i32 3
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store %struct.rtl2832_dev* %113, %struct.rtl2832_dev** %117, align 8
  %118 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %119 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %118, i32 0, i32 3
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call i32 @i2c_mux_add_adapter(%struct.TYPE_9__* %120, i32 0, i32 0, i32 0)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %157

125:                                              ; preds = %112
  %126 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %127 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = call i32 @memcpy(i32* %128, i32* @rtl2832_ops, i32 4)
  %130 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %131 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %132 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store %struct.rtl2832_dev* %130, %struct.rtl2832_dev** %133, align 8
  %134 = load i32, i32* @rtl2832_get_dvb_frontend, align 4
  %135 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %6, align 8
  %136 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @rtl2832_get_i2c_adapter, align 4
  %138 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %6, align 8
  %139 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @rtl2832_slave_ts_ctrl, align 4
  %141 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %6, align 8
  %142 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @rtl2832_pid_filter, align 4
  %144 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %6, align 8
  %145 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @rtl2832_pid_filter_ctrl, align 4
  %147 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %6, align 8
  %148 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %150 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %6, align 8
  %153 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = call i32 @dev_info(%struct.TYPE_10__* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %171

157:                                              ; preds = %124, %109, %94
  %158 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %159 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @regmap_exit(i32 %160)
  br label %162

162:                                              ; preds = %157, %82
  %163 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %8, align 8
  %164 = call i32 @kfree(%struct.rtl2832_dev* %163)
  br label %165

165:                                              ; preds = %162, %25
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load i32, i32* %9, align 4
  %169 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %165, %125
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.rtl2832_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rtl2832_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.regmap_range_cfg*) #1

declare dso_local i32 @regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @i2c_mux_alloc(%struct.i2c_adapter*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @kfree(%struct.rtl2832_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
