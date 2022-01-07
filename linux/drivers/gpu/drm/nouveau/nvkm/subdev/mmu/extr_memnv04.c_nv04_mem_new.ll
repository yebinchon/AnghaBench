; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv04.c_nv04_mem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv04.c_nv04_mem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_memory = type { i32 }
%union.anon = type { %struct.nv04_mem_vn }
%struct.nv04_mem_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@NVKM_MEM_MAPPABLE = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NOMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_mem_new(%struct.nvkm_mmu* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.nvkm_memory** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_mmu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvkm_memory**, align 8
  %16 = alloca %union.anon*, align 8
  %17 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nvkm_memory** %6, %struct.nvkm_memory*** %15, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to %union.anon*
  store %union.anon* %19, %union.anon** %16, align 8
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = load %union.anon*, %union.anon** %16, align 8
  %24 = bitcast %union.anon* %23 to %struct.nv04_mem_vn*
  %25 = getelementptr inbounds %struct.nv04_mem_vn, %struct.nv04_mem_vn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nvif_unvers(i32 %22, i8** %13, i32* %14, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %8, align 4
  br label %57

31:                                               ; preds = %7
  %32 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %33 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NVKM_MEM_MAPPABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  store i32 %44, i32* %10, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @NVKM_RAM_MM_NOMAP, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %15, align 8
  %56 = call i32 @nvkm_ram_get(i32 %51, i32 %52, i32 1, i32 %53, i32 %54, i32 1, i32 0, %struct.nvkm_memory** %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %47, %29
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @nvkm_ram_get(i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_memory**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
