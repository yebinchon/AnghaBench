; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_remove_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_remove_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32*, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VMW_CMDBUF_INLINE_SIZE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_cmdbuf_remove_pool(%struct.vmw_cmdbuf_man* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_man*, align 8
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %2, align 8
  %3 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %4 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %51

8:                                                ; preds = %1
  %9 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %10 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load i32, i32* @VMW_CMDBUF_INLINE_SIZE, align 4
  %12 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %13 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 10, %15
  %17 = call i32 @vmw_cmdbuf_idle(%struct.vmw_cmdbuf_man* %14, i32 0, i32 %16)
  %18 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %19 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %8
  %23 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %24 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %23, i32 0, i32 6
  %25 = call i32 @ttm_bo_kunmap(i32* %24)
  %26 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %27 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ttm_bo_put(i32* %28)
  %30 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %31 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  br label %51

32:                                               ; preds = %8
  %33 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %34 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %42 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %45 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %48 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dma_free_coherent(i32* %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %7, %32, %22
  ret void
}

declare dso_local i32 @vmw_cmdbuf_idle(%struct.vmw_cmdbuf_man*, i32, i32) #1

declare dso_local i32 @ttm_bo_kunmap(i32*) #1

declare dso_local i32 @ttm_bo_put(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
