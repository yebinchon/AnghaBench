; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_vmm_page* }
%struct.nvkm_vmm_page = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"bootstrap\00", align 1
@nvkm_vmm_boot_ptes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_vmm_boot(%struct.nvkm_vmm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_vmm*, align 8
  %4 = alloca %struct.nvkm_vmm_page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %3, align 8
  %7 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  store %struct.nvkm_vmm_page* %11, %struct.nvkm_vmm_page** %4, align 8
  %12 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %25, %1
  %20 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %20, i64 1
  %22 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %26, i32 1
  store %struct.nvkm_vmm_page* %27, %struct.nvkm_vmm_page** %4, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %30 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %4, align 8
  %31 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @nvkm_vmm_ptes_get(%struct.nvkm_vmm* %29, %struct.nvkm_vmm_page* %30, i64 %33, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %28
  %41 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %42 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %4, align 8
  %43 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %44 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @nvkm_vmm_boot_ptes, align 4
  %48 = call i32 @nvkm_vmm_iter(%struct.nvkm_vmm* %41, %struct.nvkm_vmm_page* %42, i64 %45, i64 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %47, i32* null, i32* null, i32* null)
  %49 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %50 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %40, %38
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @nvkm_vmm_ptes_get(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64) #1

declare dso_local i32 @nvkm_vmm_iter(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64, i8*, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
