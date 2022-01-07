; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_sparse_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_sparse_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"sparse unref\00", align 1
@nvkm_vmm_sparse_unref_ptes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32)* @nvkm_vmm_ptes_sparse_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca %struct.nvkm_vmm_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store %struct.nvkm_vmm_page* %1, %struct.nvkm_vmm_page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %10 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @nvkm_vmm_sparse_unref_ptes, align 4
  %14 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  br label %38

30:                                               ; preds = %4
  %31 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %6, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = phi i64 [ %29, %22 ], [ %37, %30 ]
  %40 = call i32 @nvkm_vmm_iter(%struct.nvkm_vmm* %9, %struct.nvkm_vmm_page* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %13, i32* null, i32* null, i64 %39)
  ret void
}

declare dso_local i32 @nvkm_vmm_iter(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32, i8*, i32, i32, i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
