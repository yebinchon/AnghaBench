; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vmap.c_nvbios_vmap_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vmap.c_nvbios_vmap_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_vmap = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_vmap_parse(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.nvbios_vmap* %5) #0 {
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nvbios_vmap*, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.nvbios_vmap* %5, %struct.nvbios_vmap** %12, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @nvbios_vmap_table(%struct.nvkm_bios* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %21 = call i32 @memset(%struct.nvbios_vmap* %20, i32 0, i32 12)
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %26, %28
  switch i32 %29, label %67 [
    i32 16, label %30
    i32 32, label %37
  ]

30:                                               ; preds = %6
  %31 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %32 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %31, i32 0, i32 0
  store i32 255, i32* %32, align 4
  %33 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %34 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %33, i32 0, i32 1
  store i32 255, i32* %34, align 4
  %35 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %36 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %35, i32 0, i32 2
  store i32 255, i32* %36, align 4
  br label %67

37:                                               ; preds = %6
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %39 = load i64, i64* %13, align 8
  %40 = add nsw i64 %39, 7
  %41 = call i8* @nvbios_rd08(%struct.nvkm_bios* %38, i64 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %44 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add nsw i64 %46, 8
  %48 = call i8* @nvbios_rd08(%struct.nvkm_bios* %45, i64 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %51 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 12
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, 12
  %59 = call i8* @nvbios_rd08(%struct.nvkm_bios* %56, i64 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %62 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %66

63:                                               ; preds = %37
  %64 = load %struct.nvbios_vmap*, %struct.nvbios_vmap** %12, align 8
  %65 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %64, i32 0, i32 2
  store i32 255, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %55
  br label %67

67:                                               ; preds = %6, %66, %30
  %68 = load i64, i64* %13, align 8
  ret i64 %68
}

declare dso_local i64 @nvbios_vmap_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_vmap*, i32, i32) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
