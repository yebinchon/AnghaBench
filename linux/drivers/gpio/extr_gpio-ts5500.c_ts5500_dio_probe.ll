; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_dio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_dio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ts5500_priv = type { i8*, %struct.TYPE_4__, i32, i8* }
%struct.TYPE_4__ = type { i8*, i32, i8*, i32, i32, i32, i32, i32, %struct.device*, i32 }
%struct.resource = type { i8* }
%struct.TYPE_3__ = type { i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"missing IRQ resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ts5500_gpio_input = common dso_local global i32 0, align 4
@ts5500_gpio_output = common dso_local global i32 0, align 4
@ts5500_gpio_get = common dso_local global i32 0, align 4
@ts5500_gpio_set = common dso_local global i32 0, align 4
@ts5500_gpio_to_irq = common dso_local global i32 0, align 4
@ts5500_dio1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to request %s ports\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ts5500_dio2 = common dso_local global i8* null, align 8
@hex7d_reserved = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to request %s 7D\0A\00", align 1
@ts5500_lcd = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to register the gpio chip\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid interrupt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts5500_dio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts5500_dio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ts5500_priv*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.TYPE_3__* @platform_get_device_id(%struct.platform_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i8* @dev_name(%struct.device* %17)
  store i8* %18, i8** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_IRQ, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %8, align 8
  %22 = load %struct.resource*, %struct.resource** %8, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %211

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ts5500_priv* @devm_kzalloc(%struct.device* %30, i32 88, i32 %31)
  store %struct.ts5500_priv* %32, %struct.ts5500_priv** %7, align 8
  %33 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %34 = icmp ne %struct.ts5500_priv* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %211

38:                                               ; preds = %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.ts5500_priv* %40)
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %46 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %48 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %52 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 9
  store i32 %50, i32* %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %56 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %60 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 8
  store %struct.device* %58, %struct.device** %61, align 8
  %62 = load i32, i32* @ts5500_gpio_input, align 4
  %63 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %64 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @ts5500_gpio_output, align 4
  %67 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %68 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @ts5500_gpio_get, align 4
  %71 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %72 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @ts5500_gpio_set, align 4
  %75 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %76 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @ts5500_gpio_to_irq, align 4
  %79 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %80 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %83 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 -1, i32* %84, align 8
  %85 = load i32, i32* %4, align 4
  switch i32 %85, label %186 [
    i32 131, label %86
    i32 130, label %106
    i32 129, label %141
    i32 128, label %141
  ]

86:                                               ; preds = %38
  %87 = load i8*, i8** @ts5500_dio1, align 8
  %88 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %89 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @ts5500_dio1, align 8
  %91 = call i8* @ARRAY_SIZE(i8* %90)
  %92 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %93 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @devm_request_region(%struct.device* %95, i32 122, i32 3, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %86
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %211

105:                                              ; preds = %86
  br label %186

106:                                              ; preds = %38
  %107 = load i8*, i8** @ts5500_dio2, align 8
  %108 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %109 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @ts5500_dio2, align 8
  %111 = call i8* @ARRAY_SIZE(i8* %110)
  %112 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %113 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @devm_request_region(%struct.device* %115, i32 126, i32 2, i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %106
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %211

125:                                              ; preds = %106
  %126 = load i32, i32* @hex7d_reserved, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %186

129:                                              ; preds = %125
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @devm_request_region(%struct.device* %130, i32 125, i32 1, i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* @EBUSY, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %211

140:                                              ; preds = %129
  store i32 1, i32* @hex7d_reserved, align 4
  br label %186

141:                                              ; preds = %38, %38
  %142 = load i8*, i8** @ts5500_lcd, align 8
  %143 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %144 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @ts5500_lcd, align 8
  %146 = call i8* @ARRAY_SIZE(i8* %145)
  %147 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %148 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i8* %146, i8** %149, align 8
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @devm_request_region(%struct.device* %150, i32 114, i32 2, i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %141
  %155 = load %struct.device*, %struct.device** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %156)
  %158 = load i32, i32* @EBUSY, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %211

160:                                              ; preds = %141
  %161 = load i32, i32* @hex7d_reserved, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %160
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @devm_request_region(%struct.device* %164, i32 125, i32 1, i8* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %170)
  %172 = load i32, i32* @EBUSY, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %211

174:                                              ; preds = %163
  store i32 1, i32* @hex7d_reserved, align 4
  br label %175

175:                                              ; preds = %174, %160
  %176 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %177 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %176, i32 0, i32 2
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @spin_lock_irqsave(i32* %177, i64 %178)
  %180 = call i32 @BIT(i32 4)
  %181 = call i32 @ts5500_clear_mask(i32 %180, i32 125)
  %182 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %183 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %182, i32 0, i32 2
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  br label %186

186:                                              ; preds = %38, %175, %140, %128, %105
  %187 = load %struct.device*, %struct.device** %5, align 8
  %188 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %189 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %188, i32 0, i32 1
  %190 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %191 = call i32 @devm_gpiochip_add_data(%struct.device* %187, %struct.TYPE_4__* %189, %struct.ts5500_priv* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load %struct.device*, %struct.device** %5, align 8
  %196 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %2, align 4
  br label %211

198:                                              ; preds = %186
  %199 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %200 = call i32 @ts5500_enable_irq(%struct.ts5500_priv* %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load %struct.device*, %struct.device** %5, align 8
  %205 = load %struct.ts5500_priv*, %struct.ts5500_priv** %7, align 8
  %206 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %204, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %207)
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %2, align 4
  br label %211

210:                                              ; preds = %198
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %210, %203, %194, %168, %154, %134, %119, %99, %35, %24
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_3__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ts5500_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ts5500_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_request_region(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ts5500_clear_mask(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, %struct.ts5500_priv*) #1

declare dso_local i32 @ts5500_enable_irq(%struct.ts5500_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
