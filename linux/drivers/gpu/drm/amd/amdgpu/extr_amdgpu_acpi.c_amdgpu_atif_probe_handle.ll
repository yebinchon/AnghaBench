; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_probe_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_probe_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"ATIF\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No ATIF handle found\0A\00", align 1
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Found ATIF handle %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @amdgpu_atif_probe_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @amdgpu_atif_probe_handle(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [255 x i8], align 16
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = bitcast [255 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 255, i1 false)
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store i32 255, i32* %9, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  %11 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @acpi_get_handle(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %4)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @ACPI_SUCCESS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %31

18:                                               ; preds = %1
  %19 = call i64 (...) @amdgpu_has_atpx()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = call i32* (...) @amdgpu_atpx_get_dhandle()
  %23 = call i32 @acpi_get_handle(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ACPI_SUCCESS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %31

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %38

31:                                               ; preds = %27, %17
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @ACPI_FULL_PATHNAME, align 4
  %34 = call i32 @acpi_get_name(i32* %32, i32 %33, %struct.acpi_buffer* %6)
  %35 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %36 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %4, align 8
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_get_handle(i32*, i8*, i32**) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

declare dso_local i64 @amdgpu_has_atpx(...) #2

declare dso_local i32* @amdgpu_atpx_get_dhandle(...) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #2

declare dso_local i32 @acpi_get_name(i32*, i32, %struct.acpi_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
