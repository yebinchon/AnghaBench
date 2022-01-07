; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_unset_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_unset_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@drm_dp_cec_unregister_delay = common dso_local global i32 0, align 4
@NEVER_UNREG_DELAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dp_cec_unset_edid(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca %struct.drm_dp_aux*, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %2, align 8
  %3 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %4 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %10 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %14 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %18 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  br label %45

23:                                               ; preds = %8
  %24 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %25 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cec_phys_addr_invalidate(i32 %27)
  %29 = load i32, i32* @drm_dp_cec_unregister_delay, align 4
  %30 = load i32, i32* @NEVER_UNREG_DELAY, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %34 = call i32 @drm_dp_cec_cap(%struct.drm_dp_aux* %33, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %38 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* @drm_dp_cec_unregister_delay, align 4
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 %40, %41
  %43 = call i32 @schedule_delayed_work(i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %32, %23
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %47 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %45, %7
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cec_phys_addr_invalidate(i32) #1

declare dso_local i32 @drm_dp_cec_cap(%struct.drm_dp_aux*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
