; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)* }
%struct.ttm_mem_reg = type { i32 }
%struct.ttm_operation_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@tt_bound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1, %struct.ttm_operation_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_tt*, align 8
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca %struct.ttm_operation_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %5, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %6, align 8
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %10 = icmp ne %struct.ttm_tt* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %16 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @tt_bound, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %23 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %7, align 8
  %24 = call i32 @ttm_tt_populate(%struct.ttm_tt* %22, %struct.ttm_operation_ctx* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %31 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)** %33, align 8
  %35 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %36 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %37 = call i32 %34(%struct.ttm_tt* %35, %struct.ttm_mem_reg* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %29
  %46 = load i64, i64* @tt_bound, align 8
  %47 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %48 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %43, %27, %20, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ttm_tt_populate(%struct.ttm_tt*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
