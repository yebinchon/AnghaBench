; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_update_pe_sds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_update_pe_sds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.i40iw_update_sds_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_update_sds_info*, i32)* @i40iw_update_pe_sds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_update_pe_sds(%struct.i40iw_sc_dev* %0, %struct.i40iw_update_sds_info* %1, i32 %2) #0 {
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_update_sds_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_cqp*, align 8
  %8 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_update_sds_info* %1, %struct.i40iw_update_sds_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %9, i32 0, i32 0
  %11 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  store %struct.i40iw_sc_cqp* %11, %struct.i40iw_sc_cqp** %7, align 8
  %12 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %13 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cqp_sds_wqe_fill(%struct.i40iw_sc_cqp* %12, %struct.i40iw_update_sds_info* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %20 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

declare dso_local i32 @cqp_sds_wqe_fill(%struct.i40iw_sc_cqp*, %struct.i40iw_update_sds_info*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
