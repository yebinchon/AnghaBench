; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.msi_msg = type { i32, i64, i64 }
%struct.irq_data = type { i64, %struct.mvebu_icu_irq_data*, i32 }
%struct.mvebu_icu_irq_data = type { i32, i32, %struct.mvebu_icu* }
%struct.mvebu_icu = type { i64 }
%struct.mvebu_icu_msi_data = type { i32 }

@ICU_INT_ENABLE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@ICU_IS_EDGE = common dso_local global i32 0, align 4
@ICU_GROUP_SHIFT = common dso_local global i32 0, align 4
@ICU_SATA0_ICU_ID = common dso_local global i64 0, align 8
@ICU_SATA1_ICU_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_desc*, %struct.msi_msg*)* @mvebu_icu_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_icu_write_msg(%struct.msi_desc* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.mvebu_icu_msi_data*, align 8
  %7 = alloca %struct.mvebu_icu_irq_data*, align 8
  %8 = alloca %struct.mvebu_icu*, align 8
  %9 = alloca i32, align 4
  store %struct.msi_desc* %0, %struct.msi_desc** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %10 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %11 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.irq_data* @irq_get_irq_data(i32 %12)
  store %struct.irq_data* %13, %struct.irq_data** %5, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mvebu_icu_msi_data* @platform_msi_get_host_data(i32 %16)
  store %struct.mvebu_icu_msi_data* %17, %struct.mvebu_icu_msi_data** %6, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 1
  %20 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %19, align 8
  store %struct.mvebu_icu_irq_data* %20, %struct.mvebu_icu_irq_data** %7, align 8
  %21 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %7, align 8
  %22 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %21, i32 0, i32 2
  %23 = load %struct.mvebu_icu*, %struct.mvebu_icu** %22, align 8
  store %struct.mvebu_icu* %23, %struct.mvebu_icu** %8, align 8
  %24 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %25 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28, %2
  %34 = load %struct.mvebu_icu*, %struct.mvebu_icu** %8, align 8
  %35 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %6, align 8
  %36 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %37 = call i32 @mvebu_icu_init(%struct.mvebu_icu* %34, %struct.mvebu_icu_msi_data* %35, %struct.msi_msg* %36)
  %38 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %39 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ICU_INT_ENABLE, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %7, align 8
  %44 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load i32, i32* @ICU_IS_EDGE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %33
  %54 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %7, align 8
  %55 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ICU_GROUP_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %62

61:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.mvebu_icu*, %struct.mvebu_icu** %8, align 8
  %65 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %68 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @ICU_INT_CFG(i64 %69)
  %71 = add nsw i64 %66, %70
  %72 = call i32 @writel_relaxed(i32 %63, i64 %71)
  %73 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %74 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ICU_SATA0_ICU_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %62
  %79 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %80 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ICU_SATA1_ICU_ID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78, %62
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.mvebu_icu*, %struct.mvebu_icu** %8, align 8
  %87 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ICU_SATA0_ICU_ID, align 8
  %90 = call i64 @ICU_INT_CFG(i64 %89)
  %91 = add nsw i64 %88, %90
  %92 = call i32 @writel_relaxed(i32 %85, i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.mvebu_icu*, %struct.mvebu_icu** %8, align 8
  %95 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ICU_SATA1_ICU_ID, align 8
  %98 = call i64 @ICU_INT_CFG(i64 %97)
  %99 = add nsw i64 %96, %98
  %100 = call i32 @writel_relaxed(i32 %93, i64 %99)
  br label %101

101:                                              ; preds = %84, %78
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local %struct.mvebu_icu_msi_data* @platform_msi_get_host_data(i32) #1

declare dso_local i32 @mvebu_icu_init(%struct.mvebu_icu*, %struct.mvebu_icu_msi_data*, %struct.msi_msg*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ICU_INT_CFG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
