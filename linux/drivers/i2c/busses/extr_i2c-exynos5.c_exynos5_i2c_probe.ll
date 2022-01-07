; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.exynos5_i2c = type { i32, i32, %struct.TYPE_12__, i32, i32, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.exynos5_i2c*, i32*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.device_node* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@HSI2C_FS_TX_CLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"exynos5-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@exynos5_i2c_algorithm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hsi2c\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot find HS-I2C IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@exynos5_i2c_irq = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"cannot request HS-I2C IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos5_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.exynos5_i2c*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.exynos5_i2c* @devm_kzalloc(%struct.TYPE_11__* %13, i32 88, i32 %14)
  store %struct.exynos5_i2c* %15, %struct.exynos5_i2c** %5, align 8
  %16 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %17 = icmp ne %struct.exynos5_i2c* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %188

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %24 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %23, i32 0, i32 8
  %25 = call i64 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @HSI2C_FS_TX_CLOCK, align 4
  %29 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %33 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlcpy(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %39 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  store i32* @exynos5_i2c_algorithm, i32** %43, align 8
  %44 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 3, i32* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %50 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %49, i32 0, i32 7
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @devm_clk_get(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %55 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %57 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %31
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %188

67:                                               ; preds = %31
  %68 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %69 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_prepare_enable(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %188

76:                                               ; preds = %67
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = call %struct.resource* @platform_get_resource(%struct.platform_device* %77, i32 %78, i32 0)
  store %struct.resource* %79, %struct.resource** %6, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %81, %struct.resource* %82)
  %84 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %85 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %87 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %93 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %7, align 4
  br label %182

96:                                               ; preds = %76
  %97 = load %struct.device_node*, %struct.device_node** %4, align 8
  %98 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %99 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store %struct.device_node* %97, %struct.device_node** %101, align 8
  %102 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %103 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %104 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store %struct.exynos5_i2c* %102, %struct.exynos5_i2c** %105, align 8
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %109 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %111, align 8
  %112 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %113 = call i32 @exynos5_i2c_clr_pend_irq(%struct.exynos5_i2c* %112)
  %114 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %115 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %114, i32 0, i32 5
  %116 = call i32 @spin_lock_init(i32* %115)
  %117 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %118 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %117, i32 0, i32 4
  %119 = call i32 @init_completion(i32* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @platform_get_irq(%struct.platform_device* %120, i32 0)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %123 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %96
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  br label %182

132:                                              ; preds = %96
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %136 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @exynos5_i2c_irq, align 4
  %139 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_name(%struct.TYPE_11__* %141)
  %143 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %144 = call i32 @devm_request_irq(%struct.TYPE_11__* %134, i32 %137, i32 %138, i32 %139, i32 %142, %struct.exynos5_i2c* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %132
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %151 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  br label %182

154:                                              ; preds = %132
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 @of_device_get_match_data(%struct.TYPE_11__* %156)
  %158 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %159 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %161 = call i32 @exynos5_hsi2c_clock_setup(%struct.exynos5_i2c* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %182

165:                                              ; preds = %154
  %166 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %167 = call i32 @exynos5_i2c_reset(%struct.exynos5_i2c* %166)
  %168 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %169 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %168, i32 0, i32 2
  %170 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %182

174:                                              ; preds = %165
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %177 = call i32 @platform_set_drvdata(%struct.platform_device* %175, %struct.exynos5_i2c* %176)
  %178 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %179 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @clk_disable(i32 %180)
  store i32 0, i32* %2, align 4
  br label %188

182:                                              ; preds = %173, %164, %147, %126, %91
  %183 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %5, align 8
  %184 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @clk_disable_unprepare(i32 %185)
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %182, %174, %74, %61, %18
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.exynos5_i2c* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @exynos5_i2c_clr_pend_irq(%struct.exynos5_i2c*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.exynos5_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i32 @exynos5_hsi2c_clock_setup(%struct.exynos5_i2c*) #1

declare dso_local i32 @exynos5_i2c_reset(%struct.exynos5_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos5_i2c*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
