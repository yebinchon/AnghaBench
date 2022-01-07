; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv50.c_nv50_mem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv50.c_nv50_mem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_memory = type { i32 }
%union.anon = type { %struct.nv50_mem_v0 }
%struct.nv50_mem_v0 = type { i32, i64 }
%struct.nv50_mem_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_mem_new(%struct.nvkm_mmu* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.nvkm_memory** %6) #0 {
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
  %25 = bitcast %union.anon* %24 to %struct.nv50_mem_v0*
  %26 = bitcast %struct.nv50_mem_v0* %25 to { i32, i64 }*
  %27 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @nvif_unpack(i32 %23, i8** %13, i32* %14, i32 %28, i64 %30, i32 0, i32 0, i32 0)
  store i32 %31, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %7
  %34 = load %union.anon*, %union.anon** %16, align 8
  %35 = bitcast %union.anon* %34 to %struct.nv50_mem_v0*
  %36 = getelementptr inbounds %struct.nv50_mem_v0, %struct.nv50_mem_v0* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 1
  store i32 %40, i32* %10, align 4
  %41 = load %union.anon*, %union.anon** %16, align 8
  %42 = bitcast %union.anon* %41 to %struct.nv50_mem_v0*
  %43 = getelementptr inbounds %struct.nv50_mem_v0, %struct.nv50_mem_v0* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %18, align 4
  br label %58

45:                                               ; preds = %7
  %46 = load i32, i32* %17, align 4
  %47 = load %union.anon*, %union.anon** %16, align 8
  %48 = bitcast %union.anon* %47 to %struct.nv50_mem_vn*
  %49 = getelementptr inbounds %struct.nv50_mem_vn, %struct.nv50_mem_vn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @nvif_unvers(i32 %46, i8** %13, i32* %14, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  store i32 0, i32* %18, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOSYS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %70

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %33
  %59 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %60 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %15, align 8
  %69 = call i32 @nvkm_ram_get(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 0, %struct.nvkm_memory** %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %58, %54
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @nvkm_ram_get(i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_memory**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
