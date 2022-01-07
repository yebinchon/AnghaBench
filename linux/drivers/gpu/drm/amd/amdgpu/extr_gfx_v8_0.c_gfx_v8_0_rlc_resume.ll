; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, {}*, {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_rlc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @gfx_v8_0_init_csb(%struct.amdgpu_device* %8)
  store i32 0, i32* %2, align 4
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = bitcast {}** %16 to i32 (%struct.amdgpu_device*)**
  %18 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %17, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = call i32 %18(%struct.amdgpu_device* %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = bitcast {}** %26 to i32 (%struct.amdgpu_device*)**
  %28 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %27, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call i32 %28(%struct.amdgpu_device* %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = call i32 @gfx_v8_0_init_pg(%struct.amdgpu_device* %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.amdgpu_device*)**
  %40 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %39, align 8
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = call i32 %40(%struct.amdgpu_device* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %10, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_init_csb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_init_pg(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
