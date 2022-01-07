; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-nic78bx.c_nic78bx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-nic78bx.c_nic78bx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.nic78bx_led_data* }
%struct.nic78bx_led_data = type { i64, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"missing IO resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIC78BX_USER_LED_IO_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"IO region too small\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get IO region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@nic78bx_leds = common dso_local global %struct.TYPE_3__* null, align 8
@NIC78BX_UNLOCK_VALUE = common dso_local global i32 0, align 4
@NIC78BX_LOCK_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nic78bx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic78bx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nic78bx_led_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nic78bx_led_data* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.nic78bx_led_data* %13, %struct.nic78bx_led_data** %5, align 8
  %14 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %15 = icmp ne %struct.nic78bx_led_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %22 = getelementptr inbounds %struct.nic78bx_led_data, %struct.nic78bx_led_data* %21, i32 0, i32 2
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.nic78bx_led_data* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_IO, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %106

36:                                               ; preds = %19
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = call i64 @resource_size(%struct.resource* %37)
  %39 = load i64, i64* @NIC78BX_USER_LED_IO_SIZE, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %106

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = call i64 @resource_size(%struct.resource* %51)
  %53 = load i32, i32* @KBUILD_MODNAME, align 4
  %54 = call i32 @devm_request_region(%struct.device* %47, i64 %50, i64 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %46
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %66 = getelementptr inbounds %struct.nic78bx_led_data, %struct.nic78bx_led_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %68 = getelementptr inbounds %struct.nic78bx_led_data, %struct.nic78bx_led_data* %67, i32 0, i32 1
  %69 = call i32 @spin_lock_init(i32* %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %94, %61
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nic78bx_leds, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nic78bx_leds, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store %struct.nic78bx_led_data* %76, %struct.nic78bx_led_data** %81, align 8
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nic78bx_leds, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = call i32 @devm_led_classdev_register(%struct.device* %82, i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %106

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load i32, i32* @NIC78BX_UNLOCK_VALUE, align 4
  %99 = load %struct.nic78bx_led_data*, %struct.nic78bx_led_data** %5, align 8
  %100 = getelementptr inbounds %struct.nic78bx_led_data, %struct.nic78bx_led_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NIC78BX_LOCK_REG_OFFSET, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 %98, i64 %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %97, %91, %56, %41, %31, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.nic78bx_led_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nic78bx_led_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, i32*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
