; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.amdgpu_device*)* }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@GC = common dso_local global i32 0, align 4
@CP_PQ_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v9_0_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_hw_fini(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  %11 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %7, i32* %10, i32 0)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %12, i32* %15, i32 0)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %17, i32* %20, i32 0)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = call i32 @gfx_v9_0_kcq_disable(%struct.amdgpu_device* %22)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %25 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %29 = call i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device* %28, i32 0)
  %30 = load i32, i32* @GC, align 4
  %31 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %32 = load i32, i32* @EN, align 4
  %33 = call i32 @WREG32_FIELD15(i32 %30, i32 0, i32 %31, i32 %32, i32 0)
  store i32 0, i32* %2, align 4
  br label %92

34:                                               ; preds = %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %34
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %78, label %44

44:                                               ; preds = %39
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %48, i32 %54, i32 %60, i32 %66, i32 0)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @gfx_v9_0_kiq_fini_register(%struct.TYPE_10__* %71)
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %74 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %73, i32 0, i32 0, i32 0, i32 0)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %44, %39, %34
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = call i32 @gfx_v9_0_cp_enable(%struct.amdgpu_device* %79, i32 0)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %86, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %89 = call i32 %87(%struct.amdgpu_device* %88)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %91 = call i32 @gfx_v9_0_csb_vram_unpin(%struct.amdgpu_device* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %78, %27
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @gfx_v9_0_kcq_disable(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc15_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_kiq_fini_register(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v9_0_cp_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_csb_vram_unpin(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
