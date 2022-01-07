; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega20_smumgr.c_vega20_smu_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega20_smumgr.c_vega20_smu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32* }
%struct.vega20_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TABLE_PPTABLE = common dso_local global i64 0, align 8
@TABLE_WATERMARKS = common dso_local global i64 0, align 8
@TABLE_PMSTATUSLOG = common dso_local global i64 0, align 8
@TABLE_OVERDRIVE = common dso_local global i64 0, align 8
@TABLE_SMU_METRICS = common dso_local global i64 0, align 8
@TABLE_ACTIVITY_MONITOR_COEFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_smu_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_smu_fini(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.vega20_smumgr*
  store %struct.vega20_smumgr* %7, %struct.vega20_smumgr** %3, align 8
  %8 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %9 = icmp ne %struct.vega20_smumgr* %8, null
  br i1 %9, label %10, label %149

10:                                               ; preds = %1
  %11 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %12 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @TABLE_PPTABLE, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %19 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @TABLE_PPTABLE, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %26 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* @TABLE_PPTABLE, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @amdgpu_bo_free_kernel(i32* %17, i32* %24, i32* %31)
  %33 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %34 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* @TABLE_WATERMARKS, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %41 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @TABLE_WATERMARKS, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %48 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* @TABLE_WATERMARKS, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @amdgpu_bo_free_kernel(i32* %39, i32* %46, i32* %53)
  %55 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %56 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %63 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %70 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @amdgpu_bo_free_kernel(i32* %61, i32* %68, i32* %75)
  %77 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %78 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %85 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %92 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @amdgpu_bo_free_kernel(i32* %83, i32* %90, i32* %97)
  %99 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %100 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %107 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %114 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = call i32 @amdgpu_bo_free_kernel(i32* %105, i32* %112, i32* %119)
  %121 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %122 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %129 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %3, align 8
  %136 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = call i32 @amdgpu_bo_free_kernel(i32* %127, i32* %134, i32* %141)
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %144 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %148 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %10, %1
  ret i32 0
}

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
