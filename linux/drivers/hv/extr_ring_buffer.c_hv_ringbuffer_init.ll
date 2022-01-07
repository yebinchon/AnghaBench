; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i32, i32, i32, i64, i32, %struct.hv_ring_buffer* }
%struct.hv_ring_buffer = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_ringbuffer_init(%struct.hv_ring_buffer_info* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 24, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page** @kcalloc(i32 %17, i32 8, i32 %18)
  store %struct.page** %19, %struct.page*** %9, align 8
  %20 = load %struct.page**, %struct.page*** %9, align 8
  %21 = icmp ne %struct.page** %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %111

25:                                               ; preds = %3
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load %struct.page**, %struct.page*** %9, align 8
  %28 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 0
  store %struct.page* %26, %struct.page** %28, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %49, %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 2, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = srem i32 %37, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page, %struct.page* %36, i64 %42
  %44 = load %struct.page**, %struct.page*** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %47
  store %struct.page* %43, %struct.page** %48, align 8
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.page**, %struct.page*** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @VM_MAP, align 4
  %58 = load i32, i32* @PAGE_KERNEL, align 4
  %59 = call i64 @vmap(%struct.page** %53, i32 %56, i32 %57, i32 %58)
  %60 = inttoptr i64 %59 to %struct.hv_ring_buffer*
  %61 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %62 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %61, i32 0, i32 5
  store %struct.hv_ring_buffer* %60, %struct.hv_ring_buffer** %62, align 8
  %63 = load %struct.page**, %struct.page*** %9, align 8
  %64 = call i32 @kfree(%struct.page** %63)
  %65 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %66 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %65, i32 0, i32 5
  %67 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %66, align 8
  %68 = icmp ne %struct.hv_ring_buffer* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %52
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %111

72:                                               ; preds = %52
  %73 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %74 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %73, i32 0, i32 5
  %75 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %74, align 8
  %76 = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %78 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %77, i32 0, i32 5
  %79 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %78, align 8
  %80 = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %82 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %81, i32 0, i32 5
  %83 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %82, align 8
  %84 = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %90 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %92 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 10
  %95 = call i32 @reciprocal_value(i32 %94)
  %96 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %97 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %99 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 24
  %103 = trunc i64 %102 to i32
  %104 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %105 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %107 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %109 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %108, i32 0, i32 2
  %110 = call i32 @spin_lock_init(i32* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %72, %69, %22
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local i64 @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @reciprocal_value(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
