; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_allocate_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_allocate_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmmu_vmsa_device = type { i32, i32, i32, %struct.ipmmu_vmsa_domain** }
%struct.ipmmu_vmsa_domain = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_domain*)* @ipmmu_domain_allocate_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmmu_domain_allocate_context(%struct.ipmmu_vmsa_device* %0, %struct.ipmmu_vmsa_domain* %1) #0 {
  %3 = alloca %struct.ipmmu_vmsa_device*, align 8
  %4 = alloca %struct.ipmmu_vmsa_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipmmu_vmsa_device* %0, %struct.ipmmu_vmsa_device** %3, align 8
  store %struct.ipmmu_vmsa_domain* %1, %struct.ipmmu_vmsa_domain** %4, align 8
  %7 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %8 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %12 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %15 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @find_first_zero_bit(i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %20 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %4, align 8
  %25 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %26 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %25, i32 0, i32 3
  %27 = load %struct.ipmmu_vmsa_domain**, %struct.ipmmu_vmsa_domain*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %27, i64 %29
  store %struct.ipmmu_vmsa_domain* %24, %struct.ipmmu_vmsa_domain** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %33 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @set_bit(i32 %31, i32 %34)
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %3, align 8
  %41 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %40, i32 0, i32 1
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
