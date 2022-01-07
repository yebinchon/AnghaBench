; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_queue_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_queue_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_writeback_connector = type { i32, i32 }
%struct.drm_connector_state = type { %struct.drm_writeback_job* }
%struct.drm_writeback_job = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_writeback_queue_job(%struct.drm_writeback_connector* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.drm_writeback_connector*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.drm_writeback_job*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_writeback_connector* %0, %struct.drm_writeback_connector** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 0
  %9 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %8, align 8
  store %struct.drm_writeback_job* %9, %struct.drm_writeback_job** %5, align 8
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 0
  store %struct.drm_writeback_job* null, %struct.drm_writeback_job** %11, align 8
  %12 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %5, align 8
  %17 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %16, i32 0, i32 0
  %18 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %19 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %22 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
