; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0209.c_nvbios_M0209Ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0209.c_nvbios_M0209Ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_M0209E = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0209Ep(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_M0209E* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nvbios_M0209E*, align 8
  %16 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.nvbios_M0209E* %6, %struct.nvbios_M0209E** %15, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @nvbios_M0209Ee(%struct.nvkm_bios* %17, i32 %18, i32* %19, i32* %20, i32* %21, i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %25 = call i32 @memset(%struct.nvbios_M0209E* %24, i32 0, i32 24)
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  switch i32 %33, label %78 [
    i32 16, label %34
  ]

34:                                               ; preds = %7
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %36, 0
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %37)
  %39 = and i32 %38, 64
  %40 = ashr i32 %39, 6
  %41 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %42 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 0
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %43, i32 %45)
  %47 = and i32 %46, 63
  %48 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %49 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @nvbios_rd08(%struct.nvkm_bios* %50, i32 %52)
  %54 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %55 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 2
  %59 = call i32 @nvbios_rd08(%struct.nvkm_bios* %56, i32 %58)
  %60 = and i32 %59, 64
  %61 = ashr i32 %60, 6
  %62 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %63 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i32 @nvbios_rd08(%struct.nvkm_bios* %64, i32 %66)
  %68 = and i32 %67, 7
  %69 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %70 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 3
  %74 = call i32 @nvbios_rd08(%struct.nvkm_bios* %71, i32 %73)
  %75 = load %struct.nvbios_M0209E*, %struct.nvbios_M0209E** %15, align 8
  %76 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %7
  br label %79

79:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @nvbios_M0209Ee(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_M0209E*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
