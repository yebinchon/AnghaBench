; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_ras_ta_load_cmd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_ras_ta_load_cmd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_gfx_cmd_resp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@GFX_CMD_ID_LOAD_TA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psp_gfx_cmd_resp*, i32, i32, i8*, i8*)* @psp_prep_ras_ta_load_cmd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_prep_ras_ta_load_cmd_buf(%struct.psp_gfx_cmd_resp* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.psp_gfx_cmd_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.psp_gfx_cmd_resp* %0, %struct.psp_gfx_cmd_resp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* @GFX_CMD_ID_LOAD_TA, align 4
  %12 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %13 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @lower_32_bits(i32 %14)
  %16 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %17 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i8* %15, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @upper_32_bits(i32 %20)
  %22 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %23 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store i8* %21, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %28 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i8* %26, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @lower_32_bits(i32 %31)
  %33 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %34 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @upper_32_bits(i32 %37)
  %39 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %40 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %45 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  ret void
}

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
