; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_pq16_set_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_pq16_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_raw_descriptor = type { i64* }
%struct.ioat_pq_descriptor = type { i8** }
%struct.ioat_pq16a_descriptor = type { i8** }

@pq16_idx_to_desc = common dso_local global i64* null, align 8
@pq16_idx_to_field = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_raw_descriptor**, i64, i64, i8*, i32)* @pq16_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pq16_set_src(%struct.ioat_raw_descriptor** %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ioat_raw_descriptor**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ioat_pq_descriptor*, align 8
  %12 = alloca %struct.ioat_pq16a_descriptor*, align 8
  %13 = alloca %struct.ioat_raw_descriptor*, align 8
  store %struct.ioat_raw_descriptor** %0, %struct.ioat_raw_descriptor*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %6, align 8
  %15 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %14, i64 0
  %16 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %15, align 8
  %17 = bitcast %struct.ioat_raw_descriptor* %16 to %struct.ioat_pq_descriptor*
  store %struct.ioat_pq_descriptor* %17, %struct.ioat_pq_descriptor** %11, align 8
  %18 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %6, align 8
  %19 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %18, i64 1
  %20 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %19, align 8
  %21 = bitcast %struct.ioat_raw_descriptor* %20 to %struct.ioat_pq16a_descriptor*
  store %struct.ioat_pq16a_descriptor* %21, %struct.ioat_pq16a_descriptor** %12, align 8
  %22 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %6, align 8
  %23 = load i64*, i64** @pq16_idx_to_desc, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %22, i64 %27
  %29 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %28, align 8
  store %struct.ioat_raw_descriptor* %29, %struct.ioat_raw_descriptor** %13, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %13, align 8
  %34 = getelementptr inbounds %struct.ioat_raw_descriptor, %struct.ioat_raw_descriptor* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64*, i64** @pq16_idx_to_field, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  store i64 %32, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ult i32 %42, 8
  br i1 %43, label %44, label %52

44:                                               ; preds = %5
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %11, align 8
  %47 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %61

52:                                               ; preds = %5
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.ioat_pq16a_descriptor*, %struct.ioat_pq16a_descriptor** %12, align 8
  %55 = getelementptr inbounds %struct.ioat_pq16a_descriptor, %struct.ioat_pq16a_descriptor* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub i32 %57, 8
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %53, i8** %60, align 8
  br label %61

61:                                               ; preds = %52, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
