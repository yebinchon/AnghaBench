; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_etnaviv_pm_query_dom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_etnaviv_pm_query_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_pm_domain_meta = type { i64, %struct.etnaviv_pm_domain* }
%struct.etnaviv_pm_domain = type { i32, i32 }
%struct.etnaviv_gpu = type { i32 }
%struct.drm_etnaviv_pm_domain = type { i64, i64, i32, i32, i32 }

@doms_meta = common dso_local global %struct.etnaviv_pm_domain_meta* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_pm_query_dom(%struct.etnaviv_gpu* %0, %struct.drm_etnaviv_pm_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.drm_etnaviv_pm_domain*, align 8
  %6 = alloca %struct.etnaviv_pm_domain_meta*, align 8
  %7 = alloca %struct.etnaviv_pm_domain*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.drm_etnaviv_pm_domain* %1, %struct.drm_etnaviv_pm_domain** %5, align 8
  %8 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** @doms_meta, align 8
  %9 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %10 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %8, i64 %11
  store %struct.etnaviv_pm_domain_meta* %12, %struct.etnaviv_pm_domain_meta** %6, align 8
  %13 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %14 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** %6, align 8
  %17 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** %6, align 8
  %25 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %24, i32 0, i32 1
  %26 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %25, align 8
  %27 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %28 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %26, i64 %29
  store %struct.etnaviv_pm_domain* %30, %struct.etnaviv_pm_domain** %7, align 8
  %31 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %32 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %36 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %7, align 8
  %38 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %41 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %43 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %7, align 8
  %46 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strncpy(i32 %44, i32 %47, i32 4)
  %49 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %50 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %54 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.etnaviv_pm_domain_meta*, %struct.etnaviv_pm_domain_meta** %6, align 8
  %57 = getelementptr inbounds %struct.etnaviv_pm_domain_meta, %struct.etnaviv_pm_domain_meta* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %23
  %61 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %5, align 8
  %62 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %61, i32 0, i32 1
  store i64 255, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %23
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
