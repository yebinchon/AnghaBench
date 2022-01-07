; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_unpopulate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_unpopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_tt*)* }

@tt_unpopulated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_tt_unpopulate(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %3 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %4 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @tt_unpopulated, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %11 = call i32 @ttm_tt_clear_mapping(%struct.ttm_tt* %10)
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %17, align 8
  %19 = icmp ne i32 (%struct.ttm_tt*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %9
  %21 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %22 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %26, align 8
  %28 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %29 = call i32 %27(%struct.ttm_tt* %28)
  br label %33

30:                                               ; preds = %9
  %31 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %32 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %31)
  br label %33

33:                                               ; preds = %8, %30, %20
  ret void
}

declare dso_local i32 @ttm_tt_clear_mapping(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
