; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_map_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_map_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nvkm_mem = type { i32, i64 }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_mem_map_host(%struct.nvkm_memory* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nvkm_mem*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %8 = call %struct.nvkm_mem* @nvkm_mem(%struct.nvkm_memory* %7)
  store %struct.nvkm_mem* %8, %struct.nvkm_mem** %6, align 8
  %9 = load %struct.nvkm_mem*, %struct.nvkm_mem** %6, align 8
  %10 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.nvkm_mem*, %struct.nvkm_mem** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nvkm_mem*, %struct.nvkm_mem** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VM_MAP, align 4
  %21 = load i32, i32* @PAGE_KERNEL, align 4
  %22 = call i8* @vmap(i64 %16, i32 %19, i32 %20, i32 %21)
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %31

28:                                               ; preds = %13
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.nvkm_mem* @nvkm_mem(%struct.nvkm_memory*) #1

declare dso_local i8* @vmap(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
