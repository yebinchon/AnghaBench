; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r361.c_acr_r361_generate_sec2_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r361.c_acr_r361_generate_sec2_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_sec2* }
%struct.nvkm_sec2 = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ls_ucode_img = type { i64, %struct.ls_ucode_img_desc }
%struct.ls_ucode_img_desc = type { i32, i32, i32, i32, i64, i64 }
%struct.acr_r361_pmu_bl_desc = type { i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, i32 }

@NVKM_MSGQUEUE_CMDLINE_SIZE = common dso_local global i64 0, align 8
@FALCON_SEC2_DMAIDX_UCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_acr*, %struct.ls_ucode_img*, i64, i8*)* @acr_r361_generate_sec2_bl_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r361_generate_sec2_bl_desc(%struct.nvkm_acr* %0, %struct.ls_ucode_img* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.nvkm_acr*, align 8
  %6 = alloca %struct.ls_ucode_img*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ls_ucode_img_desc*, align 8
  %10 = alloca %struct.nvkm_sec2*, align 8
  %11 = alloca %struct.acr_r361_pmu_bl_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %5, align 8
  store %struct.ls_ucode_img* %1, %struct.ls_ucode_img** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %17 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %16, i32 0, i32 1
  store %struct.ls_ucode_img_desc* %17, %struct.ls_ucode_img_desc** %9, align 8
  %18 = load %struct.nvkm_acr*, %struct.nvkm_acr** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_acr, %struct.nvkm_acr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %23, align 8
  store %struct.nvkm_sec2* %24, %struct.nvkm_sec2** %10, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.acr_r361_pmu_bl_desc*
  store %struct.acr_r361_pmu_bl_desc* %26, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %29 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %33 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %39 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %14, align 8
  %42 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %10, align 8
  %43 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i64, i64* @NVKM_MSGQUEUE_CMDLINE_SIZE, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* @FALCON_SEC2_DMAIDX_UCODE, align 4
  %54 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %55 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i8* @u64_to_flcn64(i64 %56)
  %58 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %59 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %61 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %64 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %66 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %69 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %71 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %74 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i8* @u64_to_flcn64(i64 %75)
  %77 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %78 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %80 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %83 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i8* @u64_to_flcn64(i64 %84)
  %86 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %87 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %89 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.acr_r361_pmu_bl_desc*, %struct.acr_r361_pmu_bl_desc** %11, align 8
  %91 = getelementptr inbounds %struct.acr_r361_pmu_bl_desc, %struct.acr_r361_pmu_bl_desc* %90, i32 0, i32 1
  store i32 16777216, i32* %91, align 4
  ret void
}

declare dso_local i8* @u64_to_flcn64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
