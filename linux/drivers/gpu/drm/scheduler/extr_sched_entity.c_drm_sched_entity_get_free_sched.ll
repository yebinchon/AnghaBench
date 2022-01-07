; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_get_free_sched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_get_free_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_rq = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { i32, i32, i32 }
%struct.drm_sched_entity = type { i32, %struct.drm_sched_rq** }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sched%s is not ready, skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_sched_rq* (%struct.drm_sched_entity*)* @drm_sched_entity_get_free_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_sched_rq* @drm_sched_entity_get_free_sched(%struct.drm_sched_entity* %0) #0 {
  %2 = alloca %struct.drm_sched_entity*, align 8
  %3 = alloca %struct.drm_sched_rq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_gpu_scheduler*, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %2, align 8
  store %struct.drm_sched_rq* null, %struct.drm_sched_rq** %3, align 8
  %8 = load i32, i32* @UINT_MAX, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %59, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %12 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %17 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %16, i32 0, i32 1
  %18 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %18, i64 %20
  %22 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %21, align 8
  %23 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %22, i32 0, i32 0
  %24 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %23, align 8
  store %struct.drm_gpu_scheduler* %24, %struct.drm_gpu_scheduler** %7, align 8
  %25 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %26 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %25, i32 0, i32 1
  %27 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %27, i64 %29
  %31 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %30, align 8
  %32 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %31, i32 0, i32 0
  %33 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %32, align 8
  %34 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %15
  %38 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %7, align 8
  %39 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DRM_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %59

42:                                               ; preds = %15
  %43 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %7, align 8
  %44 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %43, i32 0, i32 0
  %45 = call i32 @atomic_read(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  %51 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %52 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %51, i32 0, i32 1
  %53 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %53, i64 %55
  %57 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %56, align 8
  store %struct.drm_sched_rq* %57, %struct.drm_sched_rq** %3, align 8
  br label %58

58:                                               ; preds = %49, %42
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %9

62:                                               ; preds = %9
  %63 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %3, align 8
  ret %struct.drm_sched_rq* %63
}

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
