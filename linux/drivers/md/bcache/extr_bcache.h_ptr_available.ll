; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_ptr_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_ptr_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }

@MAX_CACHES_PER_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*, %struct.bkey*, i32)* @ptr_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_available(%struct.cache_set* %0, %struct.bkey* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bkey*, %struct.bkey** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @PTR_DEV(%struct.bkey* %7, i32 %8)
  %10 = load i64, i64* @MAX_CACHES_PER_SET, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %14 = load %struct.bkey*, %struct.bkey** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @PTR_CACHE(%struct.cache_set* %13, %struct.bkey* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ false, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @PTR_DEV(%struct.bkey*, i32) #1

declare dso_local i64 @PTR_CACHE(%struct.cache_set*, %struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
