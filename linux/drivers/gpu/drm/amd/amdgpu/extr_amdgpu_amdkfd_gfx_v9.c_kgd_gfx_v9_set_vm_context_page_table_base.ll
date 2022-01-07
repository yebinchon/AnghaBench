; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_set_vm_context_page_table_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_set_vm_context_page_table_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"trying to set page table base for wrong VMID %u\0A\00", align 1
@CHIP_ARCTURUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kgd_gfx_v9_set_vm_context_page_table_base(%struct.kgd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %9 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %8)
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %7, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ARCTURUS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mmhub_v9_4_setup_vm_pt_regs(%struct.amdgpu_device* %24, i32 0, i32 %25, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mmhub_v9_4_setup_vm_pt_regs(%struct.amdgpu_device* %28, i32 1, i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %17
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mmhub_v1_0_setup_vm_pt_regs(%struct.amdgpu_device* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gfxhub_v1_0_setup_vm_pt_regs(%struct.amdgpu_device* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %14
  ret void
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmhub_v9_4_setup_vm_pt_regs(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @mmhub_v1_0_setup_vm_pt_regs(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @gfxhub_v1_0_setup_vm_pt_regs(%struct.amdgpu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
