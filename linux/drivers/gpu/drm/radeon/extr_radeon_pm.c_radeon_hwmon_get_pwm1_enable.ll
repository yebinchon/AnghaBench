; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_hwmon_get_pwm1_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_hwmon_get_pwm1_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.radeon_device*)* }

@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@FDO_PWM_MODE_STATIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @radeon_hwmon_get_pwm1_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_hwmon_get_pwm1_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.radeon_device* @dev_get_drvdata(%struct.device* %9)
  store %struct.radeon_device* %10, %struct.radeon_device** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64 (%struct.radeon_device*)*, i64 (%struct.radeon_device*)** %15, align 8
  %17 = icmp ne i64 (%struct.radeon_device*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.radeon_device*)*, i64 (%struct.radeon_device*)** %23, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %26 = call i64 %24(%struct.radeon_device* %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @FDO_PWM_MODE_STATIC, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 2
  %34 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret i32 %34
}

declare dso_local %struct.radeon_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
