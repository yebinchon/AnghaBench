; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_alloc_ioctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_alloc_ioctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_ioctx = type { i32, i32 }
%struct.srpt_device = type { i32 }
%struct.kmem_cache = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srpt_ioctx* (%struct.srpt_device*, i32, %struct.kmem_cache*, i32)* @srpt_alloc_ioctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srpt_ioctx* @srpt_alloc_ioctx(%struct.srpt_device* %0, i32 %1, %struct.kmem_cache* %2, i32 %3) #0 {
  %5 = alloca %struct.srpt_ioctx*, align 8
  %6 = alloca %struct.srpt_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kmem_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.srpt_ioctx*, align 8
  store %struct.srpt_device* %0, %struct.srpt_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.kmem_cache* %2, %struct.kmem_cache** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.srpt_ioctx* @kzalloc(i32 %11, i32 %12)
  store %struct.srpt_ioctx* %13, %struct.srpt_ioctx** %10, align 8
  %14 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %15 = icmp ne %struct.srpt_ioctx* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %61

17:                                               ; preds = %4
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kmem_cache_alloc(%struct.kmem_cache* %18, i32 %19)
  %21 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %22 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %24 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %58

28:                                               ; preds = %17
  %29 = load %struct.srpt_device*, %struct.srpt_device** %6, align 8
  %30 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %33 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %36 = call i32 @kmem_cache_size(%struct.kmem_cache* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ib_dma_map_single(i32 %31, i32 %34, i32 %36, i32 %37)
  %39 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %40 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.srpt_device*, %struct.srpt_device** %6, align 8
  %42 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %45 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ib_dma_mapping_error(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %52

50:                                               ; preds = %28
  %51 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  store %struct.srpt_ioctx* %51, %struct.srpt_ioctx** %5, align 8
  br label %62

52:                                               ; preds = %49
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %54 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %55 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kmem_cache_free(%struct.kmem_cache* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %27
  %59 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %10, align 8
  %60 = call i32 @kfree(%struct.srpt_ioctx* %59)
  br label %61

61:                                               ; preds = %58, %16
  store %struct.srpt_ioctx* null, %struct.srpt_ioctx** %5, align 8
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %5, align 8
  ret %struct.srpt_ioctx* %63
}

declare dso_local %struct.srpt_ioctx* @kzalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_size(%struct.kmem_cache*) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, i32) #1

declare dso_local i32 @kfree(%struct.srpt_ioctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
