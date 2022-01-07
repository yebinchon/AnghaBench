; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapEm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapEm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_ramcfg = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_rammapEm(%struct.nvkm_bios* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_ramcfg* %6) #0 {
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nvbios_ramcfg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.nvbios_ramcfg* %6, %struct.nvbios_ramcfg** %14, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %41, %7
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %19 = load i32, i32* %15, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %26 = call i32 @nvbios_rammapEp(%struct.nvkm_bios* %18, i32 %19, i32* %21, i32* %22, i32* %23, i32* %24, %struct.nvbios_ramcfg* %25)
  store i32 %26, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %17
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %31 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %14, align 8
  %37 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34, %28
  br label %17

42:                                               ; preds = %40, %17
  %43 = load i32, i32* %16, align 4
  ret i32 %43
}

declare dso_local i32 @nvbios_rammapEp(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_ramcfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
