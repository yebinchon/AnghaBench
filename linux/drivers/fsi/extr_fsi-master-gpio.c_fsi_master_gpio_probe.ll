; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsi_master_gpio = type { %struct.TYPE_4__, i32, i32, i32, i32, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fsi_master_gpio_release = common dso_local global i32 0, align 4
@LAST_ADDR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get clock gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get data gpio\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get trans gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to get enable gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"failed to get mux gpio\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"no-gpio-delays\00", align 1
@FSI_SEND_DELAY_CLOCKS = common dso_local global i32 0, align 4
@FSI_ECHO_DELAY_CLOCKS = common dso_local global i32 0, align 4
@FSI_MASTER_FLAG_SWCLOCK = common dso_local global i32 0, align 4
@fsi_master_gpio_read = common dso_local global i32 0, align 4
@fsi_master_gpio_write = common dso_local global i32 0, align 4
@fsi_master_gpio_term = common dso_local global i32 0, align 4
@fsi_master_gpio_break = common dso_local global i32 0, align 4
@fsi_master_gpio_link_enable = common dso_local global i32 0, align 4
@fsi_master_gpio_link_config = common dso_local global i32 0, align 4
@dev_attr_external_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsi_master_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsi_master_gpio*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.fsi_master_gpio* @kzalloc(i32 128, i32 %7)
  store %struct.fsi_master_gpio* %8, %struct.fsi_master_gpio** %4, align 8
  %9 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %10 = icmp ne %struct.fsi_master_gpio* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %199

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %18 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %17, i32 0, i32 11
  store i32* %16, i32** %18, align 8
  %19 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %20 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32* %21, i32** %25, align 8
  %26 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %26, i32 0, i32 11
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dev_of_node(i32* %28)
  %30 = call i32 @of_node_get(i32 %29)
  %31 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %32 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @fsi_master_gpio_release, align 4
  %36 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %37 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* @LAST_ADDR_INVALID, align 4
  %41 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %42 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call %struct.gpio_desc* @devm_gpiod_get(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.gpio_desc* %45, %struct.gpio_desc** %5, align 8
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %47 = call i64 @IS_ERR(%struct.gpio_desc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %14
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %54 = call i32 @PTR_ERR(%struct.gpio_desc* %53)
  store i32 %54, i32* %6, align 4
  br label %195

55:                                               ; preds = %14
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %57 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %58 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %57, i32 0, i32 9
  store %struct.gpio_desc* %56, %struct.gpio_desc** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call %struct.gpio_desc* @devm_gpiod_get(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.gpio_desc* %61, %struct.gpio_desc** %5, align 8
  %62 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %63 = call i64 @IS_ERR(%struct.gpio_desc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %70 = call i32 @PTR_ERR(%struct.gpio_desc* %69)
  store i32 %70, i32* %6, align 4
  br label %195

71:                                               ; preds = %55
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %73 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %74 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %73, i32 0, i32 8
  store %struct.gpio_desc* %72, %struct.gpio_desc** %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.gpio_desc* %77, %struct.gpio_desc** %5, align 8
  %78 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %79 = call i64 @IS_ERR(%struct.gpio_desc* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %86 = call i32 @PTR_ERR(%struct.gpio_desc* %85)
  store i32 %86, i32* %6, align 4
  br label %195

87:                                               ; preds = %71
  %88 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %89 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %90 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %89, i32 0, i32 7
  store %struct.gpio_desc* %88, %struct.gpio_desc** %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.gpio_desc* %93, %struct.gpio_desc** %5, align 8
  %94 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %95 = call i64 @IS_ERR(%struct.gpio_desc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %101 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %102 = call i32 @PTR_ERR(%struct.gpio_desc* %101)
  store i32 %102, i32* %6, align 4
  br label %195

103:                                              ; preds = %87
  %104 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %105 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %106 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %105, i32 0, i32 6
  store %struct.gpio_desc* %104, %struct.gpio_desc** %106, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.gpio_desc* %109, %struct.gpio_desc** %5, align 8
  %110 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %111 = call i64 @IS_ERR(%struct.gpio_desc* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %117 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %118 = call i32 @PTR_ERR(%struct.gpio_desc* %117)
  store i32 %118, i32* %6, align 4
  br label %195

119:                                              ; preds = %103
  %120 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %121 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %122 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %121, i32 0, i32 5
  store %struct.gpio_desc* %120, %struct.gpio_desc** %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @device_property_present(i32* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %126 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %127 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @FSI_SEND_DELAY_CLOCKS, align 4
  %129 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %130 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @FSI_ECHO_DELAY_CLOCKS, align 4
  %132 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %133 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %135 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* @FSI_MASTER_FLAG_SWCLOCK, align 4
  %138 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %139 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 8
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* @fsi_master_gpio_read, align 4
  %142 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %143 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 7
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* @fsi_master_gpio_write, align 4
  %146 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %147 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* @fsi_master_gpio_term, align 4
  %150 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %151 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @fsi_master_gpio_break, align 4
  %154 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %155 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 8
  %157 = load i32, i32* @fsi_master_gpio_link_enable, align 4
  %158 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %159 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* @fsi_master_gpio_link_config, align 4
  %162 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %163 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %167 = call i32 @platform_set_drvdata(%struct.platform_device* %165, %struct.fsi_master_gpio* %166)
  %168 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %169 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %168, i32 0, i32 1
  %170 = call i32 @mutex_init(i32* %169)
  %171 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %172 = call i32 @fsi_master_gpio_init(%struct.fsi_master_gpio* %171)
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @device_create_file(i32* %174, i32* @dev_attr_external_mode)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %119
  br label %195

179:                                              ; preds = %119
  %180 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %181 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %180, i32 0, i32 0
  %182 = call i32 @fsi_master_register(%struct.TYPE_4__* %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @device_remove_file(i32* %187, i32* @dev_attr_external_mode)
  %189 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %190 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = call i32 @put_device(%struct.TYPE_3__* %191)
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %199

194:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %199

195:                                              ; preds = %178, %113, %97, %81, %65, %49
  %196 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %197 = call i32 @kfree(%struct.fsi_master_gpio* %196)
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %194, %185, %11
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.fsi_master_gpio* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @dev_of_node(i32*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @device_property_present(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fsi_master_gpio*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fsi_master_gpio_init(%struct.fsi_master_gpio*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @fsi_master_register(%struct.TYPE_4__*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.fsi_master_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
