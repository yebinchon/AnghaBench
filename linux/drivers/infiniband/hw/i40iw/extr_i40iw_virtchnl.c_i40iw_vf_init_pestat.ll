; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_i40iw_vf_init_pestat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_i40iw_vf_init_pestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_vsi_pestat = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_dev*, %struct.i40iw_vsi_pestat*, i64)* @i40iw_vf_init_pestat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_vf_init_pestat(%struct.i40iw_sc_dev* %0, %struct.i40iw_vsi_pestat* %1, i64 %2) #0 {
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_vsi_pestat*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_vsi_pestat* %1, %struct.i40iw_vsi_pestat** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %5, align 8
  %11 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @i40iw_hw_stats_init(%struct.i40iw_vsi_pestat* %12, i32 %14, i32 0)
  %16 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_init(i32* %17)
  ret void
}

declare dso_local i32 @i40iw_hw_stats_init(%struct.i40iw_vsi_pestat*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
