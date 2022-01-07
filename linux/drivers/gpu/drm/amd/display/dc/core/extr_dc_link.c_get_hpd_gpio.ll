; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_hpd_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_hpd_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32 }
%struct.dc_bios = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dc_bios*, i32, %struct.graphics_object_hpd_info*)*, i32 (%struct.dc_bios*, i32, %struct.gpio_pin_info*)* }
%struct.graphics_object_hpd_info = type { i32 }
%struct.gpio_pin_info = type { i32, i32 }
%struct.gpio_service = type { i32 }
%struct.graphics_object_id = type { i32 }

@BP_RESULT_OK = common dso_local global i64 0, align 8
@BP_RESULT_NORECORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio* @get_hpd_gpio(%struct.dc_bios* %0, i32 %1, %struct.gpio_service* %2) #0 {
  %4 = alloca %struct.gpio*, align 8
  %5 = alloca %struct.graphics_object_id, align 4
  %6 = alloca %struct.dc_bios*, align 8
  %7 = alloca %struct.gpio_service*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.graphics_object_hpd_info, align 4
  %10 = alloca %struct.gpio_pin_info, align 4
  %11 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %6, align 8
  store %struct.gpio_service* %2, %struct.gpio_service** %7, align 8
  %12 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %13 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.dc_bios*, i32, %struct.graphics_object_hpd_info*)*, i64 (%struct.dc_bios*, i32, %struct.graphics_object_hpd_info*)** %15, align 8
  %17 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %18 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 %16(%struct.dc_bios* %17, i32 %19, %struct.graphics_object_hpd_info* %9)
  %21 = load i64, i64* @BP_RESULT_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.gpio* null, %struct.gpio** %4, align 8
  br label %51

24:                                               ; preds = %3
  %25 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %26 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (%struct.dc_bios*, i32, %struct.gpio_pin_info*)*, i32 (%struct.dc_bios*, i32, %struct.gpio_pin_info*)** %28, align 8
  %30 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %31 = getelementptr inbounds %struct.graphics_object_hpd_info, %struct.graphics_object_hpd_info* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(%struct.dc_bios* %30, i32 %32, %struct.gpio_pin_info* %10)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @BP_RESULT_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @BP_RESULT_NORECORD, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  store %struct.gpio* null, %struct.gpio** %4, align 8
  br label %51

44:                                               ; preds = %24
  %45 = load %struct.gpio_service*, %struct.gpio_service** %7, align 8
  %46 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.gpio* @dal_gpio_service_create_irq(%struct.gpio_service* %45, i32 %47, i32 %49)
  store %struct.gpio* %50, %struct.gpio** %4, align 8
  br label %51

51:                                               ; preds = %44, %38, %23
  %52 = load %struct.gpio*, %struct.gpio** %4, align 8
  ret %struct.gpio* %52
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.gpio* @dal_gpio_service_create_irq(%struct.gpio_service*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
