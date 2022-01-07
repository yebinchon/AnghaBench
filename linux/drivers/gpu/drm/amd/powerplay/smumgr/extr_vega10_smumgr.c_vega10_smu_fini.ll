; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega10_smumgr.c_vega10_smu_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega10_smumgr.c_vega10_smu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_smumgr* }
%struct.vega10_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }

@PPTABLE = common dso_local global i64 0, align 8
@WMTABLE = common dso_local global i64 0, align 8
@AVFSTABLE = common dso_local global i64 0, align 8
@TOOLSTABLE = common dso_local global i64 0, align 8
@AVFSFUSETABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_smu_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_smu_fini(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %5, align 8
  store %struct.vega10_smumgr* %6, %struct.vega10_smumgr** %3, align 8
  %7 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %8 = icmp ne %struct.vega10_smumgr* %7, null
  br i1 %8, label %9, label %137

9:                                                ; preds = %1
  %10 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %11 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* @PPTABLE, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %18 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i64, i64* @PPTABLE, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %25 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* @PPTABLE, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @amdgpu_bo_free_kernel(i32* %16, i32* %23, i64* %30)
  %32 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %33 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* @WMTABLE, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %40 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* @WMTABLE, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %47 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @WMTABLE, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @amdgpu_bo_free_kernel(i32* %38, i32* %45, i64* %52)
  %54 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %55 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* @AVFSTABLE, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %62 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i64, i64* @AVFSTABLE, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %69 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i64, i64* @AVFSTABLE, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @amdgpu_bo_free_kernel(i32* %60, i32* %67, i64* %74)
  %76 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %77 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i64, i64* @TOOLSTABLE, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %9
  %86 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %87 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* @TOOLSTABLE, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %94 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* @TOOLSTABLE, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %101 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i64, i64* @TOOLSTABLE, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @amdgpu_bo_free_kernel(i32* %92, i32* %99, i64* %106)
  br label %108

108:                                              ; preds = %85, %9
  %109 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %110 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* @AVFSFUSETABLE, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %117 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i64, i64* @AVFSFUSETABLE, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %3, align 8
  %124 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i64, i64* @AVFSFUSETABLE, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = call i32 @amdgpu_bo_free_kernel(i32* %115, i32* %122, i64* %129)
  %131 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %132 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %131, i32 0, i32 0
  %133 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %132, align 8
  %134 = call i32 @kfree(%struct.vega10_smumgr* %133)
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %136 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %135, i32 0, i32 0
  store %struct.vega10_smumgr* null, %struct.vega10_smumgr** %136, align 8
  br label %137

137:                                              ; preds = %108, %1
  ret i32 0
}

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i64*) #1

declare dso_local i32 @kfree(%struct.vega10_smumgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
