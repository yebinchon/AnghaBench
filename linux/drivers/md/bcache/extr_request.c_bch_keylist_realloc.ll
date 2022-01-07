; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_keylist_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_keylist_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keylist = type { i32 }
%struct.cache_set = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keylist*, i32, %struct.cache_set*)* @bch_keylist_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_keylist_realloc(%struct.keylist* %0, i32 %1, %struct.cache_set* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.keylist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.keylist* %0, %struct.keylist** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cache_set* %2, %struct.cache_set** %7, align 8
  %10 = load %struct.keylist*, %struct.keylist** %5, align 8
  %11 = call i64 @bch_keylist_nkeys(%struct.keylist* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = mul i64 %16, 4
  %18 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %19 = call i32 @block_bytes(%struct.cache_set* %18)
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = icmp ugt i64 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.keylist*, %struct.keylist** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @__bch_keylist_realloc(%struct.keylist* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @bch_keylist_nkeys(%struct.keylist*) #1

declare dso_local i32 @block_bytes(%struct.cache_set*) #1

declare dso_local i32 @__bch_keylist_realloc(%struct.keylist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
