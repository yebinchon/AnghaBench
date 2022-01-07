; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_invalidate_buckets_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_invalidate_buckets_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i64, i32, i32, %struct.TYPE_2__, %struct.bucket*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @invalidate_buckets_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_buckets_fifo(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.bucket*, align 8
  %4 = alloca i64, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %68, %1
  %6 = load %struct.cache*, %struct.cache** %2, align 8
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 5
  %8 = call i32 @fifo_full(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %69

11:                                               ; preds = %5
  %12 = load %struct.cache*, %struct.cache** %2, align 8
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cache*, %struct.cache** %2, align 8
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = load %struct.cache*, %struct.cache** %2, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cache*, %struct.cache** %2, align 8
  %25 = getelementptr inbounds %struct.cache, %struct.cache* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %23, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20, %11
  %30 = load %struct.cache*, %struct.cache** %2, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cache*, %struct.cache** %2, align 8
  %35 = getelementptr inbounds %struct.cache, %struct.cache* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.cache*, %struct.cache** %2, align 8
  %38 = getelementptr inbounds %struct.cache, %struct.cache* %37, i32 0, i32 4
  %39 = load %struct.bucket*, %struct.bucket** %38, align 8
  %40 = load %struct.cache*, %struct.cache** %2, align 8
  %41 = getelementptr inbounds %struct.cache, %struct.cache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.bucket, %struct.bucket* %39, i64 %42
  store %struct.bucket* %44, %struct.bucket** %3, align 8
  %45 = load %struct.cache*, %struct.cache** %2, align 8
  %46 = load %struct.bucket*, %struct.bucket** %3, align 8
  %47 = call i64 @bch_can_invalidate_bucket(%struct.cache* %45, %struct.bucket* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.cache*, %struct.cache** %2, align 8
  %51 = load %struct.bucket*, %struct.bucket** %3, align 8
  %52 = call i32 @bch_invalidate_one_bucket(%struct.cache* %50, %struct.bucket* %51)
  br label %53

53:                                               ; preds = %49, %36
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  %56 = load %struct.cache*, %struct.cache** %2, align 8
  %57 = getelementptr inbounds %struct.cache, %struct.cache* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %55, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.cache*, %struct.cache** %2, align 8
  %63 = getelementptr inbounds %struct.cache, %struct.cache* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.cache*, %struct.cache** %2, align 8
  %65 = getelementptr inbounds %struct.cache, %struct.cache* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wake_up_gc(i32 %66)
  br label %69

68:                                               ; preds = %53
  br label %5

69:                                               ; preds = %61, %5
  ret void
}

declare dso_local i32 @fifo_full(i32*) #1

declare dso_local i64 @bch_can_invalidate_bucket(%struct.cache*, %struct.bucket*) #1

declare dso_local i32 @bch_invalidate_one_bucket(%struct.cache*, %struct.bucket*) #1

declare dso_local i32 @wake_up_gc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
