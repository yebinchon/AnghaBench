; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_utlb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_utlb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmmu_vmsa_domain = type { i32, %struct.ipmmu_vmsa_device* }
%struct.ipmmu_vmsa_device = type { i32* }

@IMUCTR_FLUSH = common dso_local global i32 0, align 4
@IMUCTR_MMUEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmmu_vmsa_domain*, i32)* @ipmmu_utlb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmmu_utlb_enable(%struct.ipmmu_vmsa_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.ipmmu_vmsa_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmmu_vmsa_device*, align 8
  store %struct.ipmmu_vmsa_domain* %0, %struct.ipmmu_vmsa_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %7 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %6, i32 0, i32 1
  %8 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %7, align 8
  store %struct.ipmmu_vmsa_device* %8, %struct.ipmmu_vmsa_device** %5, align 8
  %9 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IMUASID(i32 %10)
  %12 = call i32 @ipmmu_write(%struct.ipmmu_vmsa_device* %9, i32 %11, i32 0)
  %13 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @IMUCTR(i32 %14)
  %16 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %17 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IMUCTR_TTSEL_MMU(i32 %18)
  %20 = load i32, i32* @IMUCTR_FLUSH, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IMUCTR_MMUEN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ipmmu_write(%struct.ipmmu_vmsa_device* %13, i32 %15, i32 %23)
  %25 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %26 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %5, align 8
  %29 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  ret void
}

declare dso_local i32 @ipmmu_write(%struct.ipmmu_vmsa_device*, i32, i32) #1

declare dso_local i32 @IMUASID(i32) #1

declare dso_local i32 @IMUCTR(i32) #1

declare dso_local i32 @IMUCTR_TTSEL_MMU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
