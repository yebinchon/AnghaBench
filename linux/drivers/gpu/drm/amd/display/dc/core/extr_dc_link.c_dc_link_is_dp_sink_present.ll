; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_is_dp_sink_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_is_dp_sink_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, i32 }
%struct.ddc = type { i32 }

@CONNECTOR_ID_DISPLAY_PORT = common dso_local global i32 0, align 4
@CONNECTOR_ID_EDP = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i64 0, align 8
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_DDC_CONFIG_TYPE_MODE_I2C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_is_dp_sink_present(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ddc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %11 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dal_graphics_object_id_get_connector_id(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @CONNECTOR_ID_DISPLAY_PORT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @CONNECTOR_ID_EDP, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i1 [ true, %1 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ddc* @dal_ddc_service_get_ddc_pin(i32 %26)
  store %struct.ddc* %27, %struct.ddc** %7, align 8
  %28 = load %struct.ddc*, %struct.ddc** %7, align 8
  %29 = icmp ne %struct.ddc* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = call i32 (...) @BREAK_TO_DEBUGGER()
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %21
  %34 = load i64, i64* @GPIO_RESULT_OK, align 8
  %35 = load %struct.ddc*, %struct.ddc** %7, align 8
  %36 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %37 = load i32, i32* @GPIO_DDC_CONFIG_TYPE_MODE_I2C, align 4
  %38 = call i64 @dal_ddc_open(%struct.ddc* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 @dal_gpio_destroy_ddc(%struct.ddc** %7)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %80

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %61, %43
  %45 = load %struct.ddc*, %struct.ddc** %7, align 8
  %46 = getelementptr inbounds %struct.ddc, %struct.ddc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dal_gpio_get_value(i32 %47, i64* %5)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @GPIO_RESULT_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 @udelay(i32 1000)
  br label %60

59:                                               ; preds = %44
  br label %65

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  %64 = icmp slt i64 %62, 3
  br i1 %64, label %44, label %65

65:                                               ; preds = %61, %59
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* @GPIO_RESULT_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i1 [ false, %65 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.ddc*, %struct.ddc** %7, align 8
  %78 = call i32 @dal_ddc_close(%struct.ddc* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %40, %30
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @dal_graphics_object_id_get_connector_id(i32) #1

declare dso_local %struct.ddc* @dal_ddc_service_get_ddc_pin(i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @dal_ddc_open(%struct.ddc*, i32, i32) #1

declare dso_local i32 @dal_gpio_destroy_ddc(%struct.ddc**) #1

declare dso_local i32 @dal_gpio_get_value(i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dal_ddc_close(%struct.ddc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
