; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_get_vm_pte_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_get_vm_pte_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMDGPU_VM_PAGE_EXECUTABLE = common dso_local global i32 0, align 4
@AMDGPU_PTE_EXECUTABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_READABLE = common dso_local global i32 0, align 4
@AMDGPU_PTE_READABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_WRITEABLE = common dso_local global i32 0, align 4
@AMDGPU_PTE_WRITEABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_MTYPE_MASK = common dso_local global i32 0, align 4
@MTYPE_NC = common dso_local global i32 0, align 4
@MTYPE_WC = common dso_local global i32 0, align 4
@MTYPE_CC = common dso_local global i32 0, align 4
@MTYPE_UC = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_PRT = common dso_local global i32 0, align 4
@AMDGPU_PTE_PRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @gmc_v10_0_get_vm_pte_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_get_vm_pte_flags(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AMDGPU_VM_PAGE_EXECUTABLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @AMDGPU_PTE_EXECUTABLE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AMDGPU_VM_PAGE_READABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @AMDGPU_PTE_READABLE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AMDGPU_VM_PAGE_WRITEABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @AMDGPU_PTE_WRITEABLE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AMDGPU_VM_MTYPE_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %61 [
    i32 131, label %36
    i32 130, label %41
    i32 128, label %46
    i32 132, label %51
    i32 129, label %56
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @MTYPE_NC, align 4
  %38 = call i32 @AMDGPU_PTE_MTYPE_NV10(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %66

41:                                               ; preds = %32
  %42 = load i32, i32* @MTYPE_NC, align 4
  %43 = call i32 @AMDGPU_PTE_MTYPE_NV10(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %66

46:                                               ; preds = %32
  %47 = load i32, i32* @MTYPE_WC, align 4
  %48 = call i32 @AMDGPU_PTE_MTYPE_NV10(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %66

51:                                               ; preds = %32
  %52 = load i32, i32* @MTYPE_CC, align 4
  %53 = call i32 @AMDGPU_PTE_MTYPE_NV10(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %66

56:                                               ; preds = %32
  %57 = load i32, i32* @MTYPE_UC, align 4
  %58 = call i32 @AMDGPU_PTE_MTYPE_NV10(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %66

61:                                               ; preds = %32
  %62 = load i32, i32* @MTYPE_NC, align 4
  %63 = call i32 @AMDGPU_PTE_MTYPE_NV10(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %56, %51, %46, %41, %36
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @AMDGPU_VM_PAGE_PRT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @AMDGPU_PTE_PRT, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @AMDGPU_PTE_MTYPE_NV10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
