; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.bnxt_qplib_rcfw* }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_ah = type { i32 }
%struct.cmdq_destroy_ah = type { i32 }
%struct.creq_destroy_ah_resp = type { i32 }

@DESTROY_AH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_destroy_ah(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_ah* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt_qplib_res*, align 8
  %5 = alloca %struct.bnxt_qplib_ah*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %8 = alloca %struct.cmdq_destroy_ah, align 4
  %9 = alloca %struct.creq_destroy_ah_resp, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %4, align 8
  store %struct.bnxt_qplib_ah* %1, %struct.bnxt_qplib_ah** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %11, i32 0, i32 0
  %13 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %12, align 8
  store %struct.bnxt_qplib_rcfw* %13, %struct.bnxt_qplib_rcfw** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @DESTROY_AH, align 4
  %15 = load i32, i32* %10, align 4
  %16 = getelementptr inbounds %struct.cmdq_destroy_ah, %struct.cmdq_destroy_ah* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @RCFW_CMD_PREP(i32 %17, i32 %14, i32 %15)
  %19 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.cmdq_destroy_ah, %struct.cmdq_destroy_ah* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %25 = bitcast %struct.cmdq_destroy_ah* %8 to i8*
  %26 = bitcast %struct.creq_destroy_ah_resp* %9 to i8*
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %24, i8* %25, i8* %26, i32* null, i32 %27)
  ret void
}

declare dso_local i32 @RCFW_CMD_PREP(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
