; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_cstep.c_nvbios_cstepXp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_cstep.c_nvbios_cstepXp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_cstepX = type { i32, i8*, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_cstepXp(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, %struct.nvbios_cstepX* %4) #0 {
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvbios_cstepX*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvbios_cstepX* %4, %struct.nvbios_cstepX** %10, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @nvbios_cstepXe(%struct.nvkm_bios* %12, i32 %13, i32* %14, i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.nvbios_cstepX*, %struct.nvbios_cstepX** %10, align 8
  %18 = call i32 @memset(%struct.nvbios_cstepX* %17, i32 0, i32 24)
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %5
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %23, 0
  %25 = call i32 @nvbios_rd16(%struct.nvkm_bios* %22, i64 %24)
  %26 = mul nsw i32 %25, 1000
  %27 = load %struct.nvbios_cstepX*, %struct.nvbios_cstepX** %10, align 8
  %28 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add nsw i64 %30, 2
  %32 = call i8* @nvbios_rd08(%struct.nvkm_bios* %29, i64 %31)
  %33 = load %struct.nvbios_cstepX*, %struct.nvbios_cstepX** %10, align 8
  %34 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %38, 3
  %40 = call i8* @nvbios_rd08(%struct.nvkm_bios* %37, i64 %39)
  %41 = load %struct.nvbios_cstepX*, %struct.nvbios_cstepX** %10, align 8
  %42 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* %40, i8** %44, align 8
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %46, 4
  %48 = call i8* @nvbios_rd08(%struct.nvkm_bios* %45, i64 %47)
  %49 = load %struct.nvbios_cstepX*, %struct.nvbios_cstepX** %10, align 8
  %50 = getelementptr inbounds %struct.nvbios_cstepX, %struct.nvbios_cstepX* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %21, %5
  %52 = load i64, i64* %11, align 8
  ret i64 %52
}

declare dso_local i64 @nvbios_cstepXe(%struct.nvkm_bios*, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_cstepX*, i32, i32) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
