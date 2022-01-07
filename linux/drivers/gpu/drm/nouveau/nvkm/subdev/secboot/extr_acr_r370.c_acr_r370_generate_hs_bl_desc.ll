; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r370.c_acr_r370_generate_hs_bl_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r370.c_acr_r370_generate_hs_bl_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsf_load_header = type { i32, i64, i32, i32 }
%struct.acr_r370_flcn_bl_desc = type { i32, i8*, i8*, i64, i32, i32, i32, i32, i32 }

@FALCON_DMAIDX_VIRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acr_r370_generate_hs_bl_desc(%struct.hsf_load_header* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.hsf_load_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acr_r370_flcn_bl_desc*, align 8
  store %struct.hsf_load_header* %0, %struct.hsf_load_header** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.acr_r370_flcn_bl_desc*
  store %struct.acr_r370_flcn_bl_desc* %9, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %10 = load i32, i32* @FALCON_DMAIDX_VIRT, align 4
  %11 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %12 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %14 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %17 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %19 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %22 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %24 = call i32 @hsf_load_header_app_off(%struct.hsf_load_header* %23, i32 0)
  %25 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %26 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %28 = call i32 @hsf_load_header_app_size(%struct.hsf_load_header* %27, i32 0)
  %29 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %30 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %32 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i8* @u64_to_flcn64(i64 %33)
  %35 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %36 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %39 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i8* @u64_to_flcn64(i64 %41)
  %43 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %44 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.hsf_load_header*, %struct.hsf_load_header** %4, align 8
  %46 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.acr_r370_flcn_bl_desc*, %struct.acr_r370_flcn_bl_desc** %7, align 8
  %49 = getelementptr inbounds %struct.acr_r370_flcn_bl_desc, %struct.acr_r370_flcn_bl_desc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  ret void
}

declare dso_local i32 @hsf_load_header_app_off(%struct.hsf_load_header*, i32) #1

declare dso_local i32 @hsf_load_header_app_size(%struct.hsf_load_header*, i32) #1

declare dso_local i8* @u64_to_flcn64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
