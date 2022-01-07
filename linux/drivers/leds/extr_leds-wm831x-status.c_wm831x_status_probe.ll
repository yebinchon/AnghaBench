; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_pdata = type { i64* }
%struct.wm831x_status_pdata = type { i32, i32, i32 }
%struct.wm831x_status = type { i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.wm831x* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No register resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WM831X_LED_MODE_MASK = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@WM831X_STATUS_PRESERVE = common dso_local global i32 0, align 4
@WM831X_LED_SRC_MASK = common dso_local global i32 0, align 4
@WM831X_LED_SRC_SHIFT = common dso_local global i32 0, align 4
@wm831x_status_brightness_set = common dso_local global i32 0, align 4
@wm831x_status_blink_set = common dso_local global i32 0, align 4
@wm831x_status_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register LED: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_status_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_status_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_status_pdata, align 4
  %7 = alloca %struct.wm831x_status*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm831x* @dev_get_drvdata(i32 %14)
  store %struct.wm831x* %15, %struct.wm831x** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %20 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i64* %21)
  %23 = srem i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_REG, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.resource*, %struct.resource** %8, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %185

35:                                               ; preds = %1
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.wm831x_status* @devm_kzalloc(%struct.TYPE_6__* %37, i32 56, i32 %38)
  store %struct.wm831x_status* %39, %struct.wm831x_status** %7, align 8
  %40 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %41 = icmp ne %struct.wm831x_status* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %185

45:                                               ; preds = %35
  %46 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %47 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %48 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %47, i32 0, i32 7
  store %struct.wm831x* %46, %struct.wm831x** %48, align 8
  %49 = load %struct.resource*, %struct.resource** %8, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %53 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %55 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %56)
  %58 = icmp ne %struct.wm831x_pdata* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %61 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %62)
  store %struct.wm831x_pdata* %63, %struct.wm831x_pdata** %5, align 8
  br label %65

64:                                               ; preds = %45
  store %struct.wm831x_pdata* null, %struct.wm831x_pdata** %5, align 8
  br label %65

65:                                               ; preds = %64, %59
  %66 = call i32 @memset(%struct.wm831x_status_pdata* %6, i32 0, i32 12)
  %67 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %68 = icmp ne %struct.wm831x_pdata* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %71 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %80 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @memcpy(%struct.wm831x_status_pdata* %6, i64 %85, i32 12)
  br label %92

87:                                               ; preds = %69, %65
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = call i32 @dev_name(%struct.TYPE_6__* %89)
  %91 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %78
  %93 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %94 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %93, i32 0, i32 6
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %97 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %96, i32 0, i32 5
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %100 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %101 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @wm831x_reg_read(%struct.wm831x* %99, i32 %102)
  %104 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %105 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %107 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @WM831X_LED_MODE_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %92
  %113 = load i32, i32* @LED_FULL, align 4
  %114 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %115 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %120

116:                                              ; preds = %92
  %117 = load i32, i32* @LED_OFF, align 4
  %118 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %119 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @WM831X_STATUS_PRESERVE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %127 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %130 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @WM831X_LED_SRC_MASK, align 4
  %132 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %133 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @WM831X_LED_SRC_SHIFT, align 4
  %137 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %138 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %147

141:                                              ; preds = %120
  %142 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %146 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %125
  %148 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %151 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %156 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @wm831x_status_brightness_set, align 4
  %159 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %160 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @wm831x_status_blink_set, align 4
  %163 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %164 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @wm831x_status_groups, align 4
  %167 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %168 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %171 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %174 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %173, i32 0, i32 2
  %175 = call i32 @devm_led_classdev_register(i32 %172, %struct.TYPE_5__* %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %147
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 1
  %181 = load i32, i32* %10, align 4
  %182 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %2, align 4
  br label %185

184:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %178, %42, %29
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.wm831x_status* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @memset(%struct.wm831x_status_pdata*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.wm831x_status_pdata*, i64, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
