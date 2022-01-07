; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_generate_hs_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_generate_hs_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsf_load_header = type { i32, i32, i32, i32 }
%struct.acr_r352_flcn_bl_desc = type { i32, i8*, i64, i32, i32, i32, i32, i8*, i32 }

@FALCON_DMAIDX_VIRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsf_load_header*, i8*, i32)* @acr_r352_generate_hs_bl_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_r352_generate_hs_bl_desc(%struct.hsf_load_header* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hsf_load_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acr_r352_flcn_bl_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hsf_load_header* %0, %struct.hsf_load_header** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.acr_r352_flcn_bl_desc*
  store %struct.acr_r352_flcn_bl_desc* %11, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %16 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @FALCON_DMAIDX_VIRT, align 4
  %21 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %22 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @lower_32_bits(i32 %23)
  %25 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %26 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %28 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %31 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %33 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %36 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %38 = call i32 @hsf_load_header_app_off(%struct.hsf_load_header* %37, i32 0)
  %39 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %40 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %42 = call i32 @hsf_load_header_app_size(%struct.hsf_load_header* %41, i32 0)
  %43 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %44 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %46 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @lower_32_bits(i32 %47)
  %49 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %50 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %52 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.acr_r352_flcn_bl_desc*, %struct.acr_r352_flcn_bl_desc** %7, align 8
  %55 = getelementptr inbounds %struct.acr_r352_flcn_bl_desc, %struct.acr_r352_flcn_bl_desc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @hsf_load_header_app_off(%struct.hsf_load_header*, i32) #1

declare dso_local i32 @hsf_load_header_app_size(%struct.hsf_load_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
