; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_disp.c_nvbios_disp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_disp.c_nvbios_disp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_disp_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bit_entry, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %17 = call i32 @bit_entry(%struct.nvkm_bios* %16, i8 zeroext 85, %struct.bit_entry* %14)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %14, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %25 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %14, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nvbios_rd16(%struct.nvkm_bios* %24, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 0
  %34 = call i32 @nvbios_rd08(%struct.nvkm_bios* %31, i32 %33)
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %60 [
    i32 32, label %38
    i32 33, label %38
    i32 34, label %38
  ]

38:                                               ; preds = %30, %30, %30
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @nvbios_rd08(%struct.nvkm_bios* %39, i32 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 2
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i32 %46)
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 3
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %49, i32 %51)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 4
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %54, i32 %56)
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %23
  br label %63

63:                                               ; preds = %62, %19
  br label %64

64:                                               ; preds = %63, %6
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 zeroext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
