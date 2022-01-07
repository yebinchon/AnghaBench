; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_boost.c_nvbios_boostSp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_boost.c_nvbios_boostSp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_boostS = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_boostSp(%struct.nvkm_bios* %0, i32 %1, i64 %2, i32* %3, i32* %4, i32 %5, i32 %6, %struct.nvbios_boostS* %7) #0 {
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvbios_boostS*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.nvbios_boostS* %7, %struct.nvbios_boostS** %16, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i64, i64* %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i64 @nvbios_boostSe(%struct.nvkm_bios* %17, i32 %18, i64 %19, i32* %20, i32* %21, i32 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.nvbios_boostS*, %struct.nvbios_boostS** %16, align 8
  %26 = call i32 @memset(%struct.nvbios_boostS* %25, i32 0, i32 24)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %8
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add nsw i64 %31, 0
  %33 = call i8* @nvbios_rd08(%struct.nvkm_bios* %30, i64 %32)
  %34 = load %struct.nvbios_boostS*, %struct.nvbios_boostS** %16, align 8
  %35 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i8* @nvbios_rd08(%struct.nvkm_bios* %36, i64 %38)
  %40 = load %struct.nvbios_boostS*, %struct.nvbios_boostS** %16, align 8
  %41 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 2
  %45 = call i32 @nvbios_rd16(%struct.nvkm_bios* %42, i64 %44)
  %46 = mul nsw i32 %45, 1000
  %47 = load %struct.nvbios_boostS*, %struct.nvbios_boostS** %16, align 8
  %48 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, 4
  %52 = call i32 @nvbios_rd16(%struct.nvkm_bios* %49, i64 %51)
  %53 = mul nsw i32 %52, 1000
  %54 = load %struct.nvbios_boostS*, %struct.nvbios_boostS** %16, align 8
  %55 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %29, %8
  %57 = load i64, i64* %11, align 8
  ret i64 %57
}

declare dso_local i64 @nvbios_boostSe(%struct.nvkm_bios*, i32, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.nvbios_boostS*, i32, i32) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
