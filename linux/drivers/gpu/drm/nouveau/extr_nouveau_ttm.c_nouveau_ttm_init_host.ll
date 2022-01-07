; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_init_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_init_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.TYPE_4__ = type { %struct.nvif_mmu }
%struct.nvif_mmu = type { i32 }

@NVIF_MEM_HOST = common dso_local global i32 0, align 4
@NVIF_MEM_MAPPABLE = common dso_local global i32 0, align 4
@NVIF_MEM_COHERENT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, i32)* @nouveau_ttm_init_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_ttm_init_host(%struct.nouveau_drm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvif_mmu*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.nvif_mmu* %10, %struct.nvif_mmu** %6, align 8
  %11 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %12 = load i32, i32* @NVIF_MEM_HOST, align 4
  %13 = load i32, i32* @NVIF_MEM_MAPPABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NVIF_MEM_COHERENT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @nvif_mmu_type(%struct.nvif_mmu* %11, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  store i32 %26, i32* %37, align 4
  %38 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %39 = load i32, i32* @NVIF_MEM_HOST, align 4
  %40 = load i32, i32* @NVIF_MEM_MAPPABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @nvif_mmu_type(%struct.nvif_mmu* %38, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @ENOSYS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  store i32 %51, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %47, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nvif_mmu_type(%struct.nvif_mmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
