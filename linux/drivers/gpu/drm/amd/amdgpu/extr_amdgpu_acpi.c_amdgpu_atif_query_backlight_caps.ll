; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_query_backlight_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_query_backlight_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_atif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.atif_qbtc_output = type { i32, i32 }
%struct.atif_qbtc_arguments = type { i32, i32 }
%struct.acpi_buffer = type { i32, i8* }

@ATIF_QBTC_REQUEST_LCD1 = common dso_local global i32 0, align 4
@ATIF_FUNCTION_QUERY_BRIGHTNESS_TRANSFER_CHARACTERISTICS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_atif*)* @amdgpu_atif_query_backlight_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atif_query_backlight_caps(%struct.amdgpu_atif* %0) #0 {
  %2 = alloca %struct.amdgpu_atif*, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %struct.atif_qbtc_output, align 4
  %5 = alloca %struct.atif_qbtc_arguments, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_atif* %0, %struct.amdgpu_atif** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.atif_qbtc_arguments, %struct.atif_qbtc_arguments* %5, i32 0, i32 0
  store i32 8, i32* %9, align 4
  %10 = load i32, i32* @ATIF_QBTC_REQUEST_LCD1, align 4
  %11 = getelementptr inbounds %struct.atif_qbtc_arguments, %struct.atif_qbtc_arguments* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = bitcast %struct.atif_qbtc_arguments* %5 to i8*
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %2, align 8
  %16 = load i32, i32* @ATIF_FUNCTION_QUERY_BRIGHTNESS_TRANSFER_CHARACTERISTICS, align 4
  %17 = call %union.acpi_object* @amdgpu_atif_call(%struct.amdgpu_atif* %15, i32 %16, %struct.acpi_buffer* %6)
  store %union.acpi_object* %17, %union.acpi_object** %3, align 8
  %18 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %19 = icmp ne %union.acpi_object* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %58

35:                                               ; preds = %23
  %36 = call i32 @memset(%struct.atif_qbtc_output* %4, i32 0, i32 8)
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @min(i32 8, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %40 = bitcast %union.acpi_object* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @memcpy(%struct.atif_qbtc_output* %4, i64 %42, i64 %43)
  %45 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.atif_qbtc_output, %struct.atif_qbtc_output* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.atif_qbtc_output, %struct.atif_qbtc_output* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %35, %32, %20
  %59 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %60 = call i32 @kfree(%union.acpi_object* %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %union.acpi_object* @amdgpu_atif_call(%struct.amdgpu_atif*, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @memset(%struct.atif_qbtc_output*, i32, i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atif_qbtc_output*, i64, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
