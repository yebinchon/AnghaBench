; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_iopte_to_paddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_iopte_to_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { i32 }

@ARM_LPAE_PTE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.arm_lpae_io_pgtable*)* @iopte_to_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopte_to_paddr(i32 %0, %struct.arm_lpae_io_pgtable* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.arm_lpae_io_pgtable* %1, %struct.arm_lpae_io_pgtable** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ARM_LPAE_PTE_ADDR_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %5, align 8
  %11 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 36
  %20 = or i32 %17, %19
  %21 = load i32, i32* @ARM_LPAE_PTE_ADDR_MASK, align 4
  %22 = shl i32 %21, 4
  %23 = and i32 %20, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
