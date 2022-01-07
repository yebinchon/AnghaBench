; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_utlb_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_utlb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmmu_vmsa_domain = type { %struct.ipmmu_vmsa_device* }
%struct.ipmmu_vmsa_device = type { i32* }

@IPMMU_CTX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmmu_vmsa_domain*, i32)* @ipmmu_utlb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmmu_utlb_disable(%struct.ipmmu_vmsa_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.ipmmu_vmsa_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmmu_vmsa_device*, align 8
  store %struct.ipmmu_vmsa_domain* %0, %struct.ipmmu_vmsa_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %7 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %6, i32 0, i32 0
  %8 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %7, align 8
  store %struct.ipmmu_vmsa_device* %8, %struct.ipmmu_vmsa_device** %5, align 8
  %9 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IMUCTR(i32 %10)
  %12 = call i32 @ipmmu_write(%struct.ipmmu_vmsa_device* %9, i32 %11, i32 0)
  %13 = load i32, i32* @IPMMU_CTX_INVALID, align 4
  %14 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %5, align 8
  %15 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  ret void
}

declare dso_local i32 @ipmmu_write(%struct.ipmmu_vmsa_device*, i32, i32) #1

declare dso_local i32 @IMUCTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
