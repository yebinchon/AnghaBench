; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_sync_point_perfmon_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_sync_point_perfmon_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_event = type { %struct.etnaviv_gem_submit* }
%struct.etnaviv_gem_submit = type { i32, i32, %struct.etnaviv_perfmon_request* }
%struct.etnaviv_perfmon_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_event*, i32)* @sync_point_perfmon_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_point_perfmon_sample(%struct.etnaviv_gpu* %0, %struct.etnaviv_event* %1, i32 %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.etnaviv_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_gem_submit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.etnaviv_perfmon_request*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.etnaviv_event* %1, %struct.etnaviv_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.etnaviv_event*, %struct.etnaviv_event** %5, align 8
  %11 = getelementptr inbounds %struct.etnaviv_event, %struct.etnaviv_event* %10, i32 0, i32 0
  %12 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %11, align 8
  store %struct.etnaviv_gem_submit* %12, %struct.etnaviv_gem_submit** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %39, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %7, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %7, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %20, i32 0, i32 2
  %22 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %22, i64 %24
  store %struct.etnaviv_perfmon_request* %25, %struct.etnaviv_perfmon_request** %9, align 8
  %26 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %9, align 8
  %27 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %33 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %9, align 8
  %34 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %7, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @etnaviv_perfmon_process(%struct.etnaviv_gpu* %32, %struct.etnaviv_perfmon_request* %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %13

42:                                               ; preds = %13
  ret void
}

declare dso_local i32 @etnaviv_perfmon_process(%struct.etnaviv_gpu*, %struct.etnaviv_perfmon_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
