; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_lookup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_lookup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_gpio_rec = type { i32, i64, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.atom_context* }
%struct.atom_context = type { i32 }
%struct._ATOM_GPIO_PIN_LUT = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@GPIO_Pin_LUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_lookup_gpio(%struct.amdgpu_gpio_rec* noalias sret %0, %struct.amdgpu_device* %1, i64 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._ATOM_GPIO_PIN_LUT*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %1, %struct.amdgpu_device** %4, align 8
  store i64 %2, i64* %5, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  store %struct.atom_context* %17, %struct.atom_context** %6, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = load i32, i32* @GPIO_Pin_LUT, align 4
  %20 = call i32 @GetIndexIntoMasterTable(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = call i32 @memset(%struct.amdgpu_gpio_rec* %0, i32 0, i32 32)
  %22 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %0, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @amdgpu_atom_parse_data_header(%struct.atom_context* %23, i32 %24, i32* %11, i32* null, i32* null, i32* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %3
  %28 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %29 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct._ATOM_GPIO_PIN_LUT*
  store %struct._ATOM_GPIO_PIN_LUT* %34, %struct._ATOM_GPIO_PIN_LUT** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = udiv i64 %37, 16
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct._ATOM_GPIO_PIN_LUT*, %struct._ATOM_GPIO_PIN_LUT** %8, align 8
  %41 = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, %struct._ATOM_GPIO_PIN_LUT* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %78, %27
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %0, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %0, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %0, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %0, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.amdgpu_gpio_rec, %struct.amdgpu_gpio_rec* %0, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %81

73:                                               ; preds = %47
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = bitcast %struct.TYPE_4__* %74 to i64*
  %76 = getelementptr inbounds i64, i64* %75, i64 16
  %77 = bitcast i64* %76 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %9, align 8
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %43

81:                                               ; preds = %53, %43
  br label %82

82:                                               ; preds = %81, %3
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.amdgpu_gpio_rec*, i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
