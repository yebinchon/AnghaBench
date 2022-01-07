; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_hmc_sd_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_hmc_sd_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)* }
%struct.i40iw_update_sds_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_hmc_sd_one(%struct.i40iw_sc_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.i40iw_sc_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40iw_update_sds_info, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @i40iw_set_sd_entry(i32 %20, i32 %21, i32 %22, i32 %24)
  br label %32

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %13, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i40iw_clr_sd_entry(i32 %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)*, i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*)** %36, align 8
  %38 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %39 = call i32 %37(%struct.i40iw_sc_dev* %38, %struct.i40iw_update_sds_info* %13)
  ret i32 %39
}

declare dso_local i32 @i40iw_set_sd_entry(i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_clr_sd_entry(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
