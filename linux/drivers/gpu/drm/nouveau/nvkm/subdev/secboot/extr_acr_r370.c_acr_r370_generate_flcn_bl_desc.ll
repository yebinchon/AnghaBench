; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r370.c_acr_r370_generate_flcn_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r370.c_acr_r370_generate_flcn_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { i32 }
%struct.ls_ucode_img = type { i64, %struct.ls_ucode_img_desc }
%struct.ls_ucode_img_desc = type { i32, i32, i32, i64, i64, i64 }
%struct.acr_r370_flcn_bl_desc = type { i32, i8*, i32, i32, i64, i8*, i32 }

@FALCON_DMAIDX_UCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_acr*, %struct.ls_ucode_img*, i64, i8*)* @acr_r370_generate_flcn_bl_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r370_generate_flcn_bl_desc(%struct.nvkm_acr* %0, %struct.ls_ucode_img* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.nvkm_acr*, align 8
  %6 = alloca %struct.ls_ucode_img*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.acr_r370_flcn_bl_desc*, align 8
  %10 = alloca %struct.ls_ucode_img_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %5, align 8
  store %struct.ls_ucode_img* %1, %struct.ls_ucode_img** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.acr_r370_flcn_bl_desc*
  store %struct.acr_r370_flcn_bl_desc* %15, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %16 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %17 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %16, i32 0, i32 1
  store %struct.ls_ucode_img_desc* %17, %struct.ls_ucode_img_desc** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %20 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %24 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %29 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %34 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load i32, i32* @FALCON_DMAIDX_UCODE, align 4
  %38 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %39 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i8* @u64_to_flcn64(i64 %40)
  %42 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %43 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %45 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %48 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %50 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %53 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %55 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %58 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i8* @u64_to_flcn64(i64 %59)
  %61 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %62 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %64 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %9, align 8
  %67 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  ret void
}

declare dso_local i8* @u64_to_flcn64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
