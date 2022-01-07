; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c___qxl_bo_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c___qxl_bo_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_bo = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%p pin failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_bo*)* @__qxl_bo_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qxl_bo_pin(%struct.qxl_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_bo*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.qxl_bo* %0, %struct.qxl_bo** %3, align 8
  %7 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %9 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %14 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %19 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %24 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %25 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo* %23, i32 %26, i32 1)
  %28 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %29 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %28, i32 0, i32 2
  %30 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %31 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %30, i32 0, i32 1
  %32 = call i32 @ttm_bo_validate(%struct.TYPE_4__* %29, i32* %31, %struct.ttm_operation_ctx* %4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %40 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %22
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.qxl_bo* %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo*, i32, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_4__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dev_err(i32, i8*, %struct.qxl_bo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
