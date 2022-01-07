; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_flip_work.c_drm_flip_work_allocate_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_flip_work.c_drm_flip_work_allocate_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_flip_task = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_flip_task* @drm_flip_work_allocate_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_flip_task*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.drm_flip_task* @kzalloc(i32 8, i32 %6)
  store %struct.drm_flip_task* %7, %struct.drm_flip_task** %5, align 8
  %8 = load %struct.drm_flip_task*, %struct.drm_flip_task** %5, align 8
  %9 = icmp ne %struct.drm_flip_task* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.drm_flip_task*, %struct.drm_flip_task** %5, align 8
  %13 = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.drm_flip_task*, %struct.drm_flip_task** %5, align 8
  ret %struct.drm_flip_task* %15
}

declare dso_local %struct.drm_flip_task* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
