; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_add_gather.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_add_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i64, %struct.host1x_job_gather* }
%struct.host1x_job_gather = type { i32, i32, %struct.host1x_bo* }
%struct.host1x_bo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_job_add_gather(%struct.host1x_job* %0, %struct.host1x_bo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.host1x_job*, align 8
  %6 = alloca %struct.host1x_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.host1x_job_gather*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %5, align 8
  store %struct.host1x_bo* %1, %struct.host1x_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.host1x_job*, %struct.host1x_job** %5, align 8
  %11 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %10, i32 0, i32 1
  %12 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %13 = load %struct.host1x_job*, %struct.host1x_job** %5, align 8
  %14 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %12, i64 %15
  store %struct.host1x_job_gather* %16, %struct.host1x_job_gather** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %19 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.host1x_bo*, %struct.host1x_bo** %6, align 8
  %21 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %22 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %21, i32 0, i32 2
  store %struct.host1x_bo* %20, %struct.host1x_bo** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %25 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.host1x_job*, %struct.host1x_job** %5, align 8
  %27 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
