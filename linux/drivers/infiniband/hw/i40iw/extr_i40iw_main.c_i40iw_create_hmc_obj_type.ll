; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_hmc_obj_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_hmc_obj_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_create_obj_info*)* }
%struct.i40iw_hmc_create_obj_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_create_obj_info*)* @i40iw_create_hmc_obj_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_create_hmc_obj_type(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_create_obj_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_hmc_create_obj_info*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store %struct.i40iw_hmc_create_obj_info* %1, %struct.i40iw_hmc_create_obj_info** %4, align 8
  %5 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_create_obj_info*)*, i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_create_obj_info*)** %8, align 8
  %10 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %11 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %4, align 8
  %12 = call i32 %9(%struct.i40iw_sc_dev* %10, %struct.i40iw_hmc_create_obj_info* %11)
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
