; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_PTR_CACHE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_PTR_CACHE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.cache_set = type { %struct.cache** }
%struct.bkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache* (%struct.cache_set*, %struct.bkey*, i32)* @PTR_CACHE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache* @PTR_CACHE(%struct.cache_set* %0, %struct.bkey* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %8 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %7, i32 0, i32 0
  %9 = load %struct.cache**, %struct.cache*** %8, align 8
  %10 = load %struct.bkey*, %struct.bkey** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @PTR_DEV(%struct.bkey* %10, i32 %11)
  %13 = getelementptr inbounds %struct.cache*, %struct.cache** %9, i64 %12
  %14 = load %struct.cache*, %struct.cache** %13, align 8
  ret %struct.cache* %14
}

declare dso_local i64 @PTR_DEV(%struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
