; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_verify_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_verify_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_atif = type { i32, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.atif_verify_interface = type { i32, i32, i32 }

@ATIF_FUNCTION_VERIFY_INTERFACE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ATIF buffer is too small: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ATIF version %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_atif*)* @amdgpu_atif_verify_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atif_verify_interface(%struct.amdgpu_atif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_atif*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.atif_verify_interface, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_atif* %0, %struct.amdgpu_atif** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %3, align 8
  %9 = load i32, i32* @ATIF_FUNCTION_VERIFY_INTERFACE, align 4
  %10 = call %union.acpi_object* @amdgpu_atif_call(%struct.amdgpu_atif* %8, i32 %9, i32* null)
  store %union.acpi_object* %10, %union.acpi_object** %4, align 8
  %11 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %12 = icmp ne %union.acpi_object* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.atif_verify_interface* %5, i32 0, i32 12)
  %18 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %24, 12
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %53

31:                                               ; preds = %16
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @min(i32 12, i64 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @memcpy(%struct.atif_verify_interface* %5, i64 %37, i64 %38)
  %40 = getelementptr inbounds %struct.atif_verify_interface, %struct.atif_verify_interface* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.atif_verify_interface, %struct.atif_verify_interface* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @amdgpu_atif_parse_notification(i32* %44, i32 %46)
  %48 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.atif_verify_interface, %struct.atif_verify_interface* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @amdgpu_atif_parse_functions(i32* %49, i32 %51)
  br label %53

53:                                               ; preds = %31, %26
  %54 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %55 = call i32 @kfree(%union.acpi_object* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %union.acpi_object* @amdgpu_atif_call(%struct.amdgpu_atif*, i32, i32*) #1

declare dso_local i32 @memset(%struct.atif_verify_interface*, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atif_verify_interface*, i64, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @amdgpu_atif_parse_notification(i32*, i32) #1

declare dso_local i32 @amdgpu_atif_parse_functions(i32*, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
