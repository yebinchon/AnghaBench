; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0205.c_nvbios_M0205Te.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0205.c_nvbios_M0205Te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0205Te(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
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
  %19 = call i32 @bit_entry(%struct.nvkm_bios* %18, i8 signext 77, %struct.bit_entry* %16)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %76, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 8
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %31 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 5
  %34 = call i32 @nvbios_rd32(%struct.nvkm_bios* %30, i64 %33)
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 0
  %42 = call i32 @nvbios_rd08(%struct.nvkm_bios* %39, i32 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %73 [
    i32 16, label %46
  ]

46:                                               ; preds = %38
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @nvbios_rd08(%struct.nvkm_bios* %47, i32 %49)
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i32 @nvbios_rd08(%struct.nvkm_bios* %52, i32 %54)
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 3
  %60 = call i32 @nvbios_rd08(%struct.nvkm_bios* %57, i32 %59)
  %61 = load i32*, i32** %15, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 4
  %65 = call i32 @nvbios_rd08(%struct.nvkm_bios* %62, i32 %64)
  %66 = load i32*, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 5
  %70 = call i32 @nvbios_rd08(%struct.nvkm_bios* %67, i32 %69)
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %8, align 4
  br label %77

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %35
  br label %76

76:                                               ; preds = %75, %7
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32, i32* %8, align 4
  ret i32 %78
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
