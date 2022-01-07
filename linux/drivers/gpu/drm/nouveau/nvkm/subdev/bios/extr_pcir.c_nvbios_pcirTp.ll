; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pcir.c_nvbios_pcirTp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pcir.c_nvbios_pcirTp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_pcirT = type { i32, i32, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_pcirTp(%struct.nvkm_bios* %0, i64 %1, i32* %2, i32* %3, %struct.nvbios_pcirT* %4) #0 {
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvbios_pcirT*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvbios_pcirT* %4, %struct.nvbios_pcirT** %10, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @nvbios_pcirTe(%struct.nvkm_bios* %12, i64 %13, i32* %14, i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %18 = call i32 @memset(%struct.nvbios_pcirT* %17, i32 0, i32 32)
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %5
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @nvbios_rd16(%struct.nvkm_bios* %22, i64 %24)
  %26 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %27 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %29, 6
  %31 = call i32 @nvbios_rd16(%struct.nvkm_bios* %28, i64 %30)
  %32 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %33 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, 13
  %37 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %36)
  %38 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %39 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 14
  %45 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i64 %44)
  %46 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %47 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 15
  %53 = call i32 @nvbios_rd08(%struct.nvkm_bios* %50, i64 %52)
  %54 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %55 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %53, i32* %57, align 4
  %58 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 16
  %61 = call i32 @nvbios_rd16(%struct.nvkm_bios* %58, i64 %60)
  %62 = mul nsw i32 %61, 512
  %63 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %64 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 18
  %68 = call i32 @nvbios_rd16(%struct.nvkm_bios* %65, i64 %67)
  %69 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %70 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, 20
  %74 = call i32 @nvbios_rd08(%struct.nvkm_bios* %71, i64 %73)
  %75 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %76 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add nsw i64 %78, 21
  %80 = call i32 @nvbios_rd08(%struct.nvkm_bios* %77, i64 %79)
  %81 = and i32 %80, 128
  %82 = load %struct.nvbios_pcirT*, %struct.nvbios_pcirT** %10, align 8
  %83 = getelementptr inbounds %struct.nvbios_pcirT, %struct.nvbios_pcirT* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %21, %5
  %85 = load i64, i64* %11, align 8
  ret i64 %85
}

declare dso_local i64 @nvbios_pcirTe(%struct.nvkm_bios*, i64, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_pcirT*, i32, i32) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
