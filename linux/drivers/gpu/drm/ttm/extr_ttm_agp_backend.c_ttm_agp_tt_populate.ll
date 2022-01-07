; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_agp_backend.c_ttm_agp_tt_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_agp_backend.c_ttm_agp_tt_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64 }
%struct.ttm_operation_ctx = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_agp_tt_populate(%struct.ttm_tt* %0, %struct.ttm_operation_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_operation_ctx*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %5, align 8
  %6 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %7 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @tt_unpopulated, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %14 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %5, align 8
  %15 = call i32 @ttm_pool_populate(%struct.ttm_tt* %13, %struct.ttm_operation_ctx* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @ttm_pool_populate(%struct.ttm_tt*, %struct.ttm_operation_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
