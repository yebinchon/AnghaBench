; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_queue_seqno_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_queue_seqno_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_seqno_cb = type { void (%struct.vc4_seqno_cb*)*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.vc4_dev = type { i64, i32, i32 }

@vc4_seqno_cb_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_queue_seqno_cb(%struct.drm_device* %0, %struct.vc4_seqno_cb* %1, i64 %2, void (%struct.vc4_seqno_cb*)* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_seqno_cb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca void (%struct.vc4_seqno_cb*)*, align 8
  %9 = alloca %struct.vc4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.vc4_seqno_cb* %1, %struct.vc4_seqno_cb** %6, align 8
  store i64 %2, i64* %7, align 8
  store void (%struct.vc4_seqno_cb*)* %3, void (%struct.vc4_seqno_cb*)** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %12)
  store %struct.vc4_dev* %13, %struct.vc4_dev** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load void (%struct.vc4_seqno_cb*)*, void (%struct.vc4_seqno_cb*)** %8, align 8
  %15 = load %struct.vc4_seqno_cb*, %struct.vc4_seqno_cb** %6, align 8
  %16 = getelementptr inbounds %struct.vc4_seqno_cb, %struct.vc4_seqno_cb* %15, i32 0, i32 0
  store void (%struct.vc4_seqno_cb*)* %14, void (%struct.vc4_seqno_cb*)** %16, align 8
  %17 = load %struct.vc4_seqno_cb*, %struct.vc4_seqno_cb** %6, align 8
  %18 = getelementptr inbounds %struct.vc4_seqno_cb, %struct.vc4_seqno_cb* %17, i32 0, i32 1
  %19 = load i32, i32* @vc4_seqno_cb_work, align 4
  %20 = call i32 @INIT_WORK(%struct.TYPE_3__* %18, i32 %19)
  %21 = load %struct.vc4_dev*, %struct.vc4_dev** %9, align 8
  %22 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.vc4_dev*, %struct.vc4_dev** %9, align 8
  %27 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.vc4_seqno_cb*, %struct.vc4_seqno_cb** %6, align 8
  %33 = getelementptr inbounds %struct.vc4_seqno_cb, %struct.vc4_seqno_cb* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vc4_seqno_cb*, %struct.vc4_seqno_cb** %6, align 8
  %35 = getelementptr inbounds %struct.vc4_seqno_cb, %struct.vc4_seqno_cb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.vc4_dev*, %struct.vc4_dev** %9, align 8
  %38 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  br label %44

40:                                               ; preds = %4
  %41 = load %struct.vc4_seqno_cb*, %struct.vc4_seqno_cb** %6, align 8
  %42 = getelementptr inbounds %struct.vc4_seqno_cb, %struct.vc4_seqno_cb* %41, i32 0, i32 1
  %43 = call i32 @schedule_work(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.vc4_dev*, %struct.vc4_dev** %9, align 8
  %46 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @INIT_WORK(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
