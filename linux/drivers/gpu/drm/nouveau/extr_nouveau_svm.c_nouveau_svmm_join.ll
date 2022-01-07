; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svmm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nouveau_ivmm = type { i32, i32, %struct.nouveau_svmm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_svmm_join(%struct.nouveau_svmm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_svmm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_ivmm*, align 8
  store %struct.nouveau_svmm* %0, %struct.nouveau_svmm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %8 = icmp ne %struct.nouveau_svmm* %7, null
  br i1 %8, label %9, label %58

9:                                                ; preds = %2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nouveau_ivmm* @kmalloc(i32 16, i32 %10)
  store %struct.nouveau_ivmm* %11, %struct.nouveau_ivmm** %6, align 8
  %12 = icmp ne %struct.nouveau_ivmm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %9
  %17 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %18 = load %struct.nouveau_ivmm*, %struct.nouveau_ivmm** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_ivmm, %struct.nouveau_ivmm* %18, i32 0, i32 2
  store %struct.nouveau_svmm* %17, %struct.nouveau_svmm** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nouveau_ivmm*, %struct.nouveau_ivmm** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_ivmm, %struct.nouveau_ivmm* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %24 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.nouveau_ivmm*, %struct.nouveau_ivmm** %6, align 8
  %35 = getelementptr inbounds %struct.nouveau_ivmm, %struct.nouveau_ivmm* %34, i32 0, i32 0
  %36 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = call i32 @list_add(i32* %35, i32* %45)
  %47 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nouveau_ivmm* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
