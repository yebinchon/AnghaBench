; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_io_mem_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_io_mem_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_6__, %struct.ttm_bo_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ttm_bo_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ttm_buffer_object*, i64)* @ttm_bo_io_mem_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ttm_bo_io_mem_pfn(%struct.ttm_buffer_object* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ttm_bo_device*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %8 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %7, i32 0, i32 1
  %9 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  store %struct.ttm_bo_device* %9, %struct.ttm_bo_device** %6, align 8
  %10 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %11 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i64 (%struct.ttm_buffer_object*, i64)**
  %15 = load i64 (%struct.ttm_buffer_object*, i64)*, i64 (%struct.ttm_buffer_object*, i64)** %14, align 8
  %16 = icmp ne i64 (%struct.ttm_buffer_object*, i64)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i64 (%struct.ttm_buffer_object*, i64)**
  %23 = load i64 (%struct.ttm_buffer_object*, i64)*, i64 (%struct.ttm_buffer_object*, i64)** %22, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 %23(%struct.ttm_buffer_object* %24, i64 %25)
  store i64 %26, i64* %3, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %32, %37
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %27, %17
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
