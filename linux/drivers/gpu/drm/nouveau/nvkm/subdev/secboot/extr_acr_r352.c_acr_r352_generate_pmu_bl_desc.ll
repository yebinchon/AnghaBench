; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_generate_pmu_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_generate_pmu_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_pmu* }
%struct.nvkm_pmu = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ls_ucode_img = type { i32, %struct.ls_ucode_img_desc }
%struct.ls_ucode_img_desc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.acr_r352_pmu_bl_desc = type { i32, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i32 }

@NVKM_MSGQUEUE_CMDLINE_SIZE = common dso_local global i64 0, align 8
@FALCON_DMAIDX_UCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_acr*, %struct.ls_ucode_img*, i32, i8*)* @acr_r352_generate_pmu_bl_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r352_generate_pmu_bl_desc(%struct.nvkm_acr* %0, %struct.ls_ucode_img* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.nvkm_acr*, align 8
  %6 = alloca %struct.ls_ucode_img*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ls_ucode_img_desc*, align 8
  %10 = alloca %struct.nvkm_pmu*, align 8
  %11 = alloca %struct.acr_r352_pmu_bl_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %5, align 8
  store %struct.ls_ucode_img* %1, %struct.ls_ucode_img** %6, align 8
  store i32 %2, i32* %7, align 4
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
  %26 = bitcast i8* %25 to %struct.acr_r352_pmu_bl_desc*
  store %struct.acr_r352_pmu_bl_desc* %26, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %29 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %33 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %38 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %44 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %14, align 4
  %48 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %10, align 8
  %49 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i64, i64* @NVKM_MSGQUEUE_CMDLINE_SIZE, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* @FALCON_DMAIDX_UCODE, align 4
  %60 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %61 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i8* @lower_32_bits(i32 %62)
  %64 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %65 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %64, i32 0, i32 11
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i8* @upper_32_bits(i32 %66)
  %68 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %69 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %71 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %74 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %76 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %79 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %81 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %84 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i8* @lower_32_bits(i32 %85)
  %87 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %88 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i8* @upper_32_bits(i32 %89)
  %91 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %92 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %9, align 8
  %94 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %97 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i8* @lower_32_bits(i32 %98)
  %100 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %101 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i8* @upper_32_bits(i32 %102)
  %104 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %105 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %107 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.acr_r352_pmu_bl_desc*, %struct.acr_r352_pmu_bl_desc** %11, align 8
  %110 = getelementptr inbounds %struct.acr_r352_pmu_bl_desc, %struct.acr_r352_pmu_bl_desc* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  ret void
}

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
