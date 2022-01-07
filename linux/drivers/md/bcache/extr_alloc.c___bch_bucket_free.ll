; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c___bch_bucket_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c___bch_bucket_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.bucket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bch_bucket_free(%struct.cache* %0, %struct.bucket* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bucket*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bucket* %1, %struct.bucket** %4, align 8
  %5 = load %struct.bucket*, %struct.bucket** %4, align 8
  %6 = call i32 @SET_GC_MARK(%struct.bucket* %5, i32 0)
  %7 = load %struct.bucket*, %struct.bucket** %4, align 8
  %8 = call i32 @SET_GC_SECTORS_USED(%struct.bucket* %7, i32 0)
  %9 = load %struct.cache*, %struct.cache** %3, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cache*, %struct.cache** %3, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.cache*, %struct.cache** %3, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.cache*, %struct.cache** %3, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.cache*, %struct.cache** %3, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i32 @bch_update_bucket_in_use(%struct.TYPE_2__* %29, i32* %33)
  br label %35

35:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @SET_GC_MARK(%struct.bucket*, i32) #1

declare dso_local i32 @SET_GC_SECTORS_USED(%struct.bucket*, i32) #1

declare dso_local i32 @bch_update_bucket_in_use(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
