; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_pool_init_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_pool_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_page_pool = type { i32, i8*, i32, i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_page_pool*, i32, i8*, i32)* @ttm_page_pool_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_page_pool_init_locked(%struct.ttm_page_pool* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ttm_page_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_page_pool* %0, %struct.ttm_page_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %10 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %9, i32 0, i32 7
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %13 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %14, i32 0, i32 6
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %18 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %20 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %23 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %29 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
