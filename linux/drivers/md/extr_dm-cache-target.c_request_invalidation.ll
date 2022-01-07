; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_request_invalidation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_request_invalidation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.cblock_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.cblock_range*)* @request_invalidation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_invalidation(%struct.cache* %0, %struct.cblock_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.cblock_range*, align 8
  %6 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store %struct.cblock_range* %1, %struct.cblock_range** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %9 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %12 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %7
  %16 = load %struct.cache*, %struct.cache** %4, align 8
  %17 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %18 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @invalidate_cblock(%struct.cache* %16, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %27 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @cblock_succ(i64 %28)
  %30 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %31 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %7

32:                                               ; preds = %7
  %33 = load %struct.cache*, %struct.cache** %4, align 8
  %34 = getelementptr inbounds %struct.cache, %struct.cache* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @invalidate_cblock(%struct.cache*, i64) #1

declare dso_local i64 @cblock_succ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
