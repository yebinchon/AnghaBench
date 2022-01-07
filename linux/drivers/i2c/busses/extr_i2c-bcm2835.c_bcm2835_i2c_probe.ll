; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.bcm2835_i2c_dev = type { i32, %struct.i2c_adapter, %struct.clk*, i32, %struct.TYPE_11__* }
%struct.i2c_adapter = type { i32, %struct.TYPE_10__, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not register clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not read clock-frequency property\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not set clock frequency\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Couldn't prepare clock\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"No IRQ resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@bcm2835_i2c_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"bcm2835 (%s)\00", align 1
@bcm2835_i2c_algo = common dso_local global i32 0, align 4
@BCM2835_I2C_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm2835_i2c_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bcm2835_i2c_dev* @devm_kzalloc(%struct.TYPE_11__* %13, i32 80, i32 %14)
  store %struct.bcm2835_i2c_dev* %15, %struct.bcm2835_i2c_dev** %4, align 8
  %16 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %17 = icmp ne %struct.bcm2835_i2c_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %210

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.bcm2835_i2c_dev* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %27, i32 0, i32 4
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %30 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %29, i32 0, i32 3
  %31 = call i32 @init_completion(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_11__* %36, %struct.resource* %37)
  %39 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %40 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %39, i32 0, i32 2
  store %struct.clk* %38, %struct.clk** %40, align 8
  %41 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %42 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %41, i32 0, i32 2
  %43 = load %struct.clk*, %struct.clk** %42, align 8
  %44 = call i64 @IS_ERR(%struct.clk* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %21
  %47 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %48 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %47, i32 0, i32 2
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.clk* %49)
  store i32 %50, i32* %2, align 4
  br label %210

51:                                               ; preds = %21
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call %struct.clk* @devm_clk_get(%struct.TYPE_11__* %53, i32* null)
  store %struct.clk* %54, %struct.clk** %10, align 8
  %55 = load %struct.clk*, %struct.clk** %10, align 8
  %56 = call i64 @IS_ERR(%struct.clk* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.clk*, %struct.clk** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.clk* %59)
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(%struct.TYPE_11__* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.clk*, %struct.clk** %10, align 8
  %70 = call i32 @PTR_ERR(%struct.clk* %69)
  store i32 %70, i32* %2, align 4
  br label %210

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.clk*, %struct.clk** %10, align 8
  %75 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %76 = call %struct.clk* @bcm2835_i2c_register_div(%struct.TYPE_11__* %73, %struct.clk* %74, %struct.bcm2835_i2c_dev* %75)
  store %struct.clk* %76, %struct.clk** %9, align 8
  %77 = load %struct.clk*, %struct.clk** %9, align 8
  %78 = call i64 @IS_ERR(%struct.clk* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.clk*, %struct.clk** %9, align 8
  %85 = call i32 @PTR_ERR(%struct.clk* %84)
  store i32 %85, i32* %2, align 4
  br label %210

86:                                               ; preds = %71
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @of_property_read_u32(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_warn(%struct.TYPE_11__* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 100000, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %86
  %99 = load %struct.clk*, %struct.clk** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @clk_set_rate_exclusive(%struct.clk* %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(%struct.TYPE_11__* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %210

109:                                              ; preds = %98
  %110 = load %struct.clk*, %struct.clk** %9, align 8
  %111 = call i32 @clk_prepare_enable(%struct.clk* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.TYPE_11__* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %210

119:                                              ; preds = %109
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = load i32, i32* @IORESOURCE_IRQ, align 4
  %122 = call %struct.resource* @platform_get_resource(%struct.platform_device* %120, i32 %121, i32 0)
  store %struct.resource* %122, %struct.resource** %6, align 8
  %123 = load %struct.resource*, %struct.resource** %6, align 8
  %124 = icmp ne %struct.resource* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @dev_err(%struct.TYPE_11__* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %210

131:                                              ; preds = %119
  %132 = load %struct.resource*, %struct.resource** %6, align 8
  %133 = getelementptr inbounds %struct.resource, %struct.resource* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %136 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %138 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @bcm2835_i2c_isr, align 4
  %141 = load i32, i32* @IRQF_SHARED, align 4
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_name(%struct.TYPE_11__* %143)
  %145 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %146 = call i32 @request_irq(i32 %139, i32 %140, i32 %141, i32 %144, %struct.bcm2835_i2c_dev* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %131
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_err(%struct.TYPE_11__* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %210

155:                                              ; preds = %131
  %156 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %157 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %156, i32 0, i32 1
  store %struct.i2c_adapter* %157, %struct.i2c_adapter** %8, align 8
  %158 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %159 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %160 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %158, %struct.bcm2835_i2c_dev* %159)
  %161 = load i32, i32* @THIS_MODULE, align 4
  %162 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %163 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %165 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %166 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %168 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @of_node_full_name(i32 %173)
  %175 = call i32 @snprintf(i32 %169, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %174)
  %176 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %177 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %176, i32 0, i32 2
  store i32* @bcm2835_i2c_algo, i32** %177, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %181 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %182, align 8
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %188 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 8
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 @of_device_get_match_data(%struct.TYPE_11__* %191)
  %193 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %194 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %196 = load i32, i32* @BCM2835_I2C_C, align 4
  %197 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %195, i32 %196, i32 0)
  %198 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %199 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %155
  %203 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %204 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %4, align 8
  %207 = call i32 @free_irq(i32 %205, %struct.bcm2835_i2c_dev* %206)
  br label %208

208:                                              ; preds = %202, %155
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %149, %125, %114, %104, %80, %68, %46, %18
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.bcm2835_i2c_dev* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.clk* @bcm2835_i2c_register_div(%struct.TYPE_11__*, %struct.clk*, %struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @clk_set_rate_exclusive(%struct.clk*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @of_node_full_name(i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev*, i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.bcm2835_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
