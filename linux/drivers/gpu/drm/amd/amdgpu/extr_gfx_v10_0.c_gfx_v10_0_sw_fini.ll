; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v10_0_sw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_sw_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @amdgpu_ring_fini(i32* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @amdgpu_ring_fini(i32* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = call i32 @amdgpu_gfx_mqd_sw_fini(%struct.amdgpu_device* %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @amdgpu_gfx_kiq_free_ring(i32* %52, i32* %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = call i32 @amdgpu_gfx_kiq_fini(%struct.amdgpu_device* %58)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = call i32 @gfx_v10_0_pfp_fini(%struct.amdgpu_device* %60)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = call i32 @gfx_v10_0_ce_fini(%struct.amdgpu_device* %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = call i32 @gfx_v10_0_me_fini(%struct.amdgpu_device* %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %67 = call i32 @gfx_v10_0_rlc_fini(%struct.amdgpu_device* %66)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = call i32 @gfx_v10_0_mec_fini(%struct.amdgpu_device* %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %46
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = call i32 @gfx_v10_0_rlc_backdoor_autoload_buffer_fini(%struct.amdgpu_device* %77)
  br label %79

79:                                               ; preds = %76, %46
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = call i32 @gfx_v10_0_free_microcode(%struct.amdgpu_device* %80)
  ret i32 0
}

declare dso_local i32 @amdgpu_ring_fini(i32*) #1

declare dso_local i32 @amdgpu_gfx_mqd_sw_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gfx_kiq_free_ring(i32*, i32*) #1

declare dso_local i32 @amdgpu_gfx_kiq_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_pfp_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_ce_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_me_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_mec_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_buffer_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_free_microcode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
