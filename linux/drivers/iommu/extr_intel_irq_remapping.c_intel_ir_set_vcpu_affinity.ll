; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_ir_set_vcpu_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_ir_set_vcpu_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.intel_ir_data* }
%struct.intel_ir_data = type { i32, %struct.irte }
%struct.irte = type { i32, i32, i32, i32, i64 }
%struct.vcpu_data = type { i32, i32 }

@PDA_LOW_BIT = common dso_local global i32 0, align 4
@PDA_HIGH_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i8*)* @intel_ir_set_vcpu_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ir_set_vcpu_affinity(%struct.irq_data* %0, i8* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intel_ir_data*, align 8
  %6 = alloca %struct.vcpu_data*, align 8
  %7 = alloca %struct.irte, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load %struct.intel_ir_data*, %struct.intel_ir_data** %9, align 8
  store %struct.intel_ir_data* %10, %struct.intel_ir_data** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.vcpu_data*
  store %struct.vcpu_data* %12, %struct.vcpu_data** %6, align 8
  %13 = load %struct.vcpu_data*, %struct.vcpu_data** %6, align 8
  %14 = icmp ne %struct.vcpu_data* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %17 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %16, i32 0, i32 0
  %18 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %19 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %18, i32 0, i32 1
  %20 = call i32 @modify_irte(i32* %17, %struct.irte* %19)
  br label %60

21:                                               ; preds = %2
  %22 = call i32 @memset(%struct.irte* %7, i32 0, i32 24)
  %23 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %24 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %23, i32 0, i32 1
  %25 = call i32 @dmar_copy_shared_irte(%struct.irte* %7, %struct.irte* %24)
  %26 = getelementptr inbounds %struct.irte, %struct.irte* %7, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.irte, %struct.irte* %7, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.vcpu_data*, %struct.vcpu_data** %6, align 8
  %29 = getelementptr inbounds %struct.vcpu_data, %struct.vcpu_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.irte, %struct.irte* %7, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.vcpu_data*, %struct.vcpu_data** %6, align 8
  %33 = getelementptr inbounds %struct.vcpu_data, %struct.vcpu_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PDA_LOW_BIT, align 4
  %36 = sub nsw i32 32, %35
  %37 = ashr i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* @PDA_LOW_BIT, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 -1, %40
  %42 = xor i64 %41, -1
  %43 = and i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.irte, %struct.irte* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.vcpu_data*, %struct.vcpu_data** %6, align 8
  %47 = getelementptr inbounds %struct.vcpu_data, %struct.vcpu_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 32
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @PDA_HIGH_BIT, align 8
  %52 = shl i64 -1, %51
  %53 = xor i64 %52, -1
  %54 = and i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.irte, %struct.irte* %7, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %58 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %57, i32 0, i32 0
  %59 = call i32 @modify_irte(i32* %58, %struct.irte* %7)
  br label %60

60:                                               ; preds = %21, %15
  ret i32 0
}

declare dso_local i32 @modify_irte(i32*, %struct.irte*) #1

declare dso_local i32 @memset(%struct.irte*, i32, i32) #1

declare dso_local i32 @dmar_copy_shared_irte(%struct.irte*, %struct.irte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
