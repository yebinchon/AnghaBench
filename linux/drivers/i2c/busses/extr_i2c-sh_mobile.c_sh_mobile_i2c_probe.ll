; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sh_mobile_i2c_data = type { i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.resource*, %struct.TYPE_12__*, i32 }
%struct.i2c_adapter = type { i32, i32, i32, %struct.TYPE_11__, i32*, i32*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.resource = type { i32 }
%struct.sh_mobile_dt_config = type { i32, i32 (%struct.sh_mobile_i2c_data*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@STANDARD_MODE = common dso_local global i32 0, align 4
@IIC_FLAG_HAS_ICIC67 = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sh_mobile_i2c_algorithm = common dso_local global i32 0, align 4
@sh_mobile_i2c_quirks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"I2C adapter %d, bus speed %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_mobile_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_mobile_i2c_data*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.sh_mobile_dt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sh_mobile_i2c_data* @devm_kzalloc(%struct.TYPE_12__* %11, i32 120, i32 %12)
  store %struct.sh_mobile_i2c_data* %13, %struct.sh_mobile_i2c_data** %4, align 8
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %15 = icmp ne %struct.sh_mobile_i2c_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %216

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @devm_clk_get(%struct.TYPE_12__* %21, i32* null)
  %23 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %24 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %23, i32 0, i32 13
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %26 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %35 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %216

38:                                               ; preds = %19
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %41 = call i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device* %39, %struct.sh_mobile_i2c_data* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %216

46:                                               ; preds = %38
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %50 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %49, i32 0, i32 12
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.sh_mobile_i2c_data* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 0)
  store %struct.resource* %56, %struct.resource** %6, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %59 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %58, i32 0, i32 11
  store %struct.resource* %57, %struct.resource** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %61, %struct.resource* %62)
  %64 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %65 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %46
  %72 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %73 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %216

76:                                               ; preds = %46
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @of_property_read_u32(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* @STANDARD_MODE, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %94 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %96 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = call i32 @resource_size(%struct.resource* %97)
  %99 = icmp sgt i32 %98, 23
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load i32, i32* @IIC_FLAG_HAS_ICIC67, align 4
  %102 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %103 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %91
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @pm_runtime_enable(%struct.TYPE_12__* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @pm_runtime_get_sync(%struct.TYPE_12__* %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call %struct.sh_mobile_dt_config* @of_device_get_match_data(%struct.TYPE_12__* %114)
  store %struct.sh_mobile_dt_config* %115, %struct.sh_mobile_dt_config** %7, align 8
  %116 = load %struct.sh_mobile_dt_config*, %struct.sh_mobile_dt_config** %7, align 8
  %117 = icmp ne %struct.sh_mobile_dt_config* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %106
  %119 = load %struct.sh_mobile_dt_config*, %struct.sh_mobile_dt_config** %7, align 8
  %120 = getelementptr inbounds %struct.sh_mobile_dt_config, %struct.sh_mobile_dt_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %123 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.sh_mobile_dt_config*, %struct.sh_mobile_dt_config** %7, align 8
  %125 = getelementptr inbounds %struct.sh_mobile_dt_config, %struct.sh_mobile_dt_config* %124, i32 0, i32 1
  %126 = load i32 (%struct.sh_mobile_i2c_data*)*, i32 (%struct.sh_mobile_i2c_data*)** %125, align 8
  %127 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %128 = call i32 %126(%struct.sh_mobile_i2c_data* %127)
  store i32 %128, i32* %8, align 4
  br label %132

129:                                              ; preds = %106
  %130 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %131 = call i32 @sh_mobile_i2c_init(%struct.sh_mobile_i2c_data* %130)
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %129, %118
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @pm_runtime_put_sync(%struct.TYPE_12__* %134)
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %216

140:                                              ; preds = %132
  %141 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %142 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %141, i32 0, i32 8
  %143 = call i32 @sg_init_table(i32* %142, i32 1)
  %144 = load i32, i32* @DMA_NONE, align 4
  %145 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %146 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @EPROBE_DEFER, align 4
  %148 = sub nsw i32 0, %147
  %149 = call i32 @ERR_PTR(i32 %148)
  %150 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %151 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %153 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %152, i32 0, i32 6
  store i32 %149, i32* %153, align 4
  %154 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %155 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %154, i32 0, i32 4
  store %struct.i2c_adapter* %155, %struct.i2c_adapter** %5, align 8
  %156 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %157 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %158 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %156, %struct.sh_mobile_i2c_data* %157)
  %159 = load i32, i32* @THIS_MODULE, align 4
  %160 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %161 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %163 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %162, i32 0, i32 5
  store i32* @sh_mobile_i2c_algorithm, i32** %163, align 8
  %164 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %165 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %164, i32 0, i32 4
  store i32* @sh_mobile_i2c_quirks, i32** %165, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %169 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %170, align 8
  %171 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %172 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %171, i32 0, i32 0
  store i32 5, i32* %172, align 8
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %177 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %183 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %186 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @strlcpy(i32 %187, i32 %190, i32 4)
  %192 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %193 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %192, i32 0, i32 3
  %194 = call i32 @spin_lock_init(i32* %193)
  %195 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %196 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %195, i32 0, i32 2
  %197 = call i32 @init_waitqueue_head(i32* %196)
  %198 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %199 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %140
  %203 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %204 = call i32 @sh_mobile_i2c_release_dma(%struct.sh_mobile_i2c_data* %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %2, align 4
  br label %216

206:                                              ; preds = %140
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %210 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %213 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dev_info(%struct.TYPE_12__* %208, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %211, i32 %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %206, %202, %138, %71, %44, %30, %16
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.sh_mobile_i2c_data* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device*, %struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_mobile_i2c_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_12__*) #1

declare dso_local %struct.sh_mobile_dt_config* @of_device_get_match_data(%struct.TYPE_12__*) #1

declare dso_local i32 @sh_mobile_i2c_init(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @sh_mobile_i2c_release_dma(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
