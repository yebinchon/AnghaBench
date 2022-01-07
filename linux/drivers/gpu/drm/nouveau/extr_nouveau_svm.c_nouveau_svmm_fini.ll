; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svmm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_svmm_fini(%struct.nouveau_svmm** %0) #0 {
  %2 = alloca %struct.nouveau_svmm**, align 8
  %3 = alloca %struct.nouveau_svmm*, align 8
  store %struct.nouveau_svmm** %0, %struct.nouveau_svmm*** %2, align 8
  %4 = load %struct.nouveau_svmm**, %struct.nouveau_svmm*** %2, align 8
  %5 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  store %struct.nouveau_svmm* %5, %struct.nouveau_svmm** %3, align 8
  %6 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %3, align 8
  %7 = icmp ne %struct.nouveau_svmm* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %9, i32 0, i32 0
  %11 = call i32 @hmm_mirror_unregister(i32* %10)
  %12 = load %struct.nouveau_svmm**, %struct.nouveau_svmm*** %2, align 8
  %13 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %12, align 8
  %14 = call i32 @kfree(%struct.nouveau_svmm* %13)
  %15 = load %struct.nouveau_svmm**, %struct.nouveau_svmm*** %2, align 8
  store %struct.nouveau_svmm* null, %struct.nouveau_svmm** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @hmm_mirror_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_svmm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
