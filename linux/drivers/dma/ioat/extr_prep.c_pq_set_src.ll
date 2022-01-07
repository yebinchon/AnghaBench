; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_pq_set_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_pq_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_raw_descriptor = type { i64* }
%struct.ioat_pq_descriptor = type { i32* }

@pq_idx_to_desc = common dso_local global i32 0, align 4
@pq_idx_to_field = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_raw_descriptor**, i64, i64, i32, i32)* @pq_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pq_set_src(%struct.ioat_raw_descriptor** %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ioat_raw_descriptor**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ioat_pq_descriptor*, align 8
  %12 = alloca %struct.ioat_raw_descriptor*, align 8
  store %struct.ioat_raw_descriptor** %0, %struct.ioat_raw_descriptor*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %6, align 8
  %14 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %13, i64 0
  %15 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %14, align 8
  %16 = bitcast %struct.ioat_raw_descriptor* %15 to %struct.ioat_pq_descriptor*
  store %struct.ioat_pq_descriptor* %16, %struct.ioat_pq_descriptor** %11, align 8
  %17 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %6, align 8
  %18 = load i32, i32* @pq_idx_to_desc, align 4
  %19 = load i32, i32* %10, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %17, i64 %22
  %24 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %23, align 8
  store %struct.ioat_raw_descriptor* %24, %struct.ioat_raw_descriptor** %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %12, align 8
  %29 = getelementptr inbounds %struct.ioat_raw_descriptor, %struct.ioat_raw_descriptor* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64*, i64** @pq_idx_to_field, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  store i64 %27, i64* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %11, align 8
  %39 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
