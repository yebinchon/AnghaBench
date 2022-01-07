; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu10_smumgr.c_smu10_smu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu10_smumgr.c_smu10_smu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.smu10_smumgr* }
%struct.smu10_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@SMU10_WMTABLE = common dso_local global i64 0, align 8
@TABLE_WATERMARKS = common dso_local global i32 0, align 4
@SMU10_CLOCKTABLE = common dso_local global i64 0, align 8
@TABLE_DPMCLOCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu10_smu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_smu_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu10_smumgr*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.smu10_smumgr* @kzalloc(i32 8, i32 %6)
  store %struct.smu10_smumgr* %7, %struct.smu10_smumgr** %4, align 8
  %8 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %9 = icmp ne %struct.smu10_smumgr* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %153

13:                                               ; preds = %1
  %14 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  store %struct.smu10_smumgr* %14, %struct.smu10_smumgr** %16, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.amdgpu_device*
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %23 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %24 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* @SMU10_WMTABLE, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %31 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* @SMU10_WMTABLE, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %38 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* @SMU10_WMTABLE, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %20, i32 4, i32 %21, i32 %22, i32* %29, i32* %36, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %13
  br label %148

48:                                               ; preds = %13
  %49 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %50 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* @SMU10_WMTABLE, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %57 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i64, i64* @SMU10_WMTABLE, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 4, i32* %62, align 4
  %63 = load i32, i32* @TABLE_WATERMARKS, align 4
  %64 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %65 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* @SMU10_WMTABLE, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32 %63, i32* %70, align 4
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.amdgpu_device*
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %77 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %78 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i64, i64* @SMU10_CLOCKTABLE, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %85 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i64, i64* @SMU10_CLOCKTABLE, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %92 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* @SMU10_CLOCKTABLE, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %74, i32 4, i32 %75, i32 %76, i32* %83, i32* %90, i32* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %48
  br label %125

102:                                              ; preds = %48
  %103 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %104 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i64, i64* @SMU10_CLOCKTABLE, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %111 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i64, i64* @SMU10_CLOCKTABLE, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 4, i32* %116, align 4
  %117 = load i32, i32* @TABLE_DPMCLOCKS, align 4
  %118 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %119 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i64, i64* @SMU10_CLOCKTABLE, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  store i32 %117, i32* %124, align 4
  store i32 0, i32* %2, align 4
  br label %153

125:                                              ; preds = %101
  %126 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %127 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* @SMU10_WMTABLE, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %134 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i64, i64* @SMU10_WMTABLE, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %141 = getelementptr inbounds %struct.smu10_smumgr, %struct.smu10_smumgr* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* @SMU10_WMTABLE, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = call i32 @amdgpu_bo_free_kernel(i32* %132, i32* %139, i32* %146)
  br label %148

148:                                              ; preds = %125, %47
  %149 = load %struct.smu10_smumgr*, %struct.smu10_smumgr** %4, align 8
  %150 = call i32 @kfree(%struct.smu10_smumgr* %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %148, %102, %10
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.smu10_smumgr* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.smu10_smumgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
