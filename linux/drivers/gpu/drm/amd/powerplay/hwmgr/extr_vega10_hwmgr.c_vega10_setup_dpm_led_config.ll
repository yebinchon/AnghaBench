; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_setup_dpm_led_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_setup_dpm_led_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pp_atomfwctrl_voltage_table = type { i32 }

@VOLTAGE_TYPE_LEDDPM = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_GPIO_LUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_setup_dpm_led_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_setup_dpm_led_config(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.pp_atomfwctrl_voltage_table, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %12, align 8
  store %struct.vega10_hwmgr* %13, %struct.vega10_hwmgr** %3, align 8
  %14 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = load i32, i32* @VOLTAGE_TYPE_LEDDPM, align 4
  %19 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %20 = call i64 @pp_atomfwctrl_get_voltage_table_v4(%struct.pp_hwmgr* %17, i32 %18, i32 %19, %struct.pp_atomfwctrl_voltage_table* %5)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, %struct.pp_atomfwctrl_voltage_table* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %48, %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 8, %35
  %37 = shl i32 %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %51

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %43, %26
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  ret i32 0
}

declare dso_local i64 @pp_atomfwctrl_get_voltage_table_v4(%struct.pp_hwmgr*, i32, i32, %struct.pp_atomfwctrl_voltage_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
