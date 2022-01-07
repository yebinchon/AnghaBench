; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_ptr_stale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_ptr_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*, %struct.bkey*, i32)* @ptr_stale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_stale(%struct.cache_set* %0, %struct.bkey* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %8 = load %struct.bkey*, %struct.bkey** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.TYPE_2__* @PTR_BUCKET(%struct.cache_set* %7, %struct.bkey* %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bkey*, %struct.bkey** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @PTR_GEN(%struct.bkey* %13, i32 %14)
  %16 = call i32 @gen_after(i32 %12, i32 %15)
  ret i32 %16
}

declare dso_local i32 @gen_after(i32, i32) #1

declare dso_local %struct.TYPE_2__* @PTR_BUCKET(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @PTR_GEN(%struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
