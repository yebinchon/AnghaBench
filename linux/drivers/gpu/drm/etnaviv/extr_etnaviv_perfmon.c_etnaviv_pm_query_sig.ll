; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_etnaviv_pm_query_sig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_etnaviv_pm_query_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_pm_domain_meta = type { i64, %struct.etnaviv_pm_domain* }
%struct.etnaviv_pm_domain = type { i64, %struct.etnaviv_pm_signal* }
%struct.etnaviv_pm_signal = type { i32 }
%struct.etnaviv_gpu = type { i32 }
%struct.drm_etnaviv_pm_signal = type { i64, i64, i64, i64, i32 }

@doms_meta = common dso_local global %struct.etnaviv_pm_domain_meta* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_pm_query_sig(%struct.etnaviv_gpu* %0, %struct.drm_etnaviv_pm_signal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.drm_etnaviv_pm_signal*, align 8
  %6 = alloca %struct.etnaviv_pm_domain_meta*, align 8
  %7 = alloca %struct.etnaviv_pm_domain*, align 8
  %8 = alloca %struct.etnaviv_pm_signal*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.drm_etnaviv_pm_signal* %1, %struct.drm_etnaviv_pm_signal** %5, align 8
  %9 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** @doms_meta, align 8
  %10 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %11 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %9, i64 %12
  store %struct.etnaviv_pm_domain_meta* %13, %struct.etnaviv_pm_domain_meta** %6, align 8
  %14 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %15 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** %6, align 8
  %18 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** %6, align 8
  %26 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %25, i32 0, i32 1
  %27 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %26, align 8
  %28 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %29 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %27, i64 %30
  store %struct.etnaviv_pm_domain* %31, %struct.etnaviv_pm_domain** %7, align 8
  %32 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %33 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %7, align 8
  %36 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %24
  %43 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %7, align 8
  %44 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %43, i32 0, i32 1
  %45 = load %struct.etnaviv_pm_signal*, %struct.etnaviv_pm_signal** %44, align 8
  %46 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %47 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.etnaviv_pm_signal, %struct.etnaviv_pm_signal* %45, i64 %48
  store %struct.etnaviv_pm_signal* %49, %struct.etnaviv_pm_signal** %8, align 8
  %50 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %51 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %54 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %56 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.etnaviv_pm_signal*, %struct.etnaviv_pm_signal** %8, align 8
  %59 = getelementptr inbounds %struct.etnaviv_pm_signal, %struct.etnaviv_pm_signal* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strncpy(i32 %57, i32 %60, i32 4)
  %62 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %63 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %67 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %7, align 8
  %70 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %42
  %74 = load %struct.drm_etnaviv_pm_signal*, %struct.drm_etnaviv_pm_signal** %5, align 8
  %75 = getelementptr inbounds %struct.drm_etnaviv_pm_signal, %struct.drm_etnaviv_pm_signal* %74, i32 0, i32 2
  store i64 65535, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %42
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %39, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
