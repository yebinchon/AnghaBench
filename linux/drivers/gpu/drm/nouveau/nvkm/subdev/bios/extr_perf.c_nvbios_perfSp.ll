; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perfSp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perfSp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_perfS = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_perfSp(%struct.nvkm_bios* %0, i64 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, %struct.nvbios_perfS* %7) #0 {
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvbios_perfS*, align 8
  %17 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.nvbios_perfS* %7, %struct.nvbios_perfS** %16, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i64 @nvbios_perfSe(%struct.nvkm_bios* %18, i64 %19, i32 %20, i32* %21, i32* %22, i32 %23, i32 %24)
  store i64 %25, i64* %17, align 8
  %26 = load %struct.nvbios_perfS*, %struct.nvbios_perfS** %16, align 8
  %27 = call i32 @memset(%struct.nvbios_perfS* %26, i32 0, i32 4)
  %28 = load i64, i64* %17, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  switch i32 %35, label %46 [
    i32 64, label %36
  ]

36:                                               ; preds = %8
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %38 = load i64, i64* %17, align 8
  %39 = add nsw i64 %38, 0
  %40 = call i32 @nvbios_rd16(%struct.nvkm_bios* %37, i64 %39)
  %41 = and i32 %40, 16383
  %42 = mul nsw i32 %41, 1000
  %43 = load %struct.nvbios_perfS*, %struct.nvbios_perfS** %16, align 8
  %44 = getelementptr inbounds %struct.nvbios_perfS, %struct.nvbios_perfS* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %47

46:                                               ; preds = %8
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i64, i64* %17, align 8
  ret i64 %48
}

declare dso_local i64 @nvbios_perfSe(%struct.nvkm_bios*, i64, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.nvbios_perfS*, i32, i32) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
