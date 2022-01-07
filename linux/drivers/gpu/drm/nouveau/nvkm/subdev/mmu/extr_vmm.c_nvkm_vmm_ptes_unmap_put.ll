; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_unmap_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_unmap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_vmm_desc_func* }
%struct.nvkm_vmm_desc_func = type { i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"unmap + unref\00", align 1
@nvkm_vmm_unref_ptes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32, i32, i32)* @nvkm_vmm_ptes_unmap_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_page* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca %struct.nvkm_vmm_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_vmm_desc_func*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %7, align 8
  store %struct.nvkm_vmm_page* %1, %struct.nvkm_vmm_page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %8, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %17, align 8
  store %struct.nvkm_vmm_desc_func* %18, %struct.nvkm_vmm_desc_func** %13, align 8
  %19 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %20 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @nvkm_vmm_unref_ptes, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %13, align 8
  %29 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  br label %46

31:                                               ; preds = %6
  %32 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %13, align 8
  %33 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %13, align 8
  %38 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %13, align 8
  %42 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %39, %36 ], [ %43, %40 ]
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i64 [ %30, %27 ], [ %45, %44 ]
  %48 = call i32 @nvkm_vmm_iter(%struct.nvkm_vmm* %19, %struct.nvkm_vmm_page* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 %23, i32 %24, i32* null, i32* null, i64 %47)
  ret void
}

declare dso_local i32 @nvkm_vmm_iter(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32, i8*, i32, i32, i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
