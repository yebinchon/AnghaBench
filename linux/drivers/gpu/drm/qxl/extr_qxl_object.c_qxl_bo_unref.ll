; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_bo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_bo_unref(%struct.qxl_bo** %0) #0 {
  %2 = alloca %struct.qxl_bo**, align 8
  store %struct.qxl_bo** %0, %struct.qxl_bo*** %2, align 8
  %3 = load %struct.qxl_bo**, %struct.qxl_bo*** %2, align 8
  %4 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %5 = icmp eq %struct.qxl_bo* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.qxl_bo**, %struct.qxl_bo*** %2, align 8
  %9 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %10 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @drm_gem_object_put_unlocked(i32* %11)
  %13 = load %struct.qxl_bo**, %struct.qxl_bo*** %2, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %13, align 8
  br label %14

14:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
