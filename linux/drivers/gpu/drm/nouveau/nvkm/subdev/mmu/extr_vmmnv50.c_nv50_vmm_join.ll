; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_vmm_join = type { %struct.nvkm_memory*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_vmm_join(%struct.nvkm_vmm* %0, %struct.nvkm_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_vmm*, align 8
  %5 = alloca %struct.nvkm_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_vmm_join*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %4, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %5, align 8
  %11 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nvkm_vmm_join* @kmalloc(i32 16, i32 %19)
  store %struct.nvkm_vmm_join* %20, %struct.nvkm_vmm_join** %7, align 8
  %21 = icmp ne %struct.nvkm_vmm_join* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %2
  %26 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %27 = load %struct.nvkm_vmm_join*, %struct.nvkm_vmm_join** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_join, %struct.nvkm_vmm_join* %27, i32 0, i32 0
  store %struct.nvkm_memory* %26, %struct.nvkm_memory** %28, align 8
  %29 = load %struct.nvkm_vmm_join*, %struct.nvkm_vmm_join** %7, align 8
  %30 = getelementptr inbounds %struct.nvkm_vmm_join, %struct.nvkm_vmm_join* %29, i32 0, i32 1
  %31 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %31, i32 0, i32 3
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  %34 = load %struct.nvkm_vmm_join*, %struct.nvkm_vmm_join** %7, align 8
  %35 = getelementptr inbounds %struct.nvkm_vmm_join, %struct.nvkm_vmm_join* %34, i32 0, i32 0
  %36 = load %struct.nvkm_memory*, %struct.nvkm_memory** %35, align 8
  %37 = call i32 @nvkm_kmap(%struct.nvkm_memory* %36)
  %38 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 29
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %76, %25
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %45 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = ashr i32 %47, 29
  %49 = icmp sle i32 %43, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %42
  %51 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %52 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %53 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nv50_vmm_pde(%struct.nvkm_vmm* %51, i32 %60, i32* %9)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %79

66:                                               ; preds = %50
  %67 = load %struct.nvkm_vmm_join*, %struct.nvkm_vmm_join** %7, align 8
  %68 = getelementptr inbounds %struct.nvkm_vmm_join, %struct.nvkm_vmm_join* %67, i32 0, i32 0
  %69 = load %struct.nvkm_memory*, %struct.nvkm_memory** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 8
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @nvkm_wo64(%struct.nvkm_memory* %69, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %42

79:                                               ; preds = %63, %42
  %80 = load %struct.nvkm_vmm_join*, %struct.nvkm_vmm_join** %7, align 8
  %81 = getelementptr inbounds %struct.nvkm_vmm_join, %struct.nvkm_vmm_join* %80, i32 0, i32 0
  %82 = load %struct.nvkm_memory*, %struct.nvkm_memory** %81, align 8
  %83 = call i32 @nvkm_done(%struct.nvkm_memory* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %22
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.nvkm_vmm_join* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nv50_vmm_pde(%struct.nvkm_vmm*, i32, i32*) #1

declare dso_local i32 @nvkm_wo64(%struct.nvkm_memory*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
