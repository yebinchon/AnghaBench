; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_tt*)* }

@tt_unbound = common dso_local global i64 0, align 8
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_tt_destroy(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %3 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %4 = icmp eq %struct.ttm_tt* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %44

6:                                                ; preds = %1
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %8 = call i32 @ttm_tt_unbind(%struct.ttm_tt* %7)
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %10 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @tt_unbound, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %16 = call i32 @ttm_tt_unpopulate(%struct.ttm_tt* %15)
  br label %17

17:                                               ; preds = %14, %6
  %18 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %19 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %26 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %31 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @fput(i32* %32)
  br label %34

34:                                               ; preds = %29, %24, %17
  %35 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %36 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %40, align 8
  %42 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %43 = call i32 %41(%struct.ttm_tt* %42)
  br label %44

44:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @ttm_tt_unbind(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_tt_unpopulate(%struct.ttm_tt*) #1

declare dso_local i32 @fput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
