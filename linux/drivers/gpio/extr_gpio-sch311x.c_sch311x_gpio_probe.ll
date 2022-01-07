; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.sch311x_pdev_data = type { i64 }
%struct.sch311x_gpio_priv = type { %struct.sch311x_gpio_block* }
%struct.sch311x_gpio_block = type { %struct.TYPE_5__, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GP1 = common dso_local global i64 0, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to request region 0x%04x-0x%04x.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sch311x_gpio_request = common dso_local global i32 0, align 4
@sch311x_gpio_free = common dso_local global i32 0, align 4
@sch311x_gpio_direction_in = common dso_local global i32 0, align 4
@sch311x_gpio_direction_out = common dso_local global i32 0, align 4
@sch311x_gpio_get_direction = common dso_local global i32 0, align 4
@sch311x_gpio_set_config = common dso_local global i32 0, align 4
@sch311x_gpio_get = common dso_local global i32 0, align 4
@sch311x_gpio_set = common dso_local global i32 0, align 4
@sch311x_gpio_blocks = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"SMSC SCH311x GPIO block %d registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch311x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch311x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sch311x_pdev_data*, align 8
  %5 = alloca %struct.sch311x_gpio_priv*, align 8
  %6 = alloca %struct.sch311x_gpio_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.sch311x_pdev_data* @dev_get_platdata(i32* %10)
  store %struct.sch311x_pdev_data* %11, %struct.sch311x_pdev_data** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.sch311x_pdev_data*, %struct.sch311x_pdev_data** %4, align 8
  %15 = getelementptr inbounds %struct.sch311x_pdev_data, %struct.sch311x_pdev_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GP1, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @DRV_NAME, align 4
  %20 = call i32 @devm_request_region(i32* %13, i64 %18, i32 6, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.sch311x_pdev_data*, %struct.sch311x_pdev_data** %4, align 8
  %26 = getelementptr inbounds %struct.sch311x_pdev_data, %struct.sch311x_pdev_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GP1, align 8
  %29 = add nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.sch311x_pdev_data*, %struct.sch311x_pdev_data** %4, align 8
  %32 = getelementptr inbounds %struct.sch311x_pdev_data, %struct.sch311x_pdev_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GP1, align 8
  %35 = add nsw i64 %33, %34
  %36 = add nsw i64 %35, 5
  %37 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %36)
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %189

40:                                               ; preds = %1
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.sch311x_gpio_priv* @devm_kzalloc(i32* %42, i32 8, i32 %43)
  store %struct.sch311x_gpio_priv* %44, %struct.sch311x_gpio_priv** %5, align 8
  %45 = load %struct.sch311x_gpio_priv*, %struct.sch311x_gpio_priv** %5, align 8
  %46 = icmp ne %struct.sch311x_gpio_priv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %189

50:                                               ; preds = %40
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.sch311x_gpio_priv*, %struct.sch311x_gpio_priv** %5, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.sch311x_gpio_priv* %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %165, %50
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.sch311x_gpio_priv*, %struct.sch311x_gpio_priv** %5, align 8
  %57 = getelementptr inbounds %struct.sch311x_gpio_priv, %struct.sch311x_gpio_priv* %56, i32 0, i32 0
  %58 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %57, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.sch311x_gpio_block* %58)
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %168

61:                                               ; preds = %54
  %62 = load %struct.sch311x_gpio_priv*, %struct.sch311x_gpio_priv** %5, align 8
  %63 = getelementptr inbounds %struct.sch311x_gpio_priv, %struct.sch311x_gpio_priv* %62, i32 0, i32 0
  %64 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %64, i64 %66
  store %struct.sch311x_gpio_block* %67, %struct.sch311x_gpio_block** %6, align 8
  %68 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %69 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %68, i32 0, i32 4
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load i32, i32* @DRV_NAME, align 4
  %72 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %73 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 12
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %77 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 11
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @sch311x_gpio_request, align 4
  %80 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %81 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 10
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @sch311x_gpio_free, align 4
  %84 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %85 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 9
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @sch311x_gpio_direction_in, align 4
  %88 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %89 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 8
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @sch311x_gpio_direction_out, align 4
  %92 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %93 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 7
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @sch311x_gpio_get_direction, align 4
  %96 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %97 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @sch311x_gpio_set_config, align 4
  %100 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %101 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @sch311x_gpio_get, align 4
  %104 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %105 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @sch311x_gpio_set, align 4
  %108 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %109 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %112 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 8, i32* %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %117 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store i32* %115, i32** %118, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sch311x_gpio_blocks, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %126 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sch311x_gpio_blocks, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %135 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sch311x_gpio_blocks, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %143 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.sch311x_pdev_data*, %struct.sch311x_pdev_data** %4, align 8
  %145 = getelementptr inbounds %struct.sch311x_pdev_data, %struct.sch311x_pdev_data* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %148 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %150 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %149, i32 0, i32 0
  %151 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %152 = call i32 @gpiochip_add_data(%struct.TYPE_5__* %150, %struct.sch311x_gpio_block* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %61
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %169

160:                                              ; preds = %61
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @dev_info(i32* %162, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %54

168:                                              ; preds = %54
  store i32 0, i32* %2, align 4
  br label %189

169:                                              ; preds = %155
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %184, %169
  %173 = load i32, i32* %8, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load %struct.sch311x_gpio_priv*, %struct.sch311x_gpio_priv** %5, align 8
  %177 = getelementptr inbounds %struct.sch311x_gpio_priv, %struct.sch311x_gpio_priv* %176, i32 0, i32 0
  %178 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %178, i64 %180
  %182 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %181, i32 0, i32 0
  %183 = call i32 @gpiochip_remove(%struct.TYPE_5__* %182)
  br label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %8, align 4
  br label %172

187:                                              ; preds = %172
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %168, %47, %22
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.sch311x_pdev_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @devm_request_region(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local %struct.sch311x_gpio_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sch311x_gpio_priv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sch311x_gpio_block*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_5__*, %struct.sch311x_gpio_block*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
