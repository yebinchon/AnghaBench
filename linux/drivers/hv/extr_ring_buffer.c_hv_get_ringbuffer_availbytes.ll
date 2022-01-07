; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_get_ringbuffer_availbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_get_ringbuffer_availbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_ring_buffer_info*, i64*, i64*)* @hv_get_ringbuffer_availbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.hv_ring_buffer_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %11 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @READ_ONCE(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %17 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @READ_ONCE(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %23 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 %30, %31
  %33 = sub nsw i64 %29, %32
  br label %38

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub nsw i64 %35, %36
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i64 [ %33, %28 ], [ %37, %34 ]
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %41, %43
  %45 = load i64*, i64** %5, align 8
  store i64 %44, i64* %45, align 8
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
