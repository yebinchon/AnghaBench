; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, i32, i32, i64, %struct.TYPE_3__*, i32*, %struct.host1x_job_unpin_data* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.host1x_job_unpin_data = type { i32, i32, i64 }
%struct.host1x = type { i32, i64 }

@CONFIG_TEGRA_HOST1X_FIREWALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_job_unpin(%struct.host1x_job* %0) #0 {
  %2 = alloca %struct.host1x_job*, align 8
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.host1x_job_unpin_data*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %2, align 8
  %6 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %7 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.host1x* @dev_get_drvdata(i32 %12)
  store %struct.host1x* %13, %struct.host1x** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %80, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %17 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %14
  %21 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %22 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %21, i32 0, i32 6
  %23 = load %struct.host1x_job_unpin_data*, %struct.host1x_job_unpin_data** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.host1x_job_unpin_data, %struct.host1x_job_unpin_data* %23, i64 %25
  store %struct.host1x_job_unpin_data* %26, %struct.host1x_job_unpin_data** %5, align 8
  %27 = load i32, i32* @CONFIG_TEGRA_HOST1X_FIREWALL, align 4
  %28 = call i32 @IS_ENABLED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %20
  %31 = load %struct.host1x_job_unpin_data*, %struct.host1x_job_unpin_data** %5, align 8
  %32 = getelementptr inbounds %struct.host1x_job_unpin_data, %struct.host1x_job_unpin_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load %struct.host1x*, %struct.host1x** %3, align 8
  %37 = getelementptr inbounds %struct.host1x, %struct.host1x* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.host1x*, %struct.host1x** %3, align 8
  %42 = getelementptr inbounds %struct.host1x, %struct.host1x* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %45 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.host1x_job_unpin_data*, %struct.host1x_job_unpin_data** %5, align 8
  %52 = getelementptr inbounds %struct.host1x_job_unpin_data, %struct.host1x_job_unpin_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @iommu_unmap(i64 %43, i32 %50, i64 %53)
  %55 = load %struct.host1x*, %struct.host1x** %3, align 8
  %56 = getelementptr inbounds %struct.host1x, %struct.host1x* %55, i32 0, i32 0
  %57 = load %struct.host1x*, %struct.host1x** %3, align 8
  %58 = getelementptr inbounds %struct.host1x, %struct.host1x* %57, i32 0, i32 0
  %59 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %60 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @iova_pfn(i32* %58, i32 %65)
  %67 = call i32 @free_iova(i32* %56, i32 %66)
  br label %68

68:                                               ; preds = %40, %35, %30, %20
  %69 = load %struct.host1x_job_unpin_data*, %struct.host1x_job_unpin_data** %5, align 8
  %70 = getelementptr inbounds %struct.host1x_job_unpin_data, %struct.host1x_job_unpin_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.host1x_job_unpin_data*, %struct.host1x_job_unpin_data** %5, align 8
  %73 = getelementptr inbounds %struct.host1x_job_unpin_data, %struct.host1x_job_unpin_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @host1x_bo_unpin(i32 %71, i32 %74)
  %76 = load %struct.host1x_job_unpin_data*, %struct.host1x_job_unpin_data** %5, align 8
  %77 = getelementptr inbounds %struct.host1x_job_unpin_data, %struct.host1x_job_unpin_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @host1x_bo_put(i32 %78)
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %14

83:                                               ; preds = %14
  %84 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %85 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %87 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %92 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %91, i32 0, i32 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %97 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %100 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %103 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dma_free_wc(%struct.TYPE_4__* %95, i64 %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %90, %83
  ret void
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @iommu_unmap(i64, i32, i64) #1

declare dso_local i32 @free_iova(i32*, i32) #1

declare dso_local i32 @iova_pfn(i32*, i32) #1

declare dso_local i32 @host1x_bo_unpin(i32, i32) #1

declare dso_local i32 @host1x_bo_put(i32) #1

declare dso_local i32 @dma_free_wc(%struct.TYPE_4__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
