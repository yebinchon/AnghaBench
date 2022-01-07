; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_afmt_update_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_afmt_update_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mmAFMT_AVI_INFO0 = common dso_local global i64 0, align 8
@mmAFMT_AVI_INFO1 = common dso_local global i64 0, align 8
@mmAFMT_AVI_INFO2 = common dso_local global i64 0, align 8
@mmAFMT_AVI_INFO3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i8*, i64)* @dce_v8_0_afmt_update_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_afmt_update_avi_infoframe(%struct.drm_encoder* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %8, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %20)
  store %struct.amdgpu_encoder* %21, %struct.amdgpu_encoder** %9, align 8
  %22 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %23 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %22, i32 0, i32 0
  %24 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %23, align 8
  store %struct.amdgpu_encoder_atom_dig* %24, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %25 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %26 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr i8, i8* %30, i64 3
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %12, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %13, align 8
  %35 = load i64, i64* @mmAFMT_AVI_INFO0, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 24
  %55 = or i32 %50, %54
  %56 = call i32 @WREG32(i64 %37, i32 %55)
  %57 = load i64, i64* @mmAFMT_AVI_INFO1, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 24
  %77 = or i32 %72, %76
  %78 = call i32 @WREG32(i64 %59, i32 %77)
  %79 = load i64, i64* @mmAFMT_AVI_INFO2, align 8
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %84, %88
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 10
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 16
  %94 = or i32 %89, %93
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 11
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 24
  %99 = or i32 %94, %98
  %100 = call i32 @WREG32(i64 %81, i32 %99)
  %101 = load i64, i64* @mmAFMT_AVI_INFO3, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 13
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %106, %110
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 24
  %116 = or i32 %111, %115
  %117 = call i32 @WREG32(i64 %103, i32 %116)
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
