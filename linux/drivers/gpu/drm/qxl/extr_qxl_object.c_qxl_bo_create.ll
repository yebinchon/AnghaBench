; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qxl_surface = type { i32 }
%struct.qxl_bo = type { i32, i32, %struct.TYPE_5__, %struct.qxl_surface, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@qxl_ttm_bo_destroy = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"object_init failed for (%lu, 0x%08X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_bo_create(%struct.qxl_device* %0, i64 %1, i32 %2, i32 %3, i32 %4, %struct.qxl_surface* %5, %struct.qxl_bo** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qxl_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qxl_surface*, align 8
  %15 = alloca %struct.qxl_bo**, align 8
  %16 = alloca %struct.qxl_bo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.qxl_surface* %5, %struct.qxl_surface** %14, align 8
  store %struct.qxl_bo** %6, %struct.qxl_bo*** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @ttm_bo_type_kernel, align 4
  store i32 %22, i32* %17, align 4
  br label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @ttm_bo_type_device, align 4
  store i32 %24, i32* %17, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.qxl_bo**, %struct.qxl_bo*** %15, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %26, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.qxl_bo* @kzalloc(i32 40, i32 %27)
  store %struct.qxl_bo* %28, %struct.qxl_bo** %16, align 8
  %29 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %30 = icmp eq %struct.qxl_bo* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %118

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i64 @roundup(i64 %35, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.qxl_device*, %struct.qxl_device** %9, align 8
  %39 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %38, i32 0, i32 0
  %40 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %41 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @drm_gem_object_init(%struct.TYPE_6__* %39, i32* %42, i64 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %50 = call i32 @kfree(%struct.qxl_bo* %49)
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %8, align 4
  br label %118

52:                                               ; preds = %34
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %55 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %61 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %63 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %65 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %64, i32 0, i32 4
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.qxl_surface*, %struct.qxl_surface** %14, align 8
  %68 = icmp ne %struct.qxl_surface* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %71 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %70, i32 0, i32 3
  %72 = load %struct.qxl_surface*, %struct.qxl_surface** %14, align 8
  %73 = bitcast %struct.qxl_surface* %71 to i8*
  %74 = bitcast %struct.qxl_surface* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  br label %75

75:                                               ; preds = %69, %52
  %76 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo* %76, i32 %77, i32 %78)
  %80 = load %struct.qxl_device*, %struct.qxl_device** %9, align 8
  %81 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %84 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %83, i32 0, i32 2
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %88 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %87, i32 0, i32 1
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @ttm_bo_init(i32* %82, %struct.TYPE_5__* %84, i64 %85, i32 %86, i32* %88, i32 0, i32 %92, i64 %93, i32* null, i32* null, i32* @qxl_ttm_bo_destroy)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %75
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @ERESTARTSYS, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.qxl_device*, %struct.qxl_device** %9, align 8
  %107 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %100
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %8, align 4
  br label %118

115:                                              ; preds = %75
  %116 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %117 = load %struct.qxl_bo**, %struct.qxl_bo*** %15, align 8
  store %struct.qxl_bo* %116, %struct.qxl_bo** %117, align 8
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %113, %48, %31
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.qxl_bo* @kzalloc(i32, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.qxl_bo*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo*, i32, i32) #1

declare dso_local i32 @ttm_bo_init(i32*, %struct.TYPE_5__*, i64, i32, i32*, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
