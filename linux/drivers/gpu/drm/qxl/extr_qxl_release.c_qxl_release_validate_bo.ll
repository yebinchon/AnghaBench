; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_validate_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_validate_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.qxl_bo = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@__const.qxl_release_validate_bo.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_bo*)* @qxl_release_validate_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_release_validate_bo(%struct.qxl_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_bo*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca i32, align 4
  store %struct.qxl_bo* %0, %struct.qxl_bo** %3, align 8
  %6 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.qxl_release_validate_bo.ctx to i8*), i64 8, i1 false)
  %7 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %8 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %13 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %14 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo* %12, i32 %15, i32 0)
  %17 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %18 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %17, i32 0, i32 0
  %19 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %20 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %19, i32 0, i32 1
  %21 = call i32 @ttm_bo_validate(%struct.TYPE_6__* %18, i32* %20, %struct.ttm_operation_ctx* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %29 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_resv_reserve_shared(i32 %32, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %40 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %47 = call i32 @qxl_bo_check_id(i32 %45, %struct.qxl_bo* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %36, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo*, i32, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_6__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #2

declare dso_local i32 @qxl_bo_check_id(i32, %struct.qxl_bo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
