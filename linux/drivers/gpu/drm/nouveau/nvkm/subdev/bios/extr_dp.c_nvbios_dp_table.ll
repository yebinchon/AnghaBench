; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_dp_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = call i32 @bit_entry(%struct.nvkm_bios* %14, i8 signext 100, %struct.bit_entry* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nvbios_rd16(%struct.nvkm_bios* %26, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %25
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 0
  %36 = call i32 @nvbios_rd08(%struct.nvkm_bios* %33, i32 %35)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %57 [
    i32 32, label %40
    i32 33, label %40
    i32 48, label %40
    i32 64, label %40
    i32 65, label %40
    i32 66, label %40
  ]

40:                                               ; preds = %32, %32, %32, %32, %32, %32
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @nvbios_rd08(%struct.nvkm_bios* %41, i32 %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i32 @nvbios_rd08(%struct.nvkm_bios* %46, i32 %48)
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 3
  %54 = call i32 @nvbios_rd08(%struct.nvkm_bios* %51, i32 %53)
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %25
  br label %60

60:                                               ; preds = %59, %21, %17
  br label %61

61:                                               ; preds = %60, %5
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
