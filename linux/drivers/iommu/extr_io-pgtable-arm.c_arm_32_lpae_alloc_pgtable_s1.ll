; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_32_lpae_alloc_pgtable_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_32_lpae_alloc_pgtable_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable = type { i32 }
%struct.io_pgtable_cfg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@ARM_32_LPAE_TCR_EAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.io_pgtable* (%struct.io_pgtable_cfg*, i8*)* @arm_32_lpae_alloc_pgtable_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.io_pgtable* @arm_32_lpae_alloc_pgtable_s1(%struct.io_pgtable_cfg* %0, i8* %1) #0 {
  %3 = alloca %struct.io_pgtable*, align 8
  %4 = alloca %struct.io_pgtable_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.io_pgtable*, align 8
  store %struct.io_pgtable_cfg* %0, %struct.io_pgtable_cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 32
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 40
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %45

17:                                               ; preds = %11
  %18 = load i32, i32* @SZ_4K, align 4
  %19 = load i32, i32* @SZ_2M, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SZ_1G, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call %struct.io_pgtable* @arm_64_lpae_alloc_pgtable_s1(%struct.io_pgtable_cfg* %27, i8* %28)
  store %struct.io_pgtable* %29, %struct.io_pgtable** %6, align 8
  %30 = load %struct.io_pgtable*, %struct.io_pgtable** %6, align 8
  %31 = icmp ne %struct.io_pgtable* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load i32, i32* @ARM_32_LPAE_TCR_EAE, align 4
  %34 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %35 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %41, align 4
  br label %43

43:                                               ; preds = %32, %17
  %44 = load %struct.io_pgtable*, %struct.io_pgtable** %6, align 8
  store %struct.io_pgtable* %44, %struct.io_pgtable** %3, align 8
  br label %45

45:                                               ; preds = %43, %16
  %46 = load %struct.io_pgtable*, %struct.io_pgtable** %3, align 8
  ret %struct.io_pgtable* %46
}

declare dso_local %struct.io_pgtable* @arm_64_lpae_alloc_pgtable_s1(%struct.io_pgtable_cfg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
