; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_access_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_access_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64 }
%struct.fault = type { i32 }

@PPR_FAULT_EXEC = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i64 0, align 8
@PPR_FAULT_READ = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i64 0, align 8
@PPR_FAULT_WRITE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.fault*)* @access_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_error(%struct.vm_area_struct* %0, %struct.fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.fault*, align 8
  %5 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.fault* %1, %struct.fault** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.fault*, %struct.fault** %4, align 8
  %7 = getelementptr inbounds %struct.fault, %struct.fault* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PPR_FAULT_EXEC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @VM_EXEC, align 8
  %14 = load i64, i64* %5, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.fault*, %struct.fault** %4, align 8
  %18 = getelementptr inbounds %struct.fault, %struct.fault* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PPR_FAULT_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i64, i64* @VM_READ, align 8
  %25 = load i64, i64* %5, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.fault*, %struct.fault** %4, align 8
  %29 = getelementptr inbounds %struct.fault, %struct.fault* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PPR_FAULT_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* @VM_WRITE, align 8
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %39, %43
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
