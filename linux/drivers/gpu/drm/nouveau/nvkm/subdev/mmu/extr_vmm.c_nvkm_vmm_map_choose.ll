; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_map_choose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_map_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nvkm_vma = type { i32 }
%struct.nvkm_vmm_map = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [10 x i8] c"trying %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32, %struct.nvkm_vmm_map*)* @nvkm_vmm_map_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_map_choose(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1, i8* %2, i32 %3, %struct.nvkm_vmm_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca %struct.nvkm_vma*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_map*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %7, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_vmm_map* %4, %struct.nvkm_vmm_map** %11, align 8
  %12 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %18 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %17, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  br label %19

19:                                               ; preds = %43, %5
  %20 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %21 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  %27 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %28 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %29 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @VMM_DEBUG(%struct.nvkm_vmm* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %35 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %39 = call i32 @nvkm_vmm_map_valid(%struct.nvkm_vmm* %34, %struct.nvkm_vma* %35, i8* %36, i32 %37, %struct.nvkm_vmm_map* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %51

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %45 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 1
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %45, align 8
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @VMM_DEBUG(%struct.nvkm_vmm*, i8*, i64) #1

declare dso_local i32 @nvkm_vmm_map_valid(%struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32, %struct.nvkm_vmm_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
