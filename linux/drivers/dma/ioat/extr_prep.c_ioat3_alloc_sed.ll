; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat3_alloc_sed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat3_alloc_sed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_sed_ent = type { i32, i32, i32 }
%struct.ioatdma_device = type { i32* }

@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ioat_sed_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioat_sed_ent* (%struct.ioatdma_device*, i32)* @ioat3_alloc_sed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioat_sed_ent* @ioat3_alloc_sed(%struct.ioatdma_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ioat_sed_ent*, align 8
  %4 = alloca %struct.ioatdma_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioat_sed_ent*, align 8
  %7 = alloca i32, align 4
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @ioat_sed_cache, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.ioat_sed_ent* @kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.ioat_sed_ent* %13, %struct.ioat_sed_ent** %6, align 8
  %14 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  %15 = icmp ne %struct.ioat_sed_ent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.ioat_sed_ent* null, %struct.ioat_sed_ent** %3, align 8
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  %20 = getelementptr inbounds %struct.ioat_sed_ent, %struct.ioat_sed_ent* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %22 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  %30 = getelementptr inbounds %struct.ioat_sed_ent, %struct.ioat_sed_ent* %29, i32 0, i32 2
  %31 = call i32 @dma_pool_alloc(i32 %27, i32 %28, i32* %30)
  %32 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  %33 = getelementptr inbounds %struct.ioat_sed_ent, %struct.ioat_sed_ent* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  %35 = getelementptr inbounds %struct.ioat_sed_ent, %struct.ioat_sed_ent* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %17
  %39 = load i32, i32* @ioat_sed_cache, align 4
  %40 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  %41 = call i32 @kmem_cache_free(i32 %39, %struct.ioat_sed_ent* %40)
  store %struct.ioat_sed_ent* null, %struct.ioat_sed_ent** %3, align 8
  br label %44

42:                                               ; preds = %17
  %43 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %6, align 8
  store %struct.ioat_sed_ent* %43, %struct.ioat_sed_ent** %3, align 8
  br label %44

44:                                               ; preds = %42, %38, %16
  %45 = load %struct.ioat_sed_ent*, %struct.ioat_sed_ent** %3, align 8
  ret %struct.ioat_sed_ent* %45
}

declare dso_local %struct.ioat_sed_ent* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ioat_sed_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
