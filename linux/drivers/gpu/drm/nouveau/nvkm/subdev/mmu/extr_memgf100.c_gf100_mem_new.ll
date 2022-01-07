; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memgf100.c_gf100_mem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memgf100.c_gf100_mem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_memory = type { i32 }
%union.anon = type { %struct.gf100_mem_vn }
%struct.gf100_mem_vn = type { i32 }
%struct.gf100_mem_v0 = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@NVKM_MEM_DISP = common dso_local global i32 0, align 4
@NVKM_MEM_COMP = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@NVKM_RAM_MM_MIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_mem_new(%struct.nvkm_mmu* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.nvkm_memory** %6) #0 {
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
  %18 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nvkm_memory** %6, %struct.nvkm_memory*** %15, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %union.anon*
  store %union.anon* %20, %union.anon** %16, align 8
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load %union.anon*, %union.anon** %16, align 8
  %25 = bitcast %union.anon* %24 to %struct.gf100_mem_v0*
  %26 = getelementptr inbounds %struct.gf100_mem_v0, %struct.gf100_mem_v0* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvif_unpack(i32 %23, i8** %13, i32* %14, i32 %27, i32 0, i32 0, i32 0)
  store i32 %28, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %7
  %31 = load %union.anon*, %union.anon** %16, align 8
  %32 = bitcast %union.anon* %31 to %struct.gf100_mem_v0*
  %33 = getelementptr inbounds %struct.gf100_mem_v0, %struct.gf100_mem_v0* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %18, align 4
  br label %47

35:                                               ; preds = %7
  %36 = load i32, i32* %17, align 4
  %37 = load %union.anon*, %union.anon** %16, align 8
  %38 = bitcast %union.anon* %37 to %struct.gf100_mem_vn*
  %39 = getelementptr inbounds %struct.gf100_mem_vn, %struct.gf100_mem_vn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nvif_unvers(i32 %36, i8** %13, i32* %14, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %18, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %8, align 4
  br label %76

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NVKM_MEM_DISP, align 4
  %57 = load i32, i32* @NVKM_MEM_COMP, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  store i32 %62, i32* %10, align 4
  br label %65

63:                                               ; preds = %47
  %64 = load i32, i32* @NVKM_RAM_MM_MIXED, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %67 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %15, align 8
  %75 = call i32 @nvkm_ram_get(i32 %69, i32 %70, i32 1, i32 %71, i32 %72, i32 %73, i32 0, %struct.nvkm_memory** %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %65, %44
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @nvkm_ram_get(i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_memory**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
