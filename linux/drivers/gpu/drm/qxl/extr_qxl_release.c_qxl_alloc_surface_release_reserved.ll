; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_alloc_surface_release_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_alloc_surface_release_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i64, %struct.qxl_bo* }
%struct.qxl_bo = type { i32 }
%union.qxl_release_info = type { i32 }

@QXL_SURFACE_CMD_DESTROY = common dso_local global i32 0, align 4
@QXL_RELEASE_SURFACE_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_alloc_surface_release_reserved(%struct.qxl_device* %0, i32 %1, %struct.qxl_release* %2, %struct.qxl_release** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qxl_release*, align 8
  %9 = alloca %struct.qxl_release**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qxl_bo*, align 8
  %12 = alloca %union.qxl_release_info*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.qxl_release* %2, %struct.qxl_release** %8, align 8
  store %struct.qxl_release** %3, %struct.qxl_release*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @QXL_SURFACE_CMD_DESTROY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %4
  %17 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %18 = icmp ne %struct.qxl_release* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  %20 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %21 = load i32, i32* @QXL_RELEASE_SURFACE_CMD, align 4
  %22 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %23 = call i32 @qxl_release_alloc(%struct.qxl_device* %20, i32 %21, %struct.qxl_release** %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %64

28:                                               ; preds = %19
  %29 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %30 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %29, i32 0, i32 1
  %31 = load %struct.qxl_bo*, %struct.qxl_bo** %30, align 8
  store %struct.qxl_bo* %31, %struct.qxl_bo** %11, align 8
  %32 = load %struct.qxl_bo*, %struct.qxl_bo** %11, align 8
  %33 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %34 = load %struct.qxl_release*, %struct.qxl_release** %33, align 8
  %35 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %34, i32 0, i32 1
  store %struct.qxl_bo* %32, %struct.qxl_bo** %35, align 8
  %36 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %37 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 64
  %40 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %41 = load %struct.qxl_release*, %struct.qxl_release** %40, align 8
  %42 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %44 = load %struct.qxl_release*, %struct.qxl_release** %43, align 8
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %11, align 8
  %46 = call i32 @qxl_release_list_add(%struct.qxl_release* %44, %struct.qxl_bo* %45)
  %47 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %48 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %49 = load %struct.qxl_release*, %struct.qxl_release** %48, align 8
  %50 = call %union.qxl_release_info* @qxl_release_map(%struct.qxl_device* %47, %struct.qxl_release* %49)
  store %union.qxl_release_info* %50, %union.qxl_release_info** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %union.qxl_release_info*, %union.qxl_release_info** %12, align 8
  %53 = bitcast %union.qxl_release_info* %52 to i32*
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %55 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %56 = load %struct.qxl_release*, %struct.qxl_release** %55, align 8
  %57 = load %union.qxl_release_info*, %union.qxl_release_info** %12, align 8
  %58 = call i32 @qxl_release_unmap(%struct.qxl_device* %54, %struct.qxl_release* %56, %union.qxl_release_info* %57)
  store i32 0, i32* %5, align 4
  br label %64

59:                                               ; preds = %16, %4
  %60 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %61 = load i32, i32* @QXL_RELEASE_SURFACE_CMD, align 4
  %62 = load %struct.qxl_release**, %struct.qxl_release*** %9, align 8
  %63 = call i32 @qxl_alloc_release_reserved(%struct.qxl_device* %60, i32 4, i32 %61, %struct.qxl_release** %62, i32* null)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %28, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @qxl_release_alloc(%struct.qxl_device*, i32, %struct.qxl_release**) #1

declare dso_local i32 @qxl_release_list_add(%struct.qxl_release*, %struct.qxl_bo*) #1

declare dso_local %union.qxl_release_info* @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, %union.qxl_release_info*) #1

declare dso_local i32 @qxl_alloc_release_reserved(%struct.qxl_device*, i32, i32, %struct.qxl_release**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
