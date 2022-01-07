; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_check_fw_loading_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_check_fw_loading_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_firmware_info*, i32 }
%struct.amdgpu_firmware_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @psp_check_fw_loading_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_check_fw_loading_status(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_firmware_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %6, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %17, i64 %19
  store %struct.amdgpu_firmware_info* %20, %struct.amdgpu_firmware_info** %6, align 8
  %21 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %13
  store i32 0, i32* %3, align 4
  br label %37

31:                                               ; preds = %25
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @psp_compare_sram_data(i32* %33, %struct.amdgpu_firmware_info* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %30, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @psp_compare_sram_data(i32*, %struct.amdgpu_firmware_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
