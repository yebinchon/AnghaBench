; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_acpi_pcie_performance_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_acpi_pcie_performance_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__*, %struct.amdgpu_atcs }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_atcs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.acpi_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.atcs_pref_req_input = type { i32, i32, i32, i32, i32, i32 }
%struct.atcs_pref_req_output = type { i32 }
%struct.acpi_buffer = type { i32, %struct.atcs_pref_req_input* }

@EINVAL = common dso_local global i32 0, align 4
@ATCS_VALID_FLAGS_MASK = common dso_local global i32 0, align 4
@ATCS_WAIT_FOR_COMPLETION = common dso_local global i32 0, align 4
@ATCS_ADVERTISE_CAPS = common dso_local global i32 0, align 4
@ATCS_PCIE_LINK_SPEED = common dso_local global i32 0, align 4
@ATCS_FUNCTION_PCIE_PERFORMANCE_REQUEST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ATCS buffer is too small: %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_acpi_pcie_performance_request(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %struct.amdgpu_atcs*, align 8
  %11 = alloca %struct.atcs_pref_req_input, align 4
  %12 = alloca %struct.atcs_pref_req_output, align 4
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  store %struct.amdgpu_atcs* %17, %struct.amdgpu_atcs** %10, align 8
  store i32 3, i32* %15, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %19 = call i64 @amdgpu_acpi_pcie_notify_device_ready(%struct.amdgpu_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %131

24:                                               ; preds = %3
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = call i32 @ACPI_HANDLE(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %131

35:                                               ; preds = %24
  %36 = load %struct.amdgpu_atcs*, %struct.amdgpu_atcs** %10, align 8
  %37 = getelementptr inbounds %struct.amdgpu_atcs, %struct.amdgpu_atcs* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %131

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 0
  store i32 24, i32* %45, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %50, %58
  %60 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @ATCS_VALID_FLAGS_MASK, align 4
  %62 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 5
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @ATCS_WAIT_FOR_COMPLETION, align 4
  %64 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 4
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %44
  %68 = load i32, i32* @ATCS_ADVERTISE_CAPS, align 4
  %69 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %44
  %73 = load i32, i32* @ATCS_PCIE_LINK_SPEED, align 4
  %74 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i32 24, i32* %77, align 8
  %78 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store %struct.atcs_pref_req_input* %11, %struct.atcs_pref_req_input** %78, align 8
  br label %79

79:                                               ; preds = %129, %72
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %15, align 4
  %82 = icmp ne i32 %80, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ATCS_FUNCTION_PCIE_PERFORMANCE_REQUEST, align 4
  %86 = call %union.acpi_object* @amdgpu_atcs_call(i32 %84, i32 %85, %struct.acpi_buffer* %13)
  store %union.acpi_object* %86, %union.acpi_object** %9, align 8
  %87 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %88 = icmp ne %union.acpi_object* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %131

92:                                               ; preds = %83
  %93 = call i32 @memset(%struct.atcs_pref_req_output* %12, i32 0, i32 4)
  %94 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %95 = bitcast %union.acpi_object* %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp ult i64 %100, 3
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %106 = call i32 @kfree(%union.acpi_object* %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %131

109:                                              ; preds = %92
  %110 = load i64, i64* %14, align 8
  %111 = call i64 @min(i32 4, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %113 = bitcast %union.acpi_object* %112 to %struct.TYPE_8__*
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @memcpy(%struct.atcs_pref_req_output* %12, i64 %115, i64 %116)
  %118 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %119 = call i32 @kfree(%union.acpi_object* %118)
  %120 = getelementptr inbounds %struct.atcs_pref_req_output, %struct.atcs_pref_req_output* %12, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %123 [
    i32 128, label %122
    i32 130, label %126
    i32 129, label %127
  ]

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %109, %122
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %131

126:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %131

127:                                              ; preds = %109
  %128 = call i32 @udelay(i32 10)
  br label %129

129:                                              ; preds = %127
  br label %79

130:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %126, %123, %102, %89, %41, %32, %21
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @amdgpu_acpi_pcie_notify_device_ready(%struct.amdgpu_device*) #1

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local %union.acpi_object* @amdgpu_atcs_call(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @memset(%struct.atcs_pref_req_output*, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atcs_pref_req_output*, i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
