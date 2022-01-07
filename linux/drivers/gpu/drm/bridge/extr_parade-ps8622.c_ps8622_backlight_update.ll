; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_backlight_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_backlight_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.ps8622_bridge = type { i32, i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @ps8622_backlight_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps8622_backlight_update(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.ps8622_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 1
  %9 = call %struct.ps8622_bridge* @dev_get_drvdata(i32* %8)
  store %struct.ps8622_bridge* %9, %struct.ps8622_bridge** %4, align 8
  %10 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %11 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %15 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %26 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %4, align 8
  %33 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %31
  %40 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %4, align 8
  %41 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ps8622_set(i32 %42, i32 1, i32 167, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ps8622_bridge* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ps8622_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
