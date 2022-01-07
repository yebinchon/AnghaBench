; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_can_invalidate_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_can_invalidate_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bucket = type { i32 }

@GC_MARK_RECLAIMABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_can_invalidate_bucket(%struct.cache* %0, %struct.bucket* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bucket*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bucket* %1, %struct.bucket** %4, align 8
  %5 = load %struct.cache*, %struct.cache** %3, align 8
  %6 = getelementptr inbounds %struct.cache, %struct.cache* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.bucket*, %struct.bucket** %4, align 8
  %15 = call i64 @GC_MARK(%struct.bucket* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.bucket*, %struct.bucket** %4, align 8
  %19 = call i64 @GC_MARK(%struct.bucket* %18)
  %20 = load i64, i64* @GC_MARK_RECLAIMABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17, %2
  %23 = load %struct.bucket*, %struct.bucket** %4, align 8
  %24 = getelementptr inbounds %struct.bucket, %struct.bucket* %23, i32 0, i32 0
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.bucket*, %struct.bucket** %4, align 8
  %29 = call i64 @can_inc_bucket_gen(%struct.bucket* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %22, %17
  %32 = phi i1 [ false, %22 ], [ false, %17 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @GC_MARK(%struct.bucket*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @can_inc_bucket_gen(%struct.bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
