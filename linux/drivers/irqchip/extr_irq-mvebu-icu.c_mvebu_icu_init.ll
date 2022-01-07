; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_icu = type { i64 }
%struct.mvebu_icu_msi_data = type { i32, %struct.mvebu_icu_subset_data* }
%struct.mvebu_icu_subset_data = type { i64, i64, i64, i64, i64 }
%struct.msi_msg = type { i32, i32 }

@ICU_GRP_NSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_icu*, %struct.mvebu_icu_msi_data*, %struct.msi_msg*)* @mvebu_icu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_icu_init(%struct.mvebu_icu* %0, %struct.mvebu_icu_msi_data* %1, %struct.msi_msg* %2) #0 {
  %4 = alloca %struct.mvebu_icu*, align 8
  %5 = alloca %struct.mvebu_icu_msi_data*, align 8
  %6 = alloca %struct.msi_msg*, align 8
  %7 = alloca %struct.mvebu_icu_subset_data*, align 8
  store %struct.mvebu_icu* %0, %struct.mvebu_icu** %4, align 8
  store %struct.mvebu_icu_msi_data* %1, %struct.mvebu_icu_msi_data** %5, align 8
  store %struct.msi_msg* %2, %struct.msi_msg** %6, align 8
  %8 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %5, align 8
  %9 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %8, i32 0, i32 1
  %10 = load %struct.mvebu_icu_subset_data*, %struct.mvebu_icu_subset_data** %9, align 8
  store %struct.mvebu_icu_subset_data* %10, %struct.mvebu_icu_subset_data** %7, align 8
  %11 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %5, align 8
  %12 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %11, i32 0, i32 0
  %13 = call i64 @atomic_cmpxchg(i32* %12, i32 0, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %72

16:                                               ; preds = %3
  %17 = load %struct.msi_msg*, %struct.msi_msg** %6, align 8
  %18 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %17, i64 0
  %19 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %22 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mvebu_icu_subset_data*, %struct.mvebu_icu_subset_data** %7, align 8
  %25 = getelementptr inbounds %struct.mvebu_icu_subset_data, %struct.mvebu_icu_subset_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @writel_relaxed(i32 %20, i64 %27)
  %29 = load %struct.msi_msg*, %struct.msi_msg** %6, align 8
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %29, i64 0
  %31 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %34 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mvebu_icu_subset_data*, %struct.mvebu_icu_subset_data** %7, align 8
  %37 = getelementptr inbounds %struct.mvebu_icu_subset_data, %struct.mvebu_icu_subset_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @writel_relaxed(i32 %32, i64 %39)
  %41 = load %struct.mvebu_icu_subset_data*, %struct.mvebu_icu_subset_data** %7, align 8
  %42 = getelementptr inbounds %struct.mvebu_icu_subset_data, %struct.mvebu_icu_subset_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ICU_GRP_NSR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %16
  br label %72

47:                                               ; preds = %16
  %48 = load %struct.msi_msg*, %struct.msi_msg** %6, align 8
  %49 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %48, i64 1
  %50 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %53 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mvebu_icu_subset_data*, %struct.mvebu_icu_subset_data** %7, align 8
  %56 = getelementptr inbounds %struct.mvebu_icu_subset_data, %struct.mvebu_icu_subset_data* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @writel_relaxed(i32 %51, i64 %58)
  %60 = load %struct.msi_msg*, %struct.msi_msg** %6, align 8
  %61 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %60, i64 1
  %62 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %65 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mvebu_icu_subset_data*, %struct.mvebu_icu_subset_data** %7, align 8
  %68 = getelementptr inbounds %struct.mvebu_icu_subset_data, %struct.mvebu_icu_subset_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = call i32 @writel_relaxed(i32 %63, i64 %70)
  br label %72

72:                                               ; preds = %47, %46, %15
  ret void
}

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
