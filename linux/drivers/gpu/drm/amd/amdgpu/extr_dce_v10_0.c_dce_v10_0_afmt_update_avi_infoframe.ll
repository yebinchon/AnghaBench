; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_afmt_update_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_afmt_update_avi_infoframe.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i8*, i64)* @dce_v10_0_afmt_update_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v10_0_afmt_update_avi_infoframe(%struct.drm_encoder* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %8, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %19)
  store %struct.amdgpu_encoder* %20, %struct.amdgpu_encoder** %9, align 8
  %21 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %22 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %22, align 8
  store %struct.amdgpu_encoder_atom_dig* %23, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr i8, i8* %24, i64 3
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %12, align 8
  %29 = load i64, i64* @mmAFMT_AVI_INFO0, align 8
  %30 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %31 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %43, %47
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 24
  %53 = or i32 %48, %52
  %54 = call i32 @WREG32(i64 %35, i32 %53)
  %55 = load i64, i64* @mmAFMT_AVI_INFO1, align 8
  %56 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %57 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %64, %68
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %69, %73
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 24
  %79 = or i32 %74, %78
  %80 = call i32 @WREG32(i64 %61, i32 %79)
  %81 = load i64, i64* @mmAFMT_AVI_INFO2, align 8
  %82 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %83 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %81, %86
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 9
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %90, %94
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 10
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 16
  %100 = or i32 %95, %99
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 11
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 24
  %105 = or i32 %100, %104
  %106 = call i32 @WREG32(i64 %87, i32 %105)
  %107 = load i64, i64* @mmAFMT_AVI_INFO3, align 8
  %108 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %109 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %107, %112
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 12
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 13
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = or i32 %116, %120
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 24
  %126 = or i32 %121, %125
  %127 = call i32 @WREG32(i64 %113, i32 %126)
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
