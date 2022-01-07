; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_new_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_new_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_memory = type { i32 }

@NVKM_MEM_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_mem_new_type(%struct.nvkm_mmu* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.nvkm_memory** %6) #0 {
  %8 = alloca %struct.nvkm_mmu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_memory**, align 8
  %15 = alloca %struct.nvkm_memory*, align 8
  %16 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.nvkm_memory** %6, %struct.nvkm_memory*** %14, align 8
  store %struct.nvkm_memory* null, %struct.nvkm_memory** %15, align 8
  %17 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NVKM_MEM_VRAM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %7
  %29 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.nvkm_memory**)**
  %35 = load i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.nvkm_memory**)*, i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.nvkm_memory**)** %34, align 8
  %36 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 %35(%struct.nvkm_mmu* %36, i32 %37, i32 %38, i32 %39, i8* %40, i32 %41, %struct.nvkm_memory** %15)
  store i32 %42, i32* %16, align 4
  br label %51

43:                                               ; preds = %7
  %44 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @nvkm_mem_new_host(%struct.nvkm_mmu* %44, i32 %45, i32 %46, i32 %47, i8* %48, i32 %49, %struct.nvkm_memory** %15)
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %43, %28
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @nvkm_memory_unref(%struct.nvkm_memory** %15)
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.nvkm_memory*, %struct.nvkm_memory** %15, align 8
  %58 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %14, align 8
  store %struct.nvkm_memory* %57, %struct.nvkm_memory** %58, align 8
  %59 = load i32, i32* %16, align 4
  ret i32 %59
}

declare dso_local i32 @nvkm_mem_new_host(%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.nvkm_memory**) #1

declare dso_local i32 @nvkm_memory_unref(%struct.nvkm_memory**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
