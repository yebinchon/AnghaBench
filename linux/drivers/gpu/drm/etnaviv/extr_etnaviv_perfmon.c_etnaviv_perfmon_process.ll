; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_etnaviv_perfmon_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_etnaviv_perfmon_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_pm_domain_meta = type { %struct.etnaviv_pm_domain* }
%struct.etnaviv_pm_domain = type { %struct.etnaviv_pm_signal* }
%struct.etnaviv_pm_signal = type { i64 (%struct.etnaviv_gpu.0*, %struct.etnaviv_pm_domain.1*, %struct.etnaviv_pm_signal*)* }
%struct.etnaviv_gpu.0 = type opaque
%struct.etnaviv_pm_domain.1 = type opaque
%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_perfmon_request = type { i64*, i32, i64, i32 }

@doms_meta = common dso_local global %struct.etnaviv_pm_domain_meta* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_perfmon_process(%struct.etnaviv_gpu* %0, %struct.etnaviv_perfmon_request* %1, i64 %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.etnaviv_perfmon_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.etnaviv_pm_domain_meta*, align 8
  %8 = alloca %struct.etnaviv_pm_domain*, align 8
  %9 = alloca %struct.etnaviv_pm_signal*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.etnaviv_perfmon_request* %1, %struct.etnaviv_perfmon_request** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** @doms_meta, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %12, i64 %13
  store %struct.etnaviv_pm_domain_meta* %14, %struct.etnaviv_pm_domain_meta** %7, align 8
  %15 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %5, align 8
  %16 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %10, align 8
  %18 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** %7, align 8
  %19 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %18, i32 0, i32 0
  %20 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %19, align 8
  %21 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %5, align 8
  %22 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %20, i64 %24
  store %struct.etnaviv_pm_domain* %25, %struct.etnaviv_pm_domain** %8, align 8
  %26 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %8, align 8
  %27 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %26, i32 0, i32 0
  %28 = load %struct.etnaviv_pm_signal*, %struct.etnaviv_pm_signal** %27, align 8
  %29 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %5, align 8
  %30 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.etnaviv_pm_signal, %struct.etnaviv_pm_signal* %28, i64 %31
  store %struct.etnaviv_pm_signal* %32, %struct.etnaviv_pm_signal** %9, align 8
  %33 = load %struct.etnaviv_pm_signal*, %struct.etnaviv_pm_signal** %9, align 8
  %34 = getelementptr inbounds %struct.etnaviv_pm_signal, %struct.etnaviv_pm_signal* %33, i32 0, i32 0
  %35 = load i64 (%struct.etnaviv_gpu.0*, %struct.etnaviv_pm_domain.1*, %struct.etnaviv_pm_signal*)*, i64 (%struct.etnaviv_gpu.0*, %struct.etnaviv_pm_domain.1*, %struct.etnaviv_pm_signal*)** %34, align 8
  %36 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %37 = bitcast %struct.etnaviv_gpu* %36 to %struct.etnaviv_gpu.0*
  %38 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %8, align 8
  %39 = bitcast %struct.etnaviv_pm_domain* %38 to %struct.etnaviv_pm_domain.1*
  %40 = load %struct.etnaviv_pm_signal*, %struct.etnaviv_pm_signal** %9, align 8
  %41 = call i64 %35(%struct.etnaviv_gpu.0* %37, %struct.etnaviv_pm_domain.1* %39, %struct.etnaviv_pm_signal* %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load %struct.etnaviv_perfmon_request*, %struct.etnaviv_perfmon_request** %5, align 8
  %45 = getelementptr inbounds %struct.etnaviv_perfmon_request, %struct.etnaviv_perfmon_request* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  store i64 %42, i64* %48, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
