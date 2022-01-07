; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_fill_stream_allocation_row_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_fill_stream_allocation_row_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_mst_stream_allocation = type { i64, %struct.stream_encoder* }
%struct.stream_encoder = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_mst_stream_allocation*, i64*, i64*)* @fill_stream_allocation_row_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stream_allocation_row_info(%struct.link_mst_stream_allocation* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.link_mst_stream_allocation*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.stream_encoder*, align 8
  store %struct.link_mst_stream_allocation* %0, %struct.link_mst_stream_allocation** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.link_mst_stream_allocation*, %struct.link_mst_stream_allocation** %4, align 8
  %9 = getelementptr inbounds %struct.link_mst_stream_allocation, %struct.link_mst_stream_allocation* %8, i32 0, i32 1
  %10 = load %struct.stream_encoder*, %struct.stream_encoder** %9, align 8
  store %struct.stream_encoder* %10, %struct.stream_encoder** %7, align 8
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %7, align 8
  %12 = icmp ne %struct.stream_encoder* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.stream_encoder*, %struct.stream_encoder** %7, align 8
  %15 = getelementptr inbounds %struct.stream_encoder, %struct.stream_encoder* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.link_mst_stream_allocation*, %struct.link_mst_stream_allocation** %4, align 8
  %19 = getelementptr inbounds %struct.link_mst_stream_allocation, %struct.link_mst_stream_allocation* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %6, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
