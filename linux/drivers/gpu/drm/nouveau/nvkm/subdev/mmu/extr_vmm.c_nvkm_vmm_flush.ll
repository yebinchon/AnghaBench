; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i64)* }

@NVKM_VMM_LEVELS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"flush: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm_iter*)* @nvkm_vmm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_flush(%struct.nvkm_vmm_iter* %0) #0 {
  %2 = alloca %struct.nvkm_vmm_iter*, align 8
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %2, align 8
  %3 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NVKM_VMM_LEVELS_MAX, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_4__*, i64)* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %8
  %18 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %19 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %20 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @TRA(%struct.nvkm_vmm_iter* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %28, align 8
  %30 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 %29(%struct.TYPE_4__* %32, i64 %35)
  br label %37

37:                                               ; preds = %17, %8
  %38 = load i64, i64* @NVKM_VMM_LEVELS_MAX, align 8
  %39 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %40 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @TRA(%struct.nvkm_vmm_iter*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
