; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_io_update_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_io_update_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.qxl_rect }
%struct.qxl_rect = type { i64, i64, i64, i64 }
%struct.qxl_bo = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"got io update area with no hw surface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QXL_IO_UPDATE_AREA_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_io_update_area(%struct.qxl_device* %0, %struct.qxl_bo* %1, %struct.qxl_rect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_bo*, align 8
  %7 = alloca %struct.qxl_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %6, align 8
  store %struct.qxl_rect* %2, %struct.qxl_rect** %7, align 8
  %12 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %13 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %20 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %28

24:                                               ; preds = %18
  %25 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %26 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %30 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %34 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.qxl_rect*, %struct.qxl_rect** %7, align 8
  %38 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %28
  %42 = load %struct.qxl_rect*, %struct.qxl_rect** %7, align 8
  %43 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load %struct.qxl_rect*, %struct.qxl_rect** %7, align 8
  %48 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.qxl_rect*, %struct.qxl_rect** %7, align 8
  %54 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46, %41, %28
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %84

61:                                               ; preds = %52
  %62 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %63 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %66 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.qxl_rect*, %struct.qxl_rect** %7, align 8
  %70 = bitcast %struct.qxl_rect* %68 to i8*
  %71 = bitcast %struct.qxl_rect* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 32, i1 false)
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %74 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %78 = load i32, i32* @QXL_IO_UPDATE_AREA_ASYNC, align 4
  %79 = call i32 @wait_for_io_cmd_user(%struct.qxl_device* %77, i32 0, i32 %78, i32 1)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %81 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %61, %58
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wait_for_io_cmd_user(%struct.qxl_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
