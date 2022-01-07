; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32, i32, i32, i32, i32, i32*, %struct.drm_sched_rq*, %struct.drm_sched_rq**, i32*, i32 }
%struct.drm_sched_rq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sched_entity_init(%struct.drm_sched_entity* %0, %struct.drm_sched_rq** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_sched_entity*, align 8
  %7 = alloca %struct.drm_sched_rq**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %6, align 8
  store %struct.drm_sched_rq** %1, %struct.drm_sched_rq*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %12 = icmp ne %struct.drm_sched_entity* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %7, align 8
  %15 = icmp ne %struct.drm_sched_rq** %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %7, align 8
  %21 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %20, i64 0
  %22 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %21, align 8
  %23 = icmp ne %struct.drm_sched_rq* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %13, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %97

27:                                               ; preds = %19, %16
  %28 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %29 = call i32 @memset(%struct.drm_sched_entity* %28, i32 0, i32 64)
  %30 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %31 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %34 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %33, i32 0, i32 6
  store %struct.drm_sched_rq* null, %struct.drm_sched_rq** %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %37 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %36, i32 0, i32 8
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %40 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.drm_sched_rq** @kcalloc(i32 %41, i32 8, i32 %42)
  %44 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %45 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %44, i32 0, i32 7
  store %struct.drm_sched_rq** %43, %struct.drm_sched_rq*** %45, align 8
  %46 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %47 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %46, i32 0, i32 7
  %48 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %47, align 8
  %49 = icmp ne %struct.drm_sched_rq** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %27
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %97

53:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %59, i64 %61
  %63 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %62, align 8
  %64 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %65 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %64, i32 0, i32 7
  %66 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %66, i64 %68
  store %struct.drm_sched_rq* %63, %struct.drm_sched_rq** %69, align 8
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %7, align 8
  %78 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %77, i64 0
  %79 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %78, align 8
  %80 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %81 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %80, i32 0, i32 6
  store %struct.drm_sched_rq* %79, %struct.drm_sched_rq** %81, align 8
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %84 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  %85 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %86 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %85, i32 0, i32 4
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %89 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %88, i32 0, i32 3
  %90 = call i32 @spsc_queue_init(i32* %89)
  %91 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %92 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %91, i32 0, i32 2
  %93 = call i32 @atomic_set(i32* %92, i32 0)
  %94 = call i32 @dma_fence_context_alloc(i32 2)
  %95 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %96 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %82, %50, %24
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%struct.drm_sched_entity*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.drm_sched_rq** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spsc_queue_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
