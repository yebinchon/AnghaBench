; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nvkm_mem = type { i32, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_memory*)* @nvkm_mem_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvkm_mem_addr(%struct.nvkm_memory* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nvkm_memory*, align 8
  %4 = alloca %struct.nvkm_mem*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %3, align 8
  %5 = load %struct.nvkm_memory*, %struct.nvkm_memory** %3, align 8
  %6 = call %struct.nvkm_mem* @nvkm_mem(%struct.nvkm_memory* %5)
  store %struct.nvkm_mem* %6, %struct.nvkm_mem** %4, align 8
  %7 = load %struct.nvkm_mem*, %struct.nvkm_mem** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.nvkm_mem*, %struct.nvkm_mem** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.nvkm_mem*, %struct.nvkm_mem** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %2, align 8
  br label %23

22:                                               ; preds = %11, %1
  store i64 -1, i64* %2, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local %struct.nvkm_mem* @nvkm_mem(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
