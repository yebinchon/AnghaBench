; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svmm = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nouveau_ivmm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_svmm_part(%struct.nouveau_svmm* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_svmm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_ivmm*, align 8
  store %struct.nouveau_svmm* %0, %struct.nouveau_svmm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %3, align 8
  %7 = icmp ne %struct.nouveau_svmm* %6, null
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.nouveau_ivmm* @nouveau_ivmm_find(%struct.TYPE_8__* %28, i32 %29)
  store %struct.nouveau_ivmm* %30, %struct.nouveau_ivmm** %5, align 8
  %31 = load %struct.nouveau_ivmm*, %struct.nouveau_ivmm** %5, align 8
  %32 = icmp ne %struct.nouveau_ivmm* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %8
  %34 = load %struct.nouveau_ivmm*, %struct.nouveau_ivmm** %5, align 8
  %35 = getelementptr inbounds %struct.nouveau_ivmm, %struct.nouveau_ivmm* %34, i32 0, i32 0
  %36 = call i32 @list_del(i32* %35)
  %37 = load %struct.nouveau_ivmm*, %struct.nouveau_ivmm** %5, align 8
  %38 = call i32 @kfree(%struct.nouveau_ivmm* %37)
  br label %39

39:                                               ; preds = %33, %8
  %40 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %3, align 8
  %41 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nouveau_ivmm* @nouveau_ivmm_find(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_ivmm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
