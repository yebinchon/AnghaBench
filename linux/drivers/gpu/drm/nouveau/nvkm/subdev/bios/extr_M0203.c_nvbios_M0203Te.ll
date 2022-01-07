; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0203.c_nvbios_M0203Te.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_M0203.c_nvbios_M0203Te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_M0203Te(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = call i32 @bit_entry(%struct.nvkm_bios* %14, i8 signext 77, %struct.bit_entry* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 3
  %30 = call i32 @nvbios_rd16(%struct.nvkm_bios* %26, i64 %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %25, %21, %17
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 0
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %37)
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %59 [
    i32 16, label %42
  ]

42:                                               ; preds = %34
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %43, i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 2
  %51 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i32 %50)
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 3
  %56 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i32 %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %31
  br label %62

62:                                               ; preds = %61, %5
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
