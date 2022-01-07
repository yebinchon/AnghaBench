; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_patch_jt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_patch_jt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_firmware_info = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32 }
%struct.common_firmware_header = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_firmware_info*, i32, i8*)* @amdgpu_ucode_patch_jt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ucode_patch_jt(%struct.amdgpu_firmware_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_firmware_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %9 = alloca %struct.common_firmware_header*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.amdgpu_firmware_info* %0, %struct.amdgpu_firmware_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.gfx_firmware_header_v1_0* null, %struct.gfx_firmware_header_v1_0** %8, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* null, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %23, %struct.common_firmware_header** %9, align 8
  %24 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %29, %struct.gfx_firmware_header_v1_0** %8, align 8
  %30 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %34 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @ALIGN(i32 %36, i32 %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  store i32* %40, i32** %11, align 8
  %41 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %48 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %54 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = mul nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %63 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = mul nsw i32 %65, 4
  %67 = call i32 @memcpy(i32* %60, i32* %61, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %17, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
