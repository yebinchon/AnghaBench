; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_vf_hmcinfo_from_fpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_vf_hmcinfo_from_fpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_info = type { i32 }
%struct.i40iw_sc_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.i40iw_hmc_info, i64 }

@I40IW_MAX_PE_ENABLED_VF_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40iw_hmc_info* @i40iw_vf_hmcinfo_from_fpm(%struct.i40iw_sc_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40iw_hmc_info*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.i40iw_hmc_info* null, %struct.i40iw_hmc_info** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.i40iw_hmc_info* %37, %struct.i40iw_hmc_info** %5, align 8
  br label %42

38:                                               ; preds = %19, %11
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %7

42:                                               ; preds = %30, %7
  %43 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %5, align 8
  ret %struct.i40iw_hmc_info* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
