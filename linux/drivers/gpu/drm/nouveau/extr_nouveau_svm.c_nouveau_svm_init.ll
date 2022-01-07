; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_mclass = type { i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__, %struct.nouveau_svm* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_svm = type { i32, i32, %struct.nouveau_drm* }

@nouveau_svm_init.buffers = internal constant [3 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 128, i32 0, i32 0 }, %struct.nvif_mclass { i32 129, i32 0, i32 0 }, %struct.nvif_mclass zeroinitializer], align 16
@NV_DEVICE_INFO_V0_PASCAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No supported fault buffer class\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Initialised\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_svm_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nouveau_svm*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %5 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NV_DEVICE_INFO_V0_PASCAL, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nouveau_svm* @kzalloc(i32 16, i32 %15)
  store %struct.nouveau_svm* %16, %struct.nouveau_svm** %3, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 1
  store %struct.nouveau_svm* %16, %struct.nouveau_svm** %18, align 8
  %19 = icmp ne %struct.nouveau_svm* %16, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %65

21:                                               ; preds = %14
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 1
  %25 = load %struct.nouveau_svm*, %struct.nouveau_svm** %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_svm, %struct.nouveau_svm* %25, i32 0, i32 2
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %26, align 8
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 1
  %29 = load %struct.nouveau_svm*, %struct.nouveau_svm** %28, align 8
  %30 = getelementptr inbounds %struct.nouveau_svm, %struct.nouveau_svm* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %33 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %32, i32 0, i32 1
  %34 = load %struct.nouveau_svm*, %struct.nouveau_svm** %33, align 8
  %35 = getelementptr inbounds %struct.nouveau_svm, %struct.nouveau_svm* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %38 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @nvif_mclass(i32* %40, %struct.nvif_mclass* getelementptr inbounds ([3 x %struct.nvif_mclass], [3 x %struct.nvif_mclass]* @nouveau_svm_init.buffers, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %21
  %45 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %46 = call i32 @SVM_DBG(%struct.nouveau_svm* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %48 = call i32 @nouveau_svm_fini(%struct.nouveau_drm* %47)
  br label %65

49:                                               ; preds = %21
  %50 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x %struct.nvif_mclass], [3 x %struct.nvif_mclass]* @nouveau_svm_init.buffers, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.nvif_mclass, %struct.nvif_mclass* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nouveau_svm_fault_buffer_ctor(%struct.nouveau_svm* %50, i32 %55, i32 0)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %61 = call i32 @nouveau_svm_fini(%struct.nouveau_drm* %60)
  br label %65

62:                                               ; preds = %49
  %63 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %64 = call i32 @SVM_DBG(%struct.nouveau_svm* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59, %44, %20, %13
  ret void
}

declare dso_local %struct.nouveau_svm* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvif_mclass(i32*, %struct.nvif_mclass*) #1

declare dso_local i32 @SVM_DBG(%struct.nouveau_svm*, i8*) #1

declare dso_local i32 @nouveau_svm_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_svm_fault_buffer_ctor(%struct.nouveau_svm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
