; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c___qxl_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c___qxl_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_bo = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%p unpin not necessary\0A\00", align 1
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%p validate failed for unpin\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_bo*)* @__qxl_bo_unpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qxl_bo_unpin(%struct.qxl_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_bo*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qxl_bo* %0, %struct.qxl_bo** %3, align 8
  %8 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %10 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %15 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %23 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.qxl_bo* %22)
  store i32 0, i32* %2, align 4
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %26 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %30 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %76

34:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %38 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %46 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %44
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %59 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %58, i32 0, i32 1
  %60 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %61 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %60, i32 0, i32 0
  %62 = call i32 @ttm_bo_validate(%struct.TYPE_7__* %59, %struct.TYPE_8__* %61, %struct.ttm_operation_ctx* %4)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.qxl_bo* %72)
  br label %74

74:                                               ; preds = %68, %57
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %33, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_warn(i32, i8*, %struct.qxl_bo*) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dev_err(i32, i8*, %struct.qxl_bo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
