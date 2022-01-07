; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_cache_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_cache_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i64 }

@.str = private unnamed_addr constant [255 x i8] c"You have created a cache device with a lot of individual cache blocks (%llu)\0AAll these mappings can consume a lot of kernel memory, and take some time to read/write.\0APlease consider increasing the cache block size to reduce the overall cache block count.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i64)* @set_cache_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cache_size(%struct.cache* %0, i64 %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @from_cblock(i64 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 1048576
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.cache*, %struct.cache** %3, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 @DMWARN_LIMIT(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %10, %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.cache*, %struct.cache** %3, align 8
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  ret void
}

declare dso_local i32 @from_cblock(i64) #1

declare dso_local i32 @DMWARN_LIMIT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
