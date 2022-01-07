; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64, i32, i64 }
%struct.smu7_smumgr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PP_AVFS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_smumgr*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu7_smumgr*
  store %struct.smu7_smumgr* %9, %struct.smu7_smumgr** %4, align 8
  %10 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %11 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 4096, i32* %12, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.amdgpu_device*
  %17 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %18 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %23 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %24 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %27 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %30 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %16, i32 %20, i32 %21, i32 %22, i32* %25, i32* %28, i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %98

38:                                               ; preds = %1
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %98

44:                                               ; preds = %38
  %45 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %46 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 819200, i32* %47, align 4
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.amdgpu_device*
  %52 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %53 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %58 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %59 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %62 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %65 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %51, i32 %55, i32 %56, i32 %57, i32* %60, i32* %63, i32* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %44
  %71 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %72 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %75 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %78 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @amdgpu_bo_free_kernel(i32* %73, i32* %76, i32* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %44
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = call i64 @smum_is_hw_avfs_present(%struct.pp_hwmgr* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %89 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PP_AVFS_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %96 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %87, %83
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %70, %43, %35
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

declare dso_local i64 @smum_is_hw_avfs_present(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
