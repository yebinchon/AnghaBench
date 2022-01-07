; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c___bch_invalidate_one_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c___bch_invalidate_one_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bucket = type { i32, i32 }

@GC_MARK_RECLAIMABLE = common dso_local global i64 0, align 8
@INITIAL_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bch_invalidate_one_bucket(%struct.cache* %0, %struct.bucket* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bucket*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bucket* %1, %struct.bucket** %4, align 8
  %5 = load %struct.cache*, %struct.cache** %3, align 8
  %6 = getelementptr inbounds %struct.cache, %struct.cache* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.bucket*, %struct.bucket** %4, align 8
  %11 = call i64 @GC_MARK(%struct.bucket* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.bucket*, %struct.bucket** %4, align 8
  %15 = call i64 @GC_MARK(%struct.bucket* %14)
  %16 = load i64, i64* @GC_MARK_RECLAIMABLE, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.bucket*, %struct.bucket** %4, align 8
  %23 = call i64 @GC_SECTORS_USED(%struct.bucket* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.cache*, %struct.cache** %3, align 8
  %27 = load %struct.bucket*, %struct.bucket** %4, align 8
  %28 = load %struct.cache*, %struct.cache** %3, align 8
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds %struct.bucket, %struct.bucket* %27, i64 %32
  %34 = call i32 @trace_bcache_invalidate(%struct.cache* %26, %struct.bucket* %33)
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.cache*, %struct.cache** %3, align 8
  %37 = load %struct.bucket*, %struct.bucket** %4, align 8
  %38 = call i32 @bch_inc_gen(%struct.cache* %36, %struct.bucket* %37)
  %39 = load i32, i32* @INITIAL_PRIO, align 4
  %40 = load %struct.bucket*, %struct.bucket** %4, align 8
  %41 = getelementptr inbounds %struct.bucket, %struct.bucket* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bucket*, %struct.bucket** %4, align 8
  %43 = getelementptr inbounds %struct.bucket, %struct.bucket* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc(i32* %43)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @GC_MARK(%struct.bucket*) #1

declare dso_local i64 @GC_SECTORS_USED(%struct.bucket*) #1

declare dso_local i32 @trace_bcache_invalidate(%struct.cache*, %struct.bucket*) #1

declare dso_local i32 @bch_inc_gen(%struct.cache*, %struct.bucket*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
