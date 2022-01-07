; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapTe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapTe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_rammapTe(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.bit_entry, align 8
  %17 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %19 = call i32 @bit_entry(%struct.nvkm_bios* %18, i8 signext 80, %struct.bit_entry* %16)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 4
  %30 = call i32 @nvbios_rd32(%struct.nvkm_bios* %26, i64 %29)
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %36 = load i32, i32* %17, align 4
  %37 = add nsw i32 %36, 0
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %37)
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %69 [
    i32 16, label %42
    i32 17, label %42
  ]

42:                                               ; preds = %34, %34
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %43, i32 %45)
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 5
  %51 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i32 %50)
  %52 = load i32*, i32** %12, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 2
  %56 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i32 %55)
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 4
  %61 = call i32 @nvbios_rd08(%struct.nvkm_bios* %58, i32 %60)
  %62 = load i32*, i32** %14, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 3
  %66 = call i32 @nvbios_rd08(%struct.nvkm_bios* %63, i32 %65)
  %67 = load i32*, i32** %15, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %8, align 4
  br label %73

69:                                               ; preds = %34
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %31
  br label %72

72:                                               ; preds = %71, %7
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
