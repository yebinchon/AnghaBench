; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pmu.c_nvbios_pmuEe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pmu.c_nvbios_pmuEe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_pmuEe(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @nvbios_pmuTe(%struct.nvkm_bios* %13, i32* %14, i32* %15, i32* %10, i32* %11)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i64, i64* %12, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %5, align 8
  br label %38

37:                                               ; preds = %19, %4
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @nvbios_pmuTe(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
