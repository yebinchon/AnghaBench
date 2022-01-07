; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_subtract_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_subtract_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bkey = type { i32 }
%struct.cache_set = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bkey*, %struct.cache_set*, i32, i32)* @bch_subtract_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_subtract_dirty(%struct.bkey* %0, %struct.cache_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca %struct.cache_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bkey* %0, %struct.bkey** %5, align 8
  store %struct.cache_set* %1, %struct.cache_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bkey*, %struct.bkey** %5, align 8
  %10 = call i64 @KEY_DIRTY(%struct.bkey* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %14 = load %struct.bkey*, %struct.bkey** %5, align 8
  %15 = call i32 @KEY_INODE(%struct.bkey* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @bcache_dev_sectors_dirty_add(%struct.cache_set* %13, i32 %15, i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %12, %4
  ret void
}

declare dso_local i64 @KEY_DIRTY(%struct.bkey*) #1

declare dso_local i32 @bcache_dev_sectors_dirty_add(%struct.cache_set*, i32, i32, i32) #1

declare dso_local i32 @KEY_INODE(%struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
