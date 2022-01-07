; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_eviction_valuable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_eviction_valuable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ttm_place = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_eviction_valuable(%struct.ttm_buffer_object* %0, %struct.ttm_place* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_place*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_place* %1, %struct.ttm_place** %5, align 8
  %6 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %7 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %12, %16
  %18 = icmp sge i64 %8, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %24, %19
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
