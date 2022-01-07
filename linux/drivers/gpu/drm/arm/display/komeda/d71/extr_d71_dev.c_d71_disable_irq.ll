; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { %struct.d71_dev* }
%struct.d71_dev = type { i64, %struct.d71_pipeline**, i32 }
%struct.d71_pipeline = type { i32, i32, i32 }

@BLK_IRQ_MASK = common dso_local global i32 0, align 4
@ENABLED_GCU_IRQS = common dso_local global i32 0, align 4
@ENABLED_CU_IRQS = common dso_local global i32 0, align 4
@ENABLED_LPU_IRQS = common dso_local global i32 0, align 4
@ENABLED_DOU_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_dev*)* @d71_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d71_disable_irq(%struct.komeda_dev* %0) #0 {
  %2 = alloca %struct.komeda_dev*, align 8
  %3 = alloca %struct.d71_dev*, align 8
  %4 = alloca %struct.d71_pipeline*, align 8
  %5 = alloca i64, align 8
  store %struct.komeda_dev* %0, %struct.komeda_dev** %2, align 8
  %6 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %7 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %6, i32 0, i32 0
  %8 = load %struct.d71_dev*, %struct.d71_dev** %7, align 8
  store %struct.d71_dev* %8, %struct.d71_dev** %3, align 8
  %9 = load %struct.d71_dev*, %struct.d71_dev** %3, align 8
  %10 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BLK_IRQ_MASK, align 4
  %13 = load i32, i32* @ENABLED_GCU_IRQS, align 4
  %14 = call i32 @malidp_write32_mask(i32 %11, i32 %12, i32 %13, i32 0)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %46, %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.d71_dev*, %struct.d71_dev** %3, align 8
  %18 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load %struct.d71_dev*, %struct.d71_dev** %3, align 8
  %23 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %22, i32 0, i32 1
  %24 = load %struct.d71_pipeline**, %struct.d71_pipeline*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.d71_pipeline*, %struct.d71_pipeline** %24, i64 %25
  %27 = load %struct.d71_pipeline*, %struct.d71_pipeline** %26, align 8
  store %struct.d71_pipeline* %27, %struct.d71_pipeline** %4, align 8
  %28 = load %struct.d71_pipeline*, %struct.d71_pipeline** %4, align 8
  %29 = getelementptr inbounds %struct.d71_pipeline, %struct.d71_pipeline* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BLK_IRQ_MASK, align 4
  %32 = load i32, i32* @ENABLED_CU_IRQS, align 4
  %33 = call i32 @malidp_write32_mask(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.d71_pipeline*, %struct.d71_pipeline** %4, align 8
  %35 = getelementptr inbounds %struct.d71_pipeline, %struct.d71_pipeline* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BLK_IRQ_MASK, align 4
  %38 = load i32, i32* @ENABLED_LPU_IRQS, align 4
  %39 = call i32 @malidp_write32_mask(i32 %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.d71_pipeline*, %struct.d71_pipeline** %4, align 8
  %41 = getelementptr inbounds %struct.d71_pipeline, %struct.d71_pipeline* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BLK_IRQ_MASK, align 4
  %44 = load i32, i32* @ENABLED_DOU_IRQS, align 4
  %45 = call i32 @malidp_write32_mask(i32 %42, i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %21
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %15

49:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @malidp_write32_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
