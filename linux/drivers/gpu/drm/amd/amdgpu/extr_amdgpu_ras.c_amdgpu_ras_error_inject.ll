; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_error_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_error_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.ras_inject_if = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ras_manager = type { i32 }
%struct.ta_ras_trigger_error_input = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s error injection is not supported yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"RAS ERROR: inject %s error failed ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_error_inject(%struct.amdgpu_device* %0, %struct.ras_inject_if* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_inject_if*, align 8
  %6 = alloca %struct.ras_manager*, align 8
  %7 = alloca %struct.ta_ras_trigger_error_input, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_inject_if* %1, %struct.ras_inject_if** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %11 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %10, i32 0, i32 0
  %12 = call %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %9, %struct.TYPE_6__* %11)
  store %struct.ras_manager* %12, %struct.ras_manager** %6, align 8
  %13 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %7, i32 0, i32 0
  %14 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %15 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %7, i32 0, i32 1
  %18 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %19 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %7, i32 0, i32 2
  %22 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %23 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %7, i32 0, i32 3
  %27 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %28 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @amdgpu_ras_error_to_ta(i32 %30)
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %7, i32 0, i32 4
  %33 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %34 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @amdgpu_ras_block_to_ta(i32 %36)
  store i32 %37, i32* %32, align 4
  store i32 0, i32* %8, align 4
  %38 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %39 = icmp ne %struct.ras_manager* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %2
  %44 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %45 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %76 [
    i32 130, label %48
    i32 128, label %72
    i32 129, label %72
  ]

48:                                               ; preds = %43
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)**
  %55 = load i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)*, i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)** %54, align 8
  %56 = icmp ne i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)**
  %64 = load i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)*, i32 (%struct.amdgpu_device*, %struct.ras_inject_if*)** %63, align 8
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %67 = call i32 %64(%struct.amdgpu_device* %65, %struct.ras_inject_if* %66)
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %48
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %57
  br label %85

72:                                               ; preds = %43, %43
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = call i32 @psp_ras_trigger_error(i32* %74, %struct.ta_ras_trigger_error_input* %7)
  store i32 %75, i32* %8, align 4
  br label %85

76:                                               ; preds = %43
  %77 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %78 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ras_block_str(i32 %80)
  %82 = call i32 @DRM_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %76, %72, %71
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.ras_inject_if*, %struct.ras_inject_if** %5, align 8
  %90 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ras_block_str(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %85
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %40
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @amdgpu_ras_error_to_ta(i32) #1

declare dso_local i32 @amdgpu_ras_block_to_ta(i32) #1

declare dso_local i32 @psp_ras_trigger_error(i32*, %struct.ta_ras_trigger_error_input*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @ras_block_str(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
