; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_perfmon_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_perfmon_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_etnaviv_gem_submit_pmr = type { i64, i32, i32, i32, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"perfmon request: offset is 0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"perfmon request: offset %u outside object\00", align 1
@ETNA_PM_PROCESS_PRE = common dso_local global i32 0, align 4
@ETNA_PM_PROCESS_POST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"perfmon request: flags are not valid\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"perfmon request: domain or signal not valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_submit*, i64, %struct.drm_etnaviv_gem_submit_pmr*)* @submit_perfmon_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_perfmon_validate(%struct.etnaviv_gem_submit* %0, i64 %1, %struct.drm_etnaviv_gem_submit_pmr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gem_submit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_etnaviv_gem_submit_pmr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_etnaviv_gem_submit_pmr*, align 8
  %10 = alloca %struct.etnaviv_gem_submit_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.drm_etnaviv_gem_submit_pmr* %2, %struct.drm_etnaviv_gem_submit_pmr** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %139, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %142

18:                                               ; preds = %12
  %19 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %19, i64 %20
  store %struct.drm_etnaviv_gem_submit_pmr* %21, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %22 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %23 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %24 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @submit_bo(%struct.etnaviv_gem_submit* %22, i32 %25, %struct.etnaviv_gem_submit_bo** %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %143

31:                                               ; preds = %18
  %32 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %33 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %143

40:                                               ; preds = %31
  %41 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %42 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %10, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 8
  %52 = icmp uge i64 %43, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %143

58:                                               ; preds = %40
  %59 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %60 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ETNA_PM_PROCESS_PRE, align 4
  %63 = load i32, i32* @ETNA_PM_PROCESS_POST, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %143

72:                                               ; preds = %58
  %73 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @etnaviv_pm_req_validate(%struct.drm_etnaviv_gem_submit_pmr* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %143

81:                                               ; preds = %72
  %82 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %83 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %86 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  %91 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %92 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %95 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  store i32 %93, i32* %99, align 4
  %100 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %101 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %104 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  store i32 %102, i32* %108, align 4
  %109 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %110 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %113 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  store i32 %111, i32* %117, align 4
  %118 = load %struct.drm_etnaviv_gem_submit_pmr*, %struct.drm_etnaviv_gem_submit_pmr** %9, align 8
  %119 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, %struct.drm_etnaviv_gem_submit_pmr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %123 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  %128 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %10, align 8
  %129 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = call i32 @etnaviv_gem_vmap(%struct.TYPE_6__* %131)
  %133 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %134 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %81
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %8, align 8
  br label %12

142:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %77, %68, %53, %36, %29
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @submit_bo(%struct.etnaviv_gem_submit*, i32, %struct.etnaviv_gem_submit_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @etnaviv_pm_req_validate(%struct.drm_etnaviv_gem_submit_pmr*, i64) #1

declare dso_local i32 @etnaviv_gem_vmap(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
