; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_generate_flcn_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_generate_flcn_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { i32 }
%struct.ls_ucode_img = type { i32, %struct.ls_ucode_img_desc }
%struct.ls_ucode_img_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.acr_r352_flcn_bl_desc = type { i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32 }

@FALCON_DMAIDX_UCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_acr*, %struct.ls_ucode_img*, i32, i8*)* @acr_r352_generate_flcn_bl_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r352_generate_flcn_bl_desc(%struct.nvkm_acr* %0, %struct.ls_ucode_img* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.nvkm_acr*, align 8
  %6 = alloca %struct.ls_ucode_img*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.acr_r352_flcn_bl_desc*, align 8
  %10 = alloca %struct.ls_ucode_img_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %5, align 8
  store %struct.ls_ucode_img* %1, %struct.ls_ucode_img** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.acr_r352_flcn_bl_desc*
  store %struct.acr_r352_flcn_bl_desc* %15, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %16 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %17 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %16, i32 0, i32 1
  store %struct.ls_ucode_img_desc* %17, %struct.ls_ucode_img_desc** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %6, align 8
  %20 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %24 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %29 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %35 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @FALCON_DMAIDX_UCODE, align 4
  %40 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %41 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @lower_32_bits(i32 %42)
  %44 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %45 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i8* @upper_32_bits(i32 %46)
  %48 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %49 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %51 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %54 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %56 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %59 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %61 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %64 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i8* @lower_32_bits(i32 %65)
  %67 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %68 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i8* @upper_32_bits(i32 %69)
  %71 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %72 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ls_ucode_img_desc*, %struct.ls_ucode_img_desc** %10, align 8
  %74 = getelementptr inbounds %struct.ls_ucode_img_desc, %struct.ls_ucode_img_desc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %9, align 8
  %77 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
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
