; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_find_boot_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_find_boot_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_single_dpm_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_single_dpm_table*, i64, i64*)* @ci_find_boot_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_find_boot_level(%struct.ci_single_dpm_table* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.ci_single_dpm_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ci_single_dpm_table* %0, %struct.ci_single_dpm_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %4, align 8
  %14 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %4, align 8
  %20 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %18, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = load i64*, i64** %6, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
