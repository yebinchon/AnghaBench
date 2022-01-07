; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_reset_single_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_reset_single_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_single_dpm_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_REGULAR_DPM_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.ci_single_dpm_table*, i64)* @ci_reset_single_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_reset_single_dpm_table(%struct.radeon_device* %0, %struct.ci_single_dpm_table* %1, i64 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.ci_single_dpm_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.ci_single_dpm_table* %1, %struct.ci_single_dpm_table** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %5, align 8
  %10 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %22, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MAX_REGULAR_DPM_NUMBER, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %5, align 8
  %17 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %7, align 8
  br label %11

25:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
