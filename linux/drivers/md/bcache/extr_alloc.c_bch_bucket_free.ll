; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_bucket_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_bucket_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_bucket_free(%struct.cache_set* %0, %struct.bkey* %1) #0 {
  %3 = alloca %struct.cache_set*, align 8
  %4 = alloca %struct.bkey*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %3, align 8
  store %struct.bkey* %1, %struct.bkey** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bkey*, %struct.bkey** %4, align 8
  %9 = call i32 @KEY_PTRS(%struct.bkey* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %13 = load %struct.bkey*, %struct.bkey** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PTR_CACHE(%struct.cache_set* %12, %struct.bkey* %13, i32 %14)
  %16 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %17 = load %struct.bkey*, %struct.bkey** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PTR_BUCKET(%struct.cache_set* %16, %struct.bkey* %17, i32 %18)
  %20 = call i32 @__bch_bucket_free(i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i32 @__bch_bucket_free(i32, i32) #1

declare dso_local i32 @PTR_CACHE(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @PTR_BUCKET(%struct.cache_set*, %struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
