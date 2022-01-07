; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pmu.c_nvbios_pmuTe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pmu.c_nvbios_pmuTe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_pmuTe(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bit_entry, align 8
  %12 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %14 = call i32 @bit_entry(%struct.nvkm_bios* %13, i8 signext 112, %struct.bit_entry* %11)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %26 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 0
  %29 = call i64 @nvbios_rd32(%struct.nvkm_bios* %25, i64 %28)
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %24, %20, %16
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add nsw i64 %35, 0
  %37 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @nvbios_rd08(%struct.nvkm_bios* %39, i64 %41)
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, 2
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i64 %46)
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, 3
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %49, i64 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %33, %30
  br label %55

55:                                               ; preds = %54, %5
  %56 = load i64, i64* %12, align 8
  ret i64 %56
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
