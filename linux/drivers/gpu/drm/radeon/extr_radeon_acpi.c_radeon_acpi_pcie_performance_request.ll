; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_acpi_pcie_performance_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_acpi_pcie_performance_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__*, %struct.radeon_atcs }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.radeon_atcs = type { %struct.TYPE_5__ }
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
define dso_local i32 @radeon_acpi_pcie_performance_request(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %struct.radeon_atcs*, align 8
  %11 = alloca %struct.atcs_pref_req_input, align 4
  %12 = alloca %struct.atcs_pref_req_output, align 4
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  store %struct.radeon_atcs* %17, %struct.radeon_atcs** %10, align 8
  store i32 3, i32* %15, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = call i32 @ACPI_HANDLE(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %124

28:                                               ; preds = %3
  %29 = load %struct.radeon_atcs*, %struct.radeon_atcs** %10, align 8
  %30 = getelementptr inbounds %struct.radeon_atcs, %struct.radeon_atcs* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %124

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 0
  store i32 24, i32* %38, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %43, %51
  %53 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @ATCS_VALID_FLAGS_MASK, align 4
  %55 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @ATCS_WAIT_FOR_COMPLETION, align 4
  %57 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %37
  %61 = load i32, i32* @ATCS_ADVERTISE_CAPS, align 4
  %62 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %37
  %66 = load i32, i32* @ATCS_PCIE_LINK_SPEED, align 4
  %67 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.atcs_pref_req_input, %struct.atcs_pref_req_input* %11, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i32 24, i32* %70, align 8
  %71 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store %struct.atcs_pref_req_input* %11, %struct.atcs_pref_req_input** %71, align 8
  br label %72

72:                                               ; preds = %122, %65
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %15, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %123

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @ATCS_FUNCTION_PCIE_PERFORMANCE_REQUEST, align 4
  %79 = call %union.acpi_object* @radeon_atcs_call(i32 %77, i32 %78, %struct.acpi_buffer* %13)
  store %union.acpi_object* %79, %union.acpi_object** %9, align 8
  %80 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %81 = icmp ne %union.acpi_object* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %124

85:                                               ; preds = %76
  %86 = call i32 @memset(%struct.atcs_pref_req_output* %12, i32 0, i32 4)
  %87 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %88 = bitcast %union.acpi_object* %87 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp ult i64 %93, 3
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %96)
  %98 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %99 = call i32 @kfree(%union.acpi_object* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %124

102:                                              ; preds = %85
  %103 = load i64, i64* %14, align 8
  %104 = call i64 @min(i32 4, i64 %103)
  store i64 %104, i64* %14, align 8
  %105 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %106 = bitcast %union.acpi_object* %105 to %struct.TYPE_8__*
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @memcpy(%struct.atcs_pref_req_output* %12, i64 %108, i64 %109)
  %111 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %112 = call i32 @kfree(%union.acpi_object* %111)
  %113 = getelementptr inbounds %struct.atcs_pref_req_output, %struct.atcs_pref_req_output* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %116 [
    i32 128, label %115
    i32 130, label %119
    i32 129, label %120
  ]

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %102, %115
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %124

119:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %124

120:                                              ; preds = %102
  %121 = call i32 @udelay(i32 10)
  br label %122

122:                                              ; preds = %120
  br label %72

123:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %119, %116, %95, %82, %34, %25
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local %union.acpi_object* @radeon_atcs_call(i32, i32, %struct.acpi_buffer*) #1

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
