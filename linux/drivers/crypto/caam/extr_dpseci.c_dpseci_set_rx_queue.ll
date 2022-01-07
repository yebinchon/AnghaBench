; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_set_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_set_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpseci_rx_queue_cfg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpseci_cmd_queue = type { i32, i8*, i32, i32, i32, i32, i8* }

@DPSECI_CMDID_SET_RX_QUEUE = common dso_local global i32 0, align 4
@DEST_TYPE = common dso_local global i32 0, align 4
@ORDER_PRESERVATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpseci_set_rx_queue(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpseci_rx_queue_cfg* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpseci_rx_queue_cfg*, align 8
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpseci_cmd_queue*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpseci_rx_queue_cfg* %4, %struct.dpseci_rx_queue_cfg** %10, align 8
  %13 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPSECI_CMDID_SET_RX_QUEUE, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dpseci_cmd_queue*
  store %struct.dpseci_cmd_queue* %21, %struct.dpseci_cmd_queue** %12, align 8
  %22 = load %struct.dpseci_rx_queue_cfg*, %struct.dpseci_rx_queue_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.dpseci_rx_queue_cfg, %struct.dpseci_rx_queue_cfg* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %28 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load %struct.dpseci_rx_queue_cfg*, %struct.dpseci_rx_queue_cfg** %10, align 8
  %30 = getelementptr inbounds %struct.dpseci_rx_queue_cfg, %struct.dpseci_rx_queue_cfg* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %34 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %37 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %39 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DEST_TYPE, align 4
  %42 = load %struct.dpseci_rx_queue_cfg*, %struct.dpseci_rx_queue_cfg** %10, align 8
  %43 = getelementptr inbounds %struct.dpseci_rx_queue_cfg, %struct.dpseci_rx_queue_cfg* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dpseci_set_field(i32 %40, i32 %41, i32 %45)
  %47 = load %struct.dpseci_rx_queue_cfg*, %struct.dpseci_rx_queue_cfg** %10, align 8
  %48 = getelementptr inbounds %struct.dpseci_rx_queue_cfg, %struct.dpseci_rx_queue_cfg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpu_to_le64(i32 %49)
  %51 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %52 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dpseci_rx_queue_cfg*, %struct.dpseci_rx_queue_cfg** %10, align 8
  %54 = getelementptr inbounds %struct.dpseci_rx_queue_cfg, %struct.dpseci_rx_queue_cfg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %58 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %12, align 8
  %60 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ORDER_PRESERVATION, align 4
  %63 = load %struct.dpseci_rx_queue_cfg*, %struct.dpseci_rx_queue_cfg** %10, align 8
  %64 = getelementptr inbounds %struct.dpseci_rx_queue_cfg, %struct.dpseci_rx_queue_cfg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dpseci_set_field(i32 %61, i32 %62, i32 %65)
  %67 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %68 = call i32 @mc_send_command(%struct.fsl_mc_io* %67, %struct.fsl_mc_command* %11)
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @dpseci_set_field(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
