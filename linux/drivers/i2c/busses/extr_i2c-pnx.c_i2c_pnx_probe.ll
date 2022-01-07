; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_i2c_pnx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_i2c_pnx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.i2c_pnx_algo_data = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i32, %struct.i2c_pnx_algo_data*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.resource = type { i32 }

@I2C_PNX_SPEED_KHZ_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pnx_algorithm = common dso_local global i32 0, align 4
@I2C_PNX_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@i2c_pnx_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@mcntrl_reset = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to get IRQ from platform resource\0A\00", align 1
@i2c_pnx_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Master at %#8x, irq %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_pnx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pnx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_pnx_algo_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @I2C_PNX_SPEED_KHZ_DEFAULT, align 4
  %11 = mul nsw i32 %10, 1000
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.i2c_pnx_algo_data* @devm_kzalloc(%struct.TYPE_13__* %14, i32 72, i32 %15)
  store %struct.i2c_pnx_algo_data* %16, %struct.i2c_pnx_algo_data** %6, align 8
  %17 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %18 = icmp ne %struct.i2c_pnx_algo_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %199

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.i2c_pnx_algo_data* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %31, align 8
  %32 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  store i32* @pnx_algorithm, i32** %34, align 8
  %35 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %36 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  store %struct.i2c_pnx_algo_data* %35, %struct.i2c_pnx_algo_data** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @I2C_PNX_TIMEOUT_DEFAULT, align 4
  %46 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = call i32 @devm_clk_get(%struct.TYPE_13__* %49, i32* null)
  %51 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %22
  %59 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %199

63:                                               ; preds = %22
  %64 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* @i2c_pnx_timeout, align 4
  %68 = call i32 @timer_setup(i32* %66, i32 %67, i32 0)
  %69 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %70 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @snprintf(i32 %72, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = call %struct.resource* @platform_get_resource(%struct.platform_device* %77, i32 %78, i32 0)
  store %struct.resource* %79, %struct.resource** %8, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 1
  %82 = load %struct.resource*, %struct.resource** %8, align 8
  %83 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %81, %struct.resource* %82)
  %84 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %87 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %63
  %92 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %93 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %199

96:                                               ; preds = %63
  %97 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %98 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clk_prepare_enable(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %199

105:                                              ; preds = %96
  %106 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %107 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @clk_get_rate(i32 %108)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = udiv i64 %110, %111
  %113 = udiv i64 %112, 2
  %114 = sub i64 %113, 2
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp ugt i64 %115, 1023
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i64 1023, i64* %4, align 8
  br label %118

118:                                              ; preds = %117, %105
  %119 = load i64, i64* %4, align 8
  %120 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %121 = call i32 @I2C_REG_CKH(%struct.i2c_pnx_algo_data* %120)
  %122 = call i32 @iowrite32(i64 %119, i32 %121)
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %125 = call i32 @I2C_REG_CKL(%struct.i2c_pnx_algo_data* %124)
  %126 = call i32 @iowrite32(i64 %123, i32 %125)
  %127 = load i64, i64* @mcntrl_reset, align 8
  %128 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %129 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %128)
  %130 = call i32 @iowrite32(i64 %127, i32 %129)
  %131 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %132 = call i64 @wait_reset(%struct.i2c_pnx_algo_data* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %118
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %193

137:                                              ; preds = %118
  %138 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %139 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = call i32 @init_completion(i32* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @platform_get_irq(%struct.platform_device* %142, i32 0)
  %144 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %145 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %147 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %137
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 1
  %153 = call i32 @dev_err(%struct.TYPE_13__* %152, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %155 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %5, align 4
  br label %193

157:                                              ; preds = %137
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 1
  %160 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %161 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @i2c_pnx_interrupt, align 4
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %168 = call i32 @devm_request_irq(%struct.TYPE_13__* %159, i32 %162, i32 %163, i32 0, i8* %166, %struct.i2c_pnx_algo_data* %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %193

172:                                              ; preds = %157
  %173 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %174 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %173, i32 0, i32 2
  %175 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_12__* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %193

179:                                              ; preds = %172
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 1
  %182 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %183 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.resource*, %struct.resource** %8, align 8
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %190 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @dev_dbg(%struct.TYPE_13__* %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %188, i32 %191)
  store i32 0, i32* %2, align 4
  br label %199

193:                                              ; preds = %178, %171, %150, %134
  %194 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  %195 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @clk_disable_unprepare(i32 %196)
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %193, %179, %103, %91, %58, %19
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.i2c_pnx_algo_data* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @iowrite32(i64, i32) #1

declare dso_local i32 @I2C_REG_CKH(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @I2C_REG_CKL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i64 @wait_reset(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i8*, %struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
