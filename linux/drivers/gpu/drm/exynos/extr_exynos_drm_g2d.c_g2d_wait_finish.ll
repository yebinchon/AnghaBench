; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_wait_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_wait_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32, %struct.g2d_runqueue_node*, %struct.device* }
%struct.g2d_runqueue_node = type { i64, i32, %struct.drm_file* }
%struct.device = type { i32 }
%struct.drm_file = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"wait timed out, resetting engine...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g2d_data*, %struct.drm_file*)* @g2d_wait_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g2d_wait_finish(%struct.g2d_data* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.g2d_data*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.g2d_runqueue_node*, align 8
  %7 = alloca i32, align 4
  store %struct.g2d_data* %0, %struct.g2d_data** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %8 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %9 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  store %struct.g2d_runqueue_node* null, %struct.g2d_runqueue_node** %6, align 8
  store i32 10, i32* %7, align 4
  %11 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %12 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %15 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %14, i32 0, i32 1
  %16 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %15, align 8
  %17 = icmp ne %struct.g2d_runqueue_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %21 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %20, i32 0, i32 1
  %22 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %21, align 8
  store %struct.g2d_runqueue_node* %22, %struct.g2d_runqueue_node** %6, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %24 = icmp ne %struct.drm_file* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %6, align 8
  %27 = getelementptr inbounds %struct.g2d_runqueue_node, %struct.g2d_runqueue_node* %26, i32 0, i32 2
  %28 = load %struct.drm_file*, %struct.drm_file** %27, align 8
  %29 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %30 = icmp ne %struct.drm_file* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %81

32:                                               ; preds = %25, %19
  %33 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %34 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %48, %32
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %42 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %41, i32 0, i32 1
  %43 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %42, align 8
  %44 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %6, align 8
  %45 = icmp eq %struct.g2d_runqueue_node* %43, %44
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi i1 [ false, %36 ], [ %45, %40 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 @mdelay(i32 10)
  br label %36

50:                                               ; preds = %46
  %51 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %52 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %55 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %54, i32 0, i32 1
  %56 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %55, align 8
  %57 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %6, align 8
  %58 = icmp ne %struct.g2d_runqueue_node* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %81

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %64 = call i32 @g2d_hw_reset(%struct.g2d_data* %63)
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @pm_runtime_mark_last_busy(%struct.device* %65)
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @pm_runtime_put_autosuspend(%struct.device* %67)
  %69 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %6, align 8
  %70 = getelementptr inbounds %struct.g2d_runqueue_node, %struct.g2d_runqueue_node* %69, i32 0, i32 1
  %71 = call i32 @complete(i32* %70)
  %72 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %6, align 8
  %73 = getelementptr inbounds %struct.g2d_runqueue_node, %struct.g2d_runqueue_node* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %78 = load %struct.g2d_runqueue_node*, %struct.g2d_runqueue_node** %6, align 8
  %79 = call i32 @g2d_free_runqueue_node(%struct.g2d_data* %77, %struct.g2d_runqueue_node* %78)
  br label %80

80:                                               ; preds = %76, %60
  br label %81

81:                                               ; preds = %80, %59, %31, %18
  %82 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %83 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @g2d_hw_reset(%struct.g2d_data*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @g2d_free_runqueue_node(%struct.g2d_data*, %struct.g2d_runqueue_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
