; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0205.c_nvbios_M0205Ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0205.c_nvbios_M0205Ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_M0205E = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0205Ep(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_M0205E* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nvbios_M0205E*, align 8
  %16 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.nvbios_M0205E* %6, %struct.nvbios_M0205E** %15, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @nvbios_M0205Ee(%struct.nvkm_bios* %17, i32 %18, i32* %19, i32* %20, i32* %21, i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.nvbios_M0205E*, %struct.nvbios_M0205E** %15, align 8
  %25 = call i32 @memset(%struct.nvbios_M0205E* %24, i32 0, i32 4)
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  switch i32 %33, label %43 [
    i32 16, label %34
  ]

34:                                               ; preds = %7
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %36, 0
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %37)
  %39 = and i32 %38, 15
  %40 = load %struct.nvbios_M0205E*, %struct.nvbios_M0205E** %15, align 8
  %41 = getelementptr inbounds %struct.nvbios_M0205E, %struct.nvbios_M0205E* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %7
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @nvbios_M0205Ee(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_M0205E*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
