; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_common_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_common_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)* }
%struct.TYPE_3__ = type { i32 (%struct.amdgpu_device*, i32)* }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @soc15_common_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc15_common_set_clockgating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %145

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %143 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 132, label %82
    i32 131, label %82
    i32 133, label %135
  ]

17:                                               ; preds = %13, %13, %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %21, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = call i32 %22(%struct.amdgpu_device* %23, i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %33, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 %34(%struct.amdgpu_device* %35, i32 %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 @soc15_update_hdp_light_sleep(%struct.amdgpu_device* %42, i32 %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = call i32 @soc15_update_drm_clock_gating(%struct.amdgpu_device* %49, i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = call i32 @soc15_update_drm_light_sleep(%struct.amdgpu_device* %56, i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = call i32 @soc15_update_rom_medium_grain_clock_gating(%struct.amdgpu_device* %63, i32 %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %73, align 8
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = call i32 %74(%struct.amdgpu_device* %75, i32 %80)
  br label %144

82:                                               ; preds = %13, %13
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %86, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = call i32 %87(%struct.amdgpu_device* %88, i32 %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %98, align 8
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = call i32 %99(%struct.amdgpu_device* %100, i32 %105)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = call i32 @soc15_update_hdp_light_sleep(%struct.amdgpu_device* %107, i32 %112)
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = call i32 @soc15_update_drm_clock_gating(%struct.amdgpu_device* %114, i32 %119)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = call i32 @soc15_update_drm_light_sleep(%struct.amdgpu_device* %121, i32 %126)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = call i32 @soc15_update_rom_medium_grain_clock_gating(%struct.amdgpu_device* %128, i32 %133)
  br label %144

135:                                              ; preds = %13
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  %142 = call i32 @soc15_update_hdp_light_sleep(%struct.amdgpu_device* %136, i32 %141)
  br label %144

143:                                              ; preds = %13
  br label %144

144:                                              ; preds = %143, %135, %82, %17
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %12
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @soc15_update_hdp_light_sleep(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @soc15_update_drm_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @soc15_update_drm_light_sleep(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @soc15_update_rom_medium_grain_clock_gating(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
