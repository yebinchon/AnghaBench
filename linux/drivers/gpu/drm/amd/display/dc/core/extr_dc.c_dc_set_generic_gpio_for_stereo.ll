; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_set_generic_gpio_for_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_set_generic_gpio_for_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_service = type { i32 }
%struct.gpio_pin_info = type { i32, i32 }
%struct.gpio = type { i32 }
%struct.gpio_generic_mux_config = type { i32, i32 }

@GPIO_RESULT_NON_SPECIFIC_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GPIO_ID_GENERIC = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@GPIO_SIGNAL_SOURCE_PASS_THROUGH_STEREO_SYNC = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_set_generic_gpio_for_stereo(i32 %0, %struct.gpio_service* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_service*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_pin_info, align 4
  %8 = alloca %struct.gpio*, align 8
  %9 = alloca %struct.gpio_generic_mux_config*, align 8
  %10 = alloca %struct.gpio_pin_info, align 4
  store i32 %0, i32* %4, align 4
  store %struct.gpio_service* %1, %struct.gpio_service** %5, align 8
  %11 = load i32, i32* @GPIO_RESULT_NON_SPECIFIC_ERROR, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gpio_generic_mux_config* @kzalloc(i32 8, i32 %12)
  store %struct.gpio_generic_mux_config* %13, %struct.gpio_generic_mux_config** %9, align 8
  %14 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %15 = icmp ne %struct.gpio_generic_mux_config* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.gpio_service*, %struct.gpio_service** %5, align 8
  %19 = load i32, i32* @GPIO_ID_GENERIC, align 4
  %20 = call i64 @dal_gpio_get_generic_pin_info(%struct.gpio_service* %18, i32 %19, i32 0)
  %21 = bitcast %struct.gpio_pin_info* %10 to i64*
  store i64 %20, i64* %21, align 4
  %22 = bitcast %struct.gpio_pin_info* %7 to i8*
  %23 = bitcast %struct.gpio_pin_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %17
  %32 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %33 = call i32 @kfree(%struct.gpio_generic_mux_config* %32)
  store i32 0, i32* %3, align 4
  br label %80

34:                                               ; preds = %27
  %35 = load %struct.gpio_service*, %struct.gpio_service** %5, align 8
  %36 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.gpio* @dal_gpio_service_create_generic_mux(%struct.gpio_service* %35, i32 %37, i32 %39)
  store %struct.gpio* %40, %struct.gpio** %8, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load %struct.gpio*, %struct.gpio** %8, align 8
  %43 = icmp ne %struct.gpio* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %46 = call i32 @kfree(%struct.gpio_generic_mux_config* %45)
  store i32 0, i32* %3, align 4
  br label %80

47:                                               ; preds = %41
  %48 = load %struct.gpio*, %struct.gpio** %8, align 8
  %49 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %50 = call i32 @dal_gpio_open(%struct.gpio* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %53 = getelementptr inbounds %struct.gpio_generic_mux_config, %struct.gpio_generic_mux_config* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @GPIO_SIGNAL_SOURCE_PASS_THROUGH_STEREO_SYNC, align 4
  %55 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %56 = getelementptr inbounds %struct.gpio_generic_mux_config, %struct.gpio_generic_mux_config* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @GPIO_RESULT_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load %struct.gpio*, %struct.gpio** %8, align 8
  %62 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %63 = call i32 @dal_mux_setup_config(%struct.gpio* %61, %struct.gpio_generic_mux_config* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %47
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @GPIO_RESULT_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.gpio*, %struct.gpio** %8, align 8
  %70 = call i32 @dal_gpio_close(%struct.gpio* %69)
  %71 = call i32 @dal_gpio_destroy_generic_mux(%struct.gpio** %8)
  %72 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %73 = call i32 @kfree(%struct.gpio_generic_mux_config* %72)
  store i32 1, i32* %3, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.gpio*, %struct.gpio** %8, align 8
  %76 = call i32 @dal_gpio_close(%struct.gpio* %75)
  %77 = call i32 @dal_gpio_destroy_generic_mux(%struct.gpio** %8)
  %78 = load %struct.gpio_generic_mux_config*, %struct.gpio_generic_mux_config** %9, align 8
  %79 = call i32 @kfree(%struct.gpio_generic_mux_config* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %68, %44, %31, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.gpio_generic_mux_config* @kzalloc(i32, i32) #1

declare dso_local i64 @dal_gpio_get_generic_pin_info(%struct.gpio_service*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.gpio_generic_mux_config*) #1

declare dso_local %struct.gpio* @dal_gpio_service_create_generic_mux(%struct.gpio_service*, i32, i32) #1

declare dso_local i32 @dal_gpio_open(%struct.gpio*, i32) #1

declare dso_local i32 @dal_mux_setup_config(%struct.gpio*, %struct.gpio_generic_mux_config*) #1

declare dso_local i32 @dal_gpio_close(%struct.gpio*) #1

declare dso_local i32 @dal_gpio_destroy_generic_mux(%struct.gpio**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
