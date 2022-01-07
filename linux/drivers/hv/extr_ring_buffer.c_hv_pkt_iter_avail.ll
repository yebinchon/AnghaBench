; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_pkt_iter_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_pkt_iter_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hv_ring_buffer_info*)* @hv_pkt_iter_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hv_pkt_iter_avail(%struct.hv_ring_buffer_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hv_ring_buffer_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %3, align 8
  %6 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %7 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %10 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @READ_ONCE(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %2, align 8
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %24 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %22, %18
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
