; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.resource = type { i32 }
%struct.jz4780_i2c = type { i32, i32, %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.jz4780_i2c*, i32*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@jz4780_i2c_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"clock-frequency not specified in DT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"clock-frequency minimum is 1000\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Bus frequency is %d KHz\0A\00", align 1
@JZ4780_I2C_CTRL = common dso_local global i32 0, align 4
@JZ4780_I2C_CTRL_STPHLD = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM = common dso_local global i32 0, align 4
@jz4780_i2c_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4780_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.jz4780_i2c*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.jz4780_i2c* @devm_kzalloc(%struct.TYPE_12__* %10, i32 72, i32 %11)
  store %struct.jz4780_i2c* %12, %struct.jz4780_i2c** %8, align 8
  %13 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %14 = icmp ne %struct.jz4780_i2c* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %194

18:                                               ; preds = %1
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %21 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 8
  %23 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %24 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  store i32* @jz4780_i2c_algorithm, i32** %25, align 8
  %26 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %27 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %28 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  store %struct.jz4780_i2c* %26, %struct.jz4780_i2c** %29, align 8
  %30 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %31 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i32 5, i32* %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %36 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %44 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %48 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @sprintf(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %56 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %55, i32 0, i32 6
  %57 = call i32 @init_completion(i32* %56)
  %58 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %59 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %58, i32 0, i32 5
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = call %struct.resource* @platform_get_resource(%struct.platform_device* %61, i32 %62, i32 0)
  store %struct.resource* %63, %struct.resource** %7, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 1
  %66 = load %struct.resource*, %struct.resource** %7, align 8
  %67 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %65, %struct.resource* %66)
  %68 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %69 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %71 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %18
  %76 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %77 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %194

80:                                               ; preds = %18
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %81, %struct.jz4780_i2c* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 1
  %86 = call i32 @devm_clk_get(%struct.TYPE_12__* %85, i32* null)
  %87 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %88 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %90 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %96 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %194

99:                                               ; preds = %80
  %100 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %101 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_prepare_enable(i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %194

108:                                              ; preds = %99
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @of_property_read_u32(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 1
  %119 = call i32 @dev_err(%struct.TYPE_12__* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %188

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = udiv i32 %121, 1000
  %123 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %124 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %126 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %120
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 1
  %134 = call i32 @dev_err(%struct.TYPE_12__* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %188

135:                                              ; preds = %120
  %136 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %137 = call i32 @jz4780_i2c_set_speed(%struct.jz4780_i2c* %136)
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 1
  %140 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %141 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dev_info(%struct.TYPE_12__* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %145 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %146 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %144, i32 %145)
  store i16 %146, i16* %6, align 2
  %147 = load i16, i16* @JZ4780_I2C_CTRL_STPHLD, align 2
  %148 = zext i16 %147 to i32
  %149 = xor i32 %148, -1
  %150 = load i16, i16* %6, align 2
  %151 = zext i16 %150 to i32
  %152 = and i32 %151, %149
  %153 = trunc i32 %152 to i16
  store i16 %153, i16* %6, align 2
  %154 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %155 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %156 = load i16, i16* %6, align 2
  %157 = zext i16 %156 to i32
  %158 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %154, i32 %155, i32 %157)
  %159 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %160 = load i32, i32* @JZ4780_I2C_INTM, align 4
  %161 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %159, i32 %160, i32 0)
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = call i32 @platform_get_irq(%struct.platform_device* %162, i32 0)
  %164 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %165 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 1
  %168 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %169 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @jz4780_i2c_irq, align 4
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 1
  %174 = call i32 @dev_name(%struct.TYPE_12__* %173)
  %175 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %176 = call i32 @devm_request_irq(%struct.TYPE_12__* %167, i32 %170, i32 %171, i32 0, i32 %174, %struct.jz4780_i2c* %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %135
  br label %188

180:                                              ; preds = %135
  %181 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %182 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %181, i32 0, i32 2
  %183 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %182)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %188

187:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %194

188:                                              ; preds = %186, %179, %129, %116
  %189 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %8, align 8
  %190 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @clk_disable_unprepare(i32 %191)
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %188, %187, %106, %94, %75, %15
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.jz4780_i2c* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz4780_i2c*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @jz4780_i2c_set_speed(%struct.jz4780_i2c*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.jz4780_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
