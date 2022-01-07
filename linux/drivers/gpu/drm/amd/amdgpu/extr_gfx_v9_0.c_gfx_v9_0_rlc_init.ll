; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_rlc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_rlc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_section_def = type { i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cs_section_def* }

@gfx9_cs_data = common dso_local global %struct.cs_section_def* null, align 8
@CHIP_RENOIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_rlc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_rlc_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.cs_section_def*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.cs_section_def*, %struct.cs_section_def** @gfx9_cs_data, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.cs_section_def* %6, %struct.cs_section_def** %10, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.cs_section_def*, %struct.cs_section_def** %14, align 8
  store %struct.cs_section_def* %15, %struct.cs_section_def** %4, align 8
  %16 = load %struct.cs_section_def*, %struct.cs_section_def** %4, align 8
  %17 = icmp ne %struct.cs_section_def* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = call i32 @amdgpu_gfx_rlc_init_csb(%struct.amdgpu_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CHIP_RENOIR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31, %26
  %38 = call i64 @ALIGN(i32 1920, i32 2048)
  %39 = add nsw i64 %38, 65536
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = call i32 @amdgpu_gfx_rlc_init_cpt(%struct.amdgpu_device* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %61 [
    i32 129, label %55
    i32 128, label %58
  ]

55:                                               ; preds = %51
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = call i32 @gfx_v9_0_init_lbpw(%struct.amdgpu_device* %56)
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = call i32 @gfx_v9_4_init_lbpw(%struct.amdgpu_device* %59)
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %58, %55
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %48, %23
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @amdgpu_gfx_rlc_init_csb(%struct.amdgpu_device*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_init_cpt(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_init_lbpw(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_4_init_lbpw(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
