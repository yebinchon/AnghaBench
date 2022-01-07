; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.psp_firmware_header_v1_0 = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"renoir\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_asd.bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v12_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_init_microcode(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.psp_firmware_header_v1_0*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %9 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %10 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %17 [
    i32 128, label %16
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %16
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @snprintf(i8* %20, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @request_firmware(%struct.TYPE_8__** %25, i8* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %86

34:                                               ; preds = %19
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32 @amdgpu_ucode_validate(%struct.TYPE_8__* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %86

43:                                               ; preds = %34
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.psp_firmware_header_v1_0*
  store %struct.psp_firmware_header_v1_0* %50, %struct.psp_firmware_header_v1_0** %8, align 8
  %51 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %52 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %60 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %67 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %75 = bitcast %struct.psp_firmware_header_v1_0* %74 to i32*
  %76 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %77 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store i32* %82, i32** %85, align 8
  store i32 0, i32* %2, align 4
  br label %96

86:                                               ; preds = %42, %33
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @release_firmware(%struct.TYPE_8__* %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %94, align 8
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %86, %43
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_8__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_8__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
