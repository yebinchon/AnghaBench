; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32 }

@etnaviv_sched_ops = common dso_local global i32 0, align 4
@etnaviv_hw_jobs_limit = common dso_local global i32 0, align 4
@etnaviv_job_hang_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_sched_init(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 1
  %7 = load i32, i32* @etnaviv_hw_jobs_limit, align 4
  %8 = load i32, i32* @etnaviv_job_hang_limit, align 4
  %9 = call i32 @msecs_to_jiffies(i32 500)
  %10 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_name(i32 %12)
  %14 = call i32 @drm_sched_init(i32* %6, i32* @etnaviv_sched_ops, i32 %7, i32 %8, i32 %9, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @drm_sched_init(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
