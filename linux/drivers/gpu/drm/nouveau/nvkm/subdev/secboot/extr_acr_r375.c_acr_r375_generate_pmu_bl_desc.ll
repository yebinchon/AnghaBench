; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r375.c_acr_r375_generate_pmu_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r375.c_acr_r375_generate_pmu_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_pmu* }
%struct.nvkm_pmu = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ls_ucode_img = type { i64, %struct.ls_ucode_img_desc }
%struct.ls_ucode_img_desc = type { i32, i32, i32, i64, i64, i64 }
%struct.acr_r370_flcn_bl_desc = type { i32, i32, i32, i8*, i32, i32, i64, i8*, i32 }

@NVKM_MSGQUEUE_CMDLINE_SIZE = common dso_local global i64 0, align 8
@FALCON_DMAIDX_UCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_acr*, %struct.ls_ucode_img*, i64, i8*)* @acr_r375_generate_pmu_bl_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r375_generate_pmu_bl_desc(%struct.nvkm_acr* %0, %struct.ls_ucode_img* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.nvkm_acr*, align 8
  %6 = alloca %struct.ls_ucode_img*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ls_ucode_img_desc*, align 8
  %10 = alloca %struct.nvkm_pmu*, align 8
  %11 = alloca %struct.acr_r370_flcn_bl_desc*, align 8
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
  %24 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %23, align 8
  store %struct.nvkm_pmu* %24, %struct.nvkm_pmu** %10, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.acr_r370_flcn_bl_desc*
  store %struct.acr_r370_flcn_bl_desc* %26, %struct.acr_r370_flcn_bl_desc** %11, align 8
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
  %37 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %38 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %43 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %14, align 8
  %46 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %10, align 8
  %47 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i64, i64* @NVKM_MSGQUEUE_CMDLINE_SIZE, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* @FALCON_DMAIDX_UCODE, align 4
  %58 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %59 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i8* @u64_to_flcn64(i64 %60)
  %62 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %63 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %65 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %68 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %70 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %73 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %75 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %78 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i8* @u64_to_flcn64(i64 %79)
  %81 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %82 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %84 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %87 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %89 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %11, align 8
  %92 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local i8* @u64_to_flcn64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
