; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_pkt_slc_resp_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_pkt_slc_resp_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_q_vector = type { %struct.nitrox_cmdq* }
%struct.nitrox_cmdq = type { i32, i32, i32 }
%union.nps_pkt_slc_cnts = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkt_slc_resp_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nitrox_q_vector*, align 8
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca %union.nps_pkt_slc_cnts, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.nitrox_q_vector*
  store %struct.nitrox_q_vector* %8, %struct.nitrox_q_vector** %3, align 8
  %9 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %3, align 8
  %10 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %9, i32 0, i32 0
  %11 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %10, align 8
  store %struct.nitrox_cmdq* %11, %struct.nitrox_cmdq** %4, align 8
  %12 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %13 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readq(i32 %14)
  %16 = bitcast %union.nps_pkt_slc_cnts* %5 to i32*
  store i32 %15, i32* %16, align 4
  %17 = bitcast %union.nps_pkt_slc_cnts* %5 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %20 = call i32 @process_response_list(%struct.nitrox_cmdq* %19)
  %21 = bitcast %union.nps_pkt_slc_cnts* %5 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %24 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writeq(i32 %22, i32 %25)
  %27 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %28 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %27, i32 0, i32 1
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %33 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %32, i32 0, i32 0
  %34 = call i32 @schedule_work(i32* %33)
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @readq(i32) #1

declare dso_local i32 @process_response_list(%struct.nitrox_cmdq*) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
