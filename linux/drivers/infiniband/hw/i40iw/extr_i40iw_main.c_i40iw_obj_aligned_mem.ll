; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_obj_aligned_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_obj_aligned_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.i40iw_dma_mem = type { i64, i64, i64 }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_obj_aligned_mem(%struct.i40iw_device* %0, %struct.i40iw_dma_mem* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_dma_mem*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store %struct.i40iw_dma_mem* %1, %struct.i40iw_dma_mem** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i64 @ALIGN(i64 %21, i64 %23)
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %10, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = ptrtoint i32* %32 to i64
  %34 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %7, align 8
  %35 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %37 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %7, align 8
  %43 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %7, align 8
  %48 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %53 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %57 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %55, %59
  %61 = icmp sgt i64 %51, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %25
  %63 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %63, i32* %5, align 4
  br label %81

64:                                               ; preds = %25
  %65 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %7, align 8
  %66 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %71 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %7, align 8
  %74 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %79 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %64, %62
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
