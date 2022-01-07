; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_iccsense.c_nvbios_iccsense_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_iccsense.c_nvbios_iccsense_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_bios*, i32*, i32*, i32*, i32*)* @nvbios_iccsense_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvbios_iccsense_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = call i64 @bit_entry(%struct.nvkm_bios* %14, i8 signext 80, %struct.bit_entry* %12)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 44
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %5
  store i64 0, i64* %6, align 8
  br label %62

26:                                               ; preds = %21
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 40
  %31 = call i64 @nvbios_rd32(%struct.nvkm_bios* %27, i64 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %62

35:                                               ; preds = %26
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %37, 0
  %39 = call i32 @nvbios_rd08(%struct.nvkm_bios* %36, i64 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %60 [
    i32 16, label %43
    i32 32, label %43
  ]

43:                                               ; preds = %35, %35
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i64 %46)
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 2
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %49, i64 %51)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add nsw i64 %55, 3
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %54, i64 %56)
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %6, align 8
  br label %62

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %61, %43, %34, %25
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i64 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
