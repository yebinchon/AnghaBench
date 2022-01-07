; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_sriov.c_adf_vf2pf_bh_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_sriov.c_adf_vf2pf_bh_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_vf_info = type { i32 }
%struct.adf_pf2vf_resp = type { i32, %struct.adf_accel_vf_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@adf_iov_send_resp = common dso_local global i32 0, align 4
@pf2vf_resp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @adf_vf2pf_bh_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_vf2pf_bh_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.adf_accel_vf_info*, align 8
  %4 = alloca %struct.adf_pf2vf_resp*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.adf_accel_vf_info*
  store %struct.adf_accel_vf_info* %6, %struct.adf_accel_vf_info** %3, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.adf_pf2vf_resp* @kzalloc(i32 16, i32 %7)
  store %struct.adf_pf2vf_resp* %8, %struct.adf_pf2vf_resp** %4, align 8
  %9 = load %struct.adf_pf2vf_resp*, %struct.adf_pf2vf_resp** %4, align 8
  %10 = icmp ne %struct.adf_pf2vf_resp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.adf_accel_vf_info*, %struct.adf_accel_vf_info** %3, align 8
  %14 = load %struct.adf_pf2vf_resp*, %struct.adf_pf2vf_resp** %4, align 8
  %15 = getelementptr inbounds %struct.adf_pf2vf_resp, %struct.adf_pf2vf_resp* %14, i32 0, i32 1
  store %struct.adf_accel_vf_info* %13, %struct.adf_accel_vf_info** %15, align 8
  %16 = load %struct.adf_pf2vf_resp*, %struct.adf_pf2vf_resp** %4, align 8
  %17 = getelementptr inbounds %struct.adf_pf2vf_resp, %struct.adf_pf2vf_resp* %16, i32 0, i32 0
  %18 = load i32, i32* @adf_iov_send_resp, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load i32, i32* @pf2vf_resp_wq, align 4
  %21 = load %struct.adf_pf2vf_resp*, %struct.adf_pf2vf_resp** %4, align 8
  %22 = getelementptr inbounds %struct.adf_pf2vf_resp, %struct.adf_pf2vf_resp* %21, i32 0, i32 0
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.adf_pf2vf_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
