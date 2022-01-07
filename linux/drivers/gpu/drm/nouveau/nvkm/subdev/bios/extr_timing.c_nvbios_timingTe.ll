; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_timing.c_nvbios_timingTe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_timing.c_nvbios_timingTe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_timingTe(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.bit_entry, align 8
  %17 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %19 = call i32 @bit_entry(%struct.nvkm_bios* %18, i8 signext 80, %struct.bit_entry* %16)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %102, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 4
  %30 = call i64 @nvbios_rd32(%struct.nvkm_bios* %26, i64 %29)
  store i64 %30, i64* %17, align 8
  br label %42

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %37 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 8
  %40 = call i64 @nvbios_rd32(%struct.nvkm_bios* %36, i64 %39)
  store i64 %40, i64* %17, align 8
  br label %41

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %42
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %47 = load i64, i64* %17, align 8
  %48 = add nsw i64 %47, 0
  %49 = call i32 @nvbios_rd08(%struct.nvkm_bios* %46, i64 %48)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %99 [
    i32 16, label %53
    i32 32, label %72
  ]

53:                                               ; preds = %45
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %55 = load i64, i64* %17, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %54, i64 %56)
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %60 = load i64, i64* %17, align 8
  %61 = add nsw i64 %60, 2
  %62 = call i32 @nvbios_rd08(%struct.nvkm_bios* %59, i64 %61)
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %65 = load i64, i64* %17, align 8
  %66 = add nsw i64 %65, 3
  %67 = call i32 @nvbios_rd08(%struct.nvkm_bios* %64, i64 %66)
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %14, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %15, align 8
  store i32 0, i32* %70, align 4
  %71 = load i64, i64* %17, align 8
  store i64 %71, i64* %8, align 8
  br label %103

72:                                               ; preds = %45
  %73 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %74 = load i64, i64* %17, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i32 @nvbios_rd08(%struct.nvkm_bios* %73, i64 %75)
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %79 = load i64, i64* %17, align 8
  %80 = add nsw i64 %79, 5
  %81 = call i32 @nvbios_rd08(%struct.nvkm_bios* %78, i64 %80)
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %84 = load i64, i64* %17, align 8
  %85 = add nsw i64 %84, 2
  %86 = call i32 @nvbios_rd08(%struct.nvkm_bios* %83, i64 %85)
  %87 = load i32*, i32** %13, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %89 = load i64, i64* %17, align 8
  %90 = add nsw i64 %89, 4
  %91 = call i32 @nvbios_rd08(%struct.nvkm_bios* %88, i64 %90)
  %92 = load i32*, i32** %14, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %94 = load i64, i64* %17, align 8
  %95 = add nsw i64 %94, 3
  %96 = call i32 @nvbios_rd08(%struct.nvkm_bios* %93, i64 %95)
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i64, i64* %17, align 8
  store i64 %98, i64* %8, align 8
  br label %103

99:                                               ; preds = %45
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %42
  br label %102

102:                                              ; preds = %101, %7
  store i64 0, i64* %8, align 8
  br label %103

103:                                              ; preds = %102, %72, %53
  %104 = load i64, i64* %8, align 8
  ret i64 %104
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
