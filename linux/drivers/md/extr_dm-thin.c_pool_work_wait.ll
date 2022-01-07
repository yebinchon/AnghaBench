; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_work_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_work_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_work = type { i32, i32 }
%struct.pool = type { i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_work*, %struct.pool*, void (%struct.work_struct*)*)* @pool_work_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_work_wait(%struct.pool_work* %0, %struct.pool* %1, void (%struct.work_struct*)* %2) #0 {
  %4 = alloca %struct.pool_work*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca void (%struct.work_struct*)*, align 8
  store %struct.pool_work* %0, %struct.pool_work** %4, align 8
  store %struct.pool* %1, %struct.pool** %5, align 8
  store void (%struct.work_struct*)* %2, void (%struct.work_struct*)** %6, align 8
  %7 = load %struct.pool_work*, %struct.pool_work** %4, align 8
  %8 = getelementptr inbounds %struct.pool_work, %struct.pool_work* %7, i32 0, i32 1
  %9 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %6, align 8
  %10 = bitcast void (%struct.work_struct*)* %9 to void (%struct.work_struct.0*)*
  %11 = call i32 @INIT_WORK_ONSTACK(i32* %8, void (%struct.work_struct.0*)* %10)
  %12 = load %struct.pool_work*, %struct.pool_work** %4, align 8
  %13 = getelementptr inbounds %struct.pool_work, %struct.pool_work* %12, i32 0, i32 0
  %14 = call i32 @init_completion(i32* %13)
  %15 = load %struct.pool*, %struct.pool** %5, align 8
  %16 = getelementptr inbounds %struct.pool, %struct.pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pool_work*, %struct.pool_work** %4, align 8
  %19 = getelementptr inbounds %struct.pool_work, %struct.pool_work* %18, i32 0, i32 1
  %20 = call i32 @queue_work(i32 %17, i32* %19)
  %21 = load %struct.pool_work*, %struct.pool_work** %4, align 8
  %22 = getelementptr inbounds %struct.pool_work, %struct.pool_work* %21, i32 0, i32 0
  %23 = call i32 @wait_for_completion(i32* %22)
  ret void
}

declare dso_local i32 @INIT_WORK_ONSTACK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
