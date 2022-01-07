; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega12_smumgr.c_vega12_smu_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega12_smumgr.c_vega12_smu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32* }
%struct.vega12_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }

@TABLE_PPTABLE = common dso_local global i64 0, align 8
@TABLE_WATERMARKS = common dso_local global i64 0, align 8
@TABLE_PMSTATUSLOG = common dso_local global i64 0, align 8
@TABLE_AVFS_FUSE_OVERRIDE = common dso_local global i64 0, align 8
@TABLE_OVERDRIVE = common dso_local global i64 0, align 8
@TABLE_SMU_METRICS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega12_smu_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_smu_fini(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega12_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.vega12_smumgr*
  store %struct.vega12_smumgr* %7, %struct.vega12_smumgr** %3, align 8
  %8 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %9 = icmp ne %struct.vega12_smumgr* %8, null
  br i1 %9, label %10, label %160

10:                                               ; preds = %1
  %11 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %12 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @TABLE_PPTABLE, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %19 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @TABLE_PPTABLE, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %26 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* @TABLE_PPTABLE, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @amdgpu_bo_free_kernel(i32* %17, i32* %24, i64* %31)
  %33 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %34 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* @TABLE_WATERMARKS, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %41 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @TABLE_WATERMARKS, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %48 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* @TABLE_WATERMARKS, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @amdgpu_bo_free_kernel(i32* %39, i32* %46, i64* %53)
  %55 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %56 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %10
  %65 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %66 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %73 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %80 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @amdgpu_bo_free_kernel(i32* %71, i32* %78, i64* %85)
  br label %87

87:                                               ; preds = %64, %10
  %88 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %89 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %96 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %103 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i32 @amdgpu_bo_free_kernel(i32* %94, i32* %101, i64* %108)
  %110 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %111 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %118 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %125 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = call i32 @amdgpu_bo_free_kernel(i32* %116, i32* %123, i64* %130)
  %132 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %133 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %140 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %147 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = call i32 @amdgpu_bo_free_kernel(i32* %138, i32* %145, i64* %152)
  %154 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %155 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @kfree(i32* %156)
  %158 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %159 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %158, i32 0, i32 0
  store i32* null, i32** %159, align 8
  br label %160

160:                                              ; preds = %87, %1
  ret i32 0
}

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i64*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
