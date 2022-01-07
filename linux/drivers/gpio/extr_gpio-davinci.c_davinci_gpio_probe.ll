; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-davinci.c_davinci_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-davinci.c_davinci_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.davinci_gpio_platform_data* }
%struct.davinci_gpio_platform_data = type { i32, i32, i32, i64 }
%struct.davinci_gpio_controller = type { i32*, %struct.TYPE_2__, i64*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, %struct.device*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"No platform data found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"How many GPIOs?\0A\00", align 1
@ARCH_NR_GPIOS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_base = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"IRQ not populated, err = %d\0A\00", align 1
@davinci_direction_in = common dso_local global i32 0, align 4
@davinci_gpio_get = common dso_local global i32 0, align 4
@davinci_direction_out = common dso_local global i32 0, align 4
@davinci_gpio_set = common dso_local global i32 0, align 4
@offset_array = common dso_local global i64* null, align 8
@gpiochip_generic_free = common dso_local global i32 0, align 4
@gpiochip_generic_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.davinci_gpio_controller*, align 8
  %11 = alloca %struct.davinci_gpio_platform_data*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %12, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call %struct.davinci_gpio_platform_data* @davinci_gpio_get_pdata(%struct.platform_device* %15)
  store %struct.davinci_gpio_platform_data* %16, %struct.davinci_gpio_platform_data** %11, align 8
  %17 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %18 = icmp ne %struct.davinci_gpio_platform_data* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %12, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %220

24:                                               ; preds = %1
  %25 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %26 = load %struct.device*, %struct.device** %12, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 1
  store %struct.davinci_gpio_platform_data* %25, %struct.davinci_gpio_platform_data** %27, align 8
  %28 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %29 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %12, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %220

38:                                               ; preds = %24
  %39 = load i32, i32* @ARCH_NR_GPIOS, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ARCH_NR_GPIOS, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %49 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %54 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @DIV_ROUND_UP(i32 %57, i32 16)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.device*, %struct.device** %12, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.davinci_gpio_controller* @devm_kzalloc(%struct.device* %60, i32 80, i32 %61)
  store %struct.davinci_gpio_controller* %62, %struct.davinci_gpio_controller** %10, align 8
  %63 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %64 = icmp ne %struct.davinci_gpio_controller* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %220

68:                                               ; preds = %59
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %69, i32 0)
  store i64 %70, i64* @gpio_base, align 8
  %71 = load i64, i64* @gpio_base, align 8
  %72 = call i64 @IS_ERR(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i64, i64* @gpio_base, align 8
  %76 = call i32 @PTR_ERR(i64 %75)
  store i32 %76, i32* %2, align 4
  br label %220

77:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %130, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %78
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @platform_get_irq(%struct.platform_device* %83, i32 %84)
  %86 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %87 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %93 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %82
  %101 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %102 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @EPROBE_DEFER, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %100
  %112 = load %struct.device*, %struct.device** %12, align 8
  %113 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %114 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_info(%struct.device* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %111, %100
  %122 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %123 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %2, align 4
  br label %220

129:                                              ; preds = %82
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %78

133:                                              ; preds = %78
  %134 = load %struct.device*, %struct.device** %12, align 8
  %135 = call i32 @dev_name(%struct.device* %134)
  %136 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %137 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 11
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* @davinci_direction_in, align 4
  %140 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %141 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 10
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @davinci_gpio_get, align 4
  %144 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %145 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 9
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* @davinci_direction_out, align 4
  %148 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %149 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 8
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @davinci_gpio_set, align 4
  %152 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %153 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 7
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %157 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %160 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %133
  %164 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %11, align 8
  %165 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  br label %168

167:                                              ; preds = %133
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i32 [ %166, %163 ], [ -1, %167 ]
  %170 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %171 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %174 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %173, i32 0, i32 3
  %175 = call i32 @spin_lock_init(i32* %174)
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @DIV_ROUND_UP(i32 %176, i32 32)
  store i32 %177, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %196, %168
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %178
  %183 = load i64, i64* @gpio_base, align 8
  %184 = load i64*, i64** @offset_array, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %183, %188
  %190 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %191 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %190, i32 0, i32 2
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %189, i64* %195, align 8
  br label %196

196:                                              ; preds = %182
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %4, align 4
  br label %178

199:                                              ; preds = %178
  %200 = load %struct.device*, %struct.device** %12, align 8
  %201 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %202 = getelementptr inbounds %struct.davinci_gpio_controller, %struct.davinci_gpio_controller* %201, i32 0, i32 1
  %203 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %204 = call i32 @devm_gpiochip_add_data(%struct.device* %200, %struct.TYPE_2__* %202, %struct.davinci_gpio_controller* %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %2, align 4
  br label %220

209:                                              ; preds = %199
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = load %struct.davinci_gpio_controller*, %struct.davinci_gpio_controller** %10, align 8
  %212 = call i32 @platform_set_drvdata(%struct.platform_device* %210, %struct.davinci_gpio_controller* %211)
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = call i32 @davinci_gpio_irq_setup(%struct.platform_device* %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %2, align 4
  br label %220

219:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %219, %217, %207, %121, %74, %65, %33, %19
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.davinci_gpio_platform_data* @davinci_gpio_get_pdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.davinci_gpio_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.davinci_gpio_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.davinci_gpio_controller*) #1

declare dso_local i32 @davinci_gpio_irq_setup(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
