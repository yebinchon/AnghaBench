; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_destroy_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmmu_vmsa_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IMCTR = common dso_local global i32 0, align 4
@IMCTR_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmmu_vmsa_domain*)* @ipmmu_domain_destroy_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmmu_domain_destroy_context(%struct.ipmmu_vmsa_domain* %0) #0 {
  %2 = alloca %struct.ipmmu_vmsa_domain*, align 8
  store %struct.ipmmu_vmsa_domain* %0, %struct.ipmmu_vmsa_domain** %2, align 8
  %3 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %4 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %10 = load i32, i32* @IMCTR, align 4
  %11 = load i32, i32* @IMCTR_FLUSH, align 4
  %12 = call i32 @ipmmu_ctx_write_all(%struct.ipmmu_vmsa_domain* %9, i32 %10, i32 %11)
  %13 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %14 = call i32 @ipmmu_tlb_sync(%struct.ipmmu_vmsa_domain* %13)
  %15 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %16 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %2, align 8
  %21 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ipmmu_domain_free_context(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ipmmu_ctx_write_all(%struct.ipmmu_vmsa_domain*, i32, i32) #1

declare dso_local i32 @ipmmu_tlb_sync(%struct.ipmmu_vmsa_domain*) #1

declare dso_local i32 @ipmmu_domain_free_context(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
