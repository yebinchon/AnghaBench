; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.st_i2c_dev = type { %struct.TYPE_10__*, i32, %struct.i2c_adapter, i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32, i32, %struct.TYPE_9__, i32*, i32*, i64, i32 }
%struct.TYPE_9__ = type { %struct.device_node*, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IRQ missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ssc\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to request clock\0A\00", align 1
@I2C_MODE_STANDARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@I2C_MODE_FAST = common dso_local global i32 0, align 4
@st_i2c_isr_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to request irq %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ST I2C(%pa)\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@st_i2c_algo = common dso_local global i32 0, align 4
@st_i2c_recovery_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"%s initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st_i2c_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.st_i2c_dev* @devm_kzalloc(%struct.TYPE_10__* %15, i32 88, i32 %16)
  store %struct.st_i2c_dev* %17, %struct.st_i2c_dev** %5, align 8
  %18 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %19 = icmp ne %struct.st_i2c_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %191

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %28, %struct.resource* %29)
  %31 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %32 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %34 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %40 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %191

43:                                               ; preds = %23
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i32 @irq_of_parse_and_map(%struct.device_node* %44, i32 0)
  %46 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %47 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %49 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %191

58:                                               ; preds = %43
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @of_clk_get_by_name(%struct.device_node* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %62 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %64 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %73 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %191

76:                                               ; preds = %58
  %77 = load i32, i32* @I2C_MODE_STANDARD, align 4
  %78 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %79 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i32 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 400000
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @I2C_MODE_FAST, align 4
  %89 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %90 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %84, %76
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %95 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %94, i32 0, i32 0
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %95, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %99 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @st_i2c_isr_thread, align 4
  %102 = load i32, i32* @IRQF_ONESHOT, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %107 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %97, i32 %100, i32* null, i32 %101, i32 %102, i32 %105, %struct.st_i2c_dev* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %91
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %114 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %2, align 4
  br label %191

118:                                              ; preds = %91
  %119 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %120 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = call i32 @pinctrl_pm_select_default_state(%struct.TYPE_10__* %121)
  %123 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %124 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @pinctrl_pm_select_idle_state(%struct.TYPE_10__* %125)
  %127 = load %struct.device_node*, %struct.device_node** %4, align 8
  %128 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %129 = call i32 @st_i2c_of_get_deglitch(%struct.device_node* %127, %struct.st_i2c_dev* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %191

134:                                              ; preds = %118
  %135 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %136 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %135, i32 0, i32 2
  store %struct.i2c_adapter* %136, %struct.i2c_adapter** %8, align 8
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %138 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %139 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %137, %struct.st_i2c_dev* %138)
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.resource*, %struct.resource** %6, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 0
  %145 = call i32 @snprintf(i32 %142, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %144)
  %146 = load i32, i32* @THIS_MODULE, align 4
  %147 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %148 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @HZ, align 4
  %150 = mul nsw i32 2, %149
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %152 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %154 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %153, i32 0, i32 5
  store i64 0, i64* %154, align 8
  %155 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %156 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %155, i32 0, i32 4
  store i32* @st_i2c_algo, i32** %156, align 8
  %157 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %158 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %157, i32 0, i32 3
  store i32* @st_i2c_recovery_info, i32** %158, align 8
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %162 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  store %struct.TYPE_10__* %160, %struct.TYPE_10__** %163, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load %struct.device_node*, %struct.device_node** %166, align 8
  %168 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %169 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store %struct.device_node* %167, %struct.device_node** %170, align 8
  %171 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %172 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %171, i32 0, i32 1
  %173 = call i32 @init_completion(i32* %172)
  %174 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %175 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %134
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %2, align 4
  br label %191

180:                                              ; preds = %134
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %183 = call i32 @platform_set_drvdata(%struct.platform_device* %181, %struct.st_i2c_dev* %182)
  %184 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %185 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %188 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dev_info(%struct.TYPE_10__* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %180, %178, %132, %110, %68, %52, %38, %20
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.st_i2c_dev* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, %struct.st_i2c_dev*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.TYPE_10__*) #1

declare dso_local i32 @pinctrl_pm_select_idle_state(%struct.TYPE_10__*) #1

declare dso_local i32 @st_i2c_of_get_deglitch(%struct.device_node*, %struct.st_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.st_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.st_i2c_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
