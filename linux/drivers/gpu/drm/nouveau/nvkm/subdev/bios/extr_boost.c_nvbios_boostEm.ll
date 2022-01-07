; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_boost.c_nvbios_boostEm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_boost.c_nvbios_boostEm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_boostE = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_boostEm(%struct.nvkm_bios* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, %struct.nvbios_boostE* %6) #0 {
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.nvbios_boostE*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.nvbios_boostE* %6, %struct.nvbios_boostE** %14, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %36, %7
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %19 = load i64, i64* %16, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %16, align 8
  %21 = trunc i64 %19 to i32
  %22 = load i64*, i64** %10, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = load %struct.nvbios_boostE*, %struct.nvbios_boostE** %14, align 8
  %27 = call i64 @nvbios_boostEp(%struct.nvkm_bios* %18, i32 %21, i64* %22, i64* %23, i64* %24, i64* %25, %struct.nvbios_boostE* %26)
  store i64 %27, i64* %15, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load %struct.nvbios_boostE*, %struct.nvbios_boostE** %14, align 8
  %31 = getelementptr inbounds %struct.nvbios_boostE, %struct.nvbios_boostE* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %29
  br label %17

37:                                               ; preds = %35, %17
  %38 = load i64, i64* %15, align 8
  ret i64 %38
}

declare dso_local i64 @nvbios_boostEp(%struct.nvkm_bios*, i32, i64*, i64*, i64*, i64*, %struct.nvbios_boostE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
