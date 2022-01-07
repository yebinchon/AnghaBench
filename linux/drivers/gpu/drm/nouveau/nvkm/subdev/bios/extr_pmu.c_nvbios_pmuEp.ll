; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pmu.c_nvbios_pmuEp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pmu.c_nvbios_pmuEp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_pmuE = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_pmuEp(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, %struct.nvbios_pmuE* %4) #0 {
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvbios_pmuE*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvbios_pmuE* %4, %struct.nvbios_pmuE** %10, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @nvbios_pmuEe(%struct.nvkm_bios* %12, i32 %13, i32* %14, i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.nvbios_pmuE*, %struct.nvbios_pmuE** %10, align 8
  %18 = call i32 @memset(%struct.nvbios_pmuE* %17, i32 0, i32 8)
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  switch i32 %26, label %27 [
  ]

27:                                               ; preds = %5
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %29, 0
  %31 = call i32 @nvbios_rd08(%struct.nvkm_bios* %28, i64 %30)
  %32 = load %struct.nvbios_pmuE*, %struct.nvbios_pmuE** %10, align 8
  %33 = getelementptr inbounds %struct.nvbios_pmuE, %struct.nvbios_pmuE* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, 2
  %37 = call i32 @nvbios_rd32(%struct.nvkm_bios* %34, i64 %36)
  %38 = load %struct.nvbios_pmuE*, %struct.nvbios_pmuE** %10, align 8
  %39 = getelementptr inbounds %struct.nvbios_pmuE, %struct.nvbios_pmuE* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %11, align 8
  ret i64 %41
}

declare dso_local i64 @nvbios_pmuEe(%struct.nvkm_bios*, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_pmuE*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
