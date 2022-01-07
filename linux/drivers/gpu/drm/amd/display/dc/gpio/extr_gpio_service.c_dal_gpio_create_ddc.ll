; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_create_ddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_create_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc = type { i8*, i32, %struct.gpio_ddc_hw_info, i8* }
%struct.gpio_ddc_hw_info = type { i32 }
%struct.gpio_service = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32*, i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GPIO_ID_DDC_DATA = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT_STATE_DEFAULT = common dso_local global i32 0, align 4
@GPIO_ID_DDC_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ddc* @dal_gpio_create_ddc(%struct.gpio_service* %0, i32 %1, i32 %2, %struct.gpio_ddc_hw_info* %3) #0 {
  %5 = alloca %struct.ddc*, align 8
  %6 = alloca %struct.gpio_service*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_ddc_hw_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ddc*, align 8
  store %struct.gpio_service* %0, %struct.gpio_service** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gpio_ddc_hw_info* %3, %struct.gpio_ddc_hw_info** %9, align 8
  %13 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %14 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 %18(i32 %19, i32 %20, i32* %10, i32* %11)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.ddc* null, %struct.ddc** %5, align 8
  br label %78

24:                                               ; preds = %4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ddc* @kzalloc(i32 24, i32 %25)
  store %struct.ddc* %26, %struct.ddc** %12, align 8
  %27 = load %struct.ddc*, %struct.ddc** %12, align 8
  %28 = icmp ne %struct.ddc* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.ddc* null, %struct.ddc** %5, align 8
  br label %78

31:                                               ; preds = %24
  %32 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %33 = load i32, i32* @GPIO_ID_DDC_DATA, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @GPIO_PIN_OUTPUT_STATE_DEFAULT, align 4
  %36 = call i8* @dal_gpio_create(%struct.gpio_service* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ddc*, %struct.ddc** %12, align 8
  %38 = getelementptr inbounds %struct.ddc, %struct.ddc* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ddc*, %struct.ddc** %12, align 8
  %40 = getelementptr inbounds %struct.ddc, %struct.ddc* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %75

45:                                               ; preds = %31
  %46 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %47 = load i32, i32* @GPIO_ID_DDC_CLOCK, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @GPIO_PIN_OUTPUT_STATE_DEFAULT, align 4
  %50 = call i8* @dal_gpio_create(%struct.gpio_service* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.ddc*, %struct.ddc** %12, align 8
  %52 = getelementptr inbounds %struct.ddc, %struct.ddc* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ddc*, %struct.ddc** %12, align 8
  %54 = getelementptr inbounds %struct.ddc, %struct.ddc* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %71

59:                                               ; preds = %45
  %60 = load %struct.ddc*, %struct.ddc** %12, align 8
  %61 = getelementptr inbounds %struct.ddc, %struct.ddc* %60, i32 0, i32 2
  %62 = load %struct.gpio_ddc_hw_info*, %struct.gpio_ddc_hw_info** %9, align 8
  %63 = bitcast %struct.gpio_ddc_hw_info* %61 to i8*
  %64 = bitcast %struct.gpio_ddc_hw_info* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %66 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ddc*, %struct.ddc** %12, align 8
  %69 = getelementptr inbounds %struct.ddc, %struct.ddc* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ddc*, %struct.ddc** %12, align 8
  store %struct.ddc* %70, %struct.ddc** %5, align 8
  br label %78

71:                                               ; preds = %57
  %72 = load %struct.ddc*, %struct.ddc** %12, align 8
  %73 = getelementptr inbounds %struct.ddc, %struct.ddc* %72, i32 0, i32 0
  %74 = call i32 @dal_gpio_destroy(i8** %73)
  br label %75

75:                                               ; preds = %71, %43
  %76 = load %struct.ddc*, %struct.ddc** %12, align 8
  %77 = call i32 @kfree(%struct.ddc* %76)
  store %struct.ddc* null, %struct.ddc** %5, align 8
  br label %78

78:                                               ; preds = %75, %59, %29, %23
  %79 = load %struct.ddc*, %struct.ddc** %5, align 8
  ret %struct.ddc* %79
}

declare dso_local %struct.ddc* @kzalloc(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i8* @dal_gpio_create(%struct.gpio_service*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dal_gpio_destroy(i8**) #1

declare dso_local i32 @kfree(%struct.ddc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
