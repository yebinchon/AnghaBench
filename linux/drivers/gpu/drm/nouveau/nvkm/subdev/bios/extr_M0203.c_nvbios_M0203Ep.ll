; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0203.c_nvbios_M0203Ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0203.c_nvbios_M0203Ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_M0203E = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0203Ep(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, %struct.nvbios_M0203E* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nvbios_M0203E*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.nvbios_M0203E* %4, %struct.nvbios_M0203E** %11, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @nvbios_M0203Ee(%struct.nvkm_bios* %13, i32 %14, i32* %15, i32* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.nvbios_M0203E*, %struct.nvbios_M0203E** %11, align 8
  %19 = call i32 @memset(%struct.nvbios_M0203E* %18, i32 0, i32 12)
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  switch i32 %27, label %54 [
    i32 16, label %28
  ]

28:                                               ; preds = %5
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 0
  %32 = call i32 @nvbios_rd08(%struct.nvkm_bios* %29, i32 %31)
  %33 = and i32 %32, 15
  %34 = ashr i32 %33, 0
  %35 = load %struct.nvbios_M0203E*, %struct.nvbios_M0203E** %11, align 8
  %36 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 0
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %37, i32 %39)
  %41 = and i32 %40, 240
  %42 = ashr i32 %41, 4
  %43 = load %struct.nvbios_M0203E*, %struct.nvbios_M0203E** %11, align 8
  %44 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @nvbios_rd08(%struct.nvkm_bios* %45, i32 %47)
  %49 = and i32 %48, 15
  %50 = ashr i32 %49, 0
  %51 = load %struct.nvbios_M0203E*, %struct.nvbios_M0203E** %11, align 8
  %52 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %56

54:                                               ; preds = %5
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @nvbios_M0203Ee(%struct.nvkm_bios*, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_M0203E*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
