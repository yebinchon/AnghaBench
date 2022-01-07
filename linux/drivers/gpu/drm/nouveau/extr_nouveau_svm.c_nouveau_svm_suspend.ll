; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.nouveau_svm* }
%struct.nouveau_svm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_svm_suspend(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nouveau_svm*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %4 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %4, i32 0, i32 0
  %6 = load %struct.nouveau_svm*, %struct.nouveau_svm** %5, align 8
  store %struct.nouveau_svm* %6, %struct.nouveau_svm** %3, align 8
  %7 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %8 = icmp ne %struct.nouveau_svm* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %11 = call i32 @nouveau_svm_fault_buffer_fini(%struct.nouveau_svm* %10, i32 0)
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @nouveau_svm_fault_buffer_fini(%struct.nouveau_svm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
