; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_npde.c_nvbios_npdeTp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_npde.c_nvbios_npdeTp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_npdeT = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_npdeTp(%struct.nvkm_bios* %0, i64 %1, %struct.nvbios_npdeT* %2) #0 {
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvbios_npdeT*, align 8
  %7 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nvbios_npdeT* %2, %struct.nvbios_npdeT** %6, align 8
  %8 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @nvbios_npdeTe(%struct.nvkm_bios* %8, i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.nvbios_npdeT*, %struct.nvbios_npdeT** %6, align 8
  %12 = call i32 @memset(%struct.nvbios_npdeT* %11, i32 0, i32 8)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %17, 8
  %19 = call i32 @nvbios_rd16(%struct.nvkm_bios* %16, i64 %18)
  %20 = mul nsw i32 %19, 512
  %21 = load %struct.nvbios_npdeT*, %struct.nvbios_npdeT** %6, align 8
  %22 = getelementptr inbounds %struct.nvbios_npdeT, %struct.nvbios_npdeT* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, 10
  %26 = call i32 @nvbios_rd08(%struct.nvkm_bios* %23, i64 %25)
  %27 = and i32 %26, 128
  %28 = load %struct.nvbios_npdeT*, %struct.nvbios_npdeT** %6, align 8
  %29 = getelementptr inbounds %struct.nvbios_npdeT, %struct.nvbios_npdeT* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %15, %3
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

declare dso_local i64 @nvbios_npdeTe(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @memset(%struct.nvbios_npdeT*, i32, i32) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
