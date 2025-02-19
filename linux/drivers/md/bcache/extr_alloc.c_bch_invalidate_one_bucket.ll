; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_invalidate_one_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_invalidate_one_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32 }
%struct.bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bucket*)* @bch_invalidate_one_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_invalidate_one_bucket(%struct.cache* %0, %struct.bucket* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bucket*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bucket* %1, %struct.bucket** %4, align 8
  %5 = load %struct.cache*, %struct.cache** %3, align 8
  %6 = load %struct.bucket*, %struct.bucket** %4, align 8
  %7 = call i32 @__bch_invalidate_one_bucket(%struct.cache* %5, %struct.bucket* %6)
  %8 = load %struct.cache*, %struct.cache** %3, align 8
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 1
  %10 = load %struct.bucket*, %struct.bucket** %4, align 8
  %11 = load %struct.cache*, %struct.cache** %3, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.bucket, %struct.bucket* %10, i64 %15
  %17 = call i32 @fifo_push(i32* %9, %struct.bucket* %16)
  ret void
}

declare dso_local i32 @__bch_invalidate_one_bucket(%struct.cache*, %struct.bucket*) #1

declare dso_local i32 @fifo_push(i32*, %struct.bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
