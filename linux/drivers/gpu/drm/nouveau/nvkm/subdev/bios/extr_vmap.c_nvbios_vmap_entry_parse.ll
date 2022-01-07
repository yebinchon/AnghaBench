; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vmap.c_nvbios_vmap_entry_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vmap.c_nvbios_vmap_entry_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_vmap_entry = type { i32, i8**, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_vmap_entry_parse(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, %struct.nvbios_vmap_entry* %4) #0 {
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvbios_vmap_entry*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvbios_vmap_entry* %4, %struct.nvbios_vmap_entry** %10, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @nvbios_vmap_entry(%struct.nvkm_bios* %12, i32 %13, i32* %14, i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %18 = call i32 @memset(%struct.nvbios_vmap_entry* %17, i32 0, i32 40)
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  switch i32 %26, label %140 [
    i32 16, label %27
    i32 32, label %66
  ]

27:                                               ; preds = %5
  %28 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %29 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %28, i32 0, i32 0
  store i32 255, i32* %29, align 8
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add nsw i64 %31, 0
  %33 = call i8* @nvbios_rd32(%struct.nvkm_bios* %30, i64 %32)
  %34 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %35 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i8* @nvbios_rd32(%struct.nvkm_bios* %36, i64 %38)
  %40 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %41 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 8
  %45 = call i8* @nvbios_rd32(%struct.nvkm_bios* %42, i64 %44)
  %46 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %47 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %45, i8** %49, align 8
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 12
  %53 = call i8* @nvbios_rd32(%struct.nvkm_bios* %50, i64 %52)
  %54 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %55 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 16
  %61 = call i8* @nvbios_rd32(%struct.nvkm_bios* %58, i64 %60)
  %62 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %63 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  store i8* %61, i8** %65, align 8
  br label %140

66:                                               ; preds = %5
  %67 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, 0
  %70 = call i8* @nvbios_rd08(%struct.nvkm_bios* %67, i64 %69)
  %71 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %72 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i8* @nvbios_rd08(%struct.nvkm_bios* %73, i64 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %79 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, 2
  %83 = call i8* @nvbios_rd32(%struct.nvkm_bios* %80, i64 %82)
  %84 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %85 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 6
  %89 = call i8* @nvbios_rd32(%struct.nvkm_bios* %86, i64 %88)
  %90 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %91 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %93, 10
  %95 = call i8* @nvbios_rd32(%struct.nvkm_bios* %92, i64 %94)
  %96 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %97 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add nsw i64 %101, 14
  %103 = call i8* @nvbios_rd32(%struct.nvkm_bios* %100, i64 %102)
  %104 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %105 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  store i8* %103, i8** %107, align 8
  %108 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %109, 18
  %111 = call i8* @nvbios_rd32(%struct.nvkm_bios* %108, i64 %110)
  %112 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %113 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 2
  store i8* %111, i8** %115, align 8
  %116 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %117, 22
  %119 = call i8* @nvbios_rd32(%struct.nvkm_bios* %116, i64 %118)
  %120 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %121 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %120, i32 0, i32 1
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  store i8* %119, i8** %123, align 8
  %124 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %125, 26
  %127 = call i8* @nvbios_rd32(%struct.nvkm_bios* %124, i64 %126)
  %128 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %129 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %128, i32 0, i32 1
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 4
  store i8* %127, i8** %131, align 8
  %132 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add nsw i64 %133, 30
  %135 = call i8* @nvbios_rd32(%struct.nvkm_bios* %132, i64 %134)
  %136 = load %struct.nvbios_vmap_entry*, %struct.nvbios_vmap_entry** %10, align 8
  %137 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %136, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 5
  store i8* %135, i8** %139, align 8
  br label %140

140:                                              ; preds = %5, %66, %27
  %141 = load i64, i64* %11, align 8
  ret i64 %141
}

declare dso_local i64 @nvbios_vmap_entry(%struct.nvkm_bios*, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_vmap_entry*, i32, i32) #1

declare dso_local i8* @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
