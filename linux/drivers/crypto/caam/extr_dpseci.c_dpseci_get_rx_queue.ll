; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_get_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_get_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpseci_rx_queue_attr = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpseci_cmd_queue = type { i32, i32, i32, i32, i32, i32, i32 }

@DPSECI_CMDID_GET_RX_QUEUE = common dso_local global i32 0, align 4
@DEST_TYPE = common dso_local global i32 0, align 4
@ORDER_PRESERVATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpseci_get_rx_queue(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpseci_rx_queue_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpseci_rx_queue_attr*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  %13 = alloca %struct.dpseci_cmd_queue*, align 8
  %14 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpseci_rx_queue_attr* %4, %struct.dpseci_rx_queue_attr** %11, align 8
  %15 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* @DPSECI_CMDID_GET_RX_QUEUE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @mc_encode_cmd_header(i32 %16, i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.dpseci_cmd_queue*
  store %struct.dpseci_cmd_queue* %23, %struct.dpseci_cmd_queue** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %26 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %7, align 8
  %28 = call i32 @mc_send_command(%struct.fsl_mc_io* %27, %struct.fsl_mc_command* %12)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %6, align 4
  br label %74

33:                                               ; preds = %5
  %34 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %35 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = load %struct.dpseci_rx_queue_attr*, %struct.dpseci_rx_queue_attr** %11, align 8
  %39 = getelementptr inbounds %struct.dpseci_rx_queue_attr, %struct.dpseci_rx_queue_attr* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %42 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dpseci_rx_queue_attr*, %struct.dpseci_rx_queue_attr** %11, align 8
  %45 = getelementptr inbounds %struct.dpseci_rx_queue_attr, %struct.dpseci_rx_queue_attr* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %48 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DEST_TYPE, align 4
  %51 = call i8* @dpseci_get_field(i32 %49, i32 %50)
  %52 = load %struct.dpseci_rx_queue_attr*, %struct.dpseci_rx_queue_attr** %11, align 8
  %53 = getelementptr inbounds %struct.dpseci_rx_queue_attr, %struct.dpseci_rx_queue_attr* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %56 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le64_to_cpu(i32 %57)
  %59 = load %struct.dpseci_rx_queue_attr*, %struct.dpseci_rx_queue_attr** %11, align 8
  %60 = getelementptr inbounds %struct.dpseci_rx_queue_attr, %struct.dpseci_rx_queue_attr* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %62 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.dpseci_rx_queue_attr*, %struct.dpseci_rx_queue_attr** %11, align 8
  %66 = getelementptr inbounds %struct.dpseci_rx_queue_attr, %struct.dpseci_rx_queue_attr* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.dpseci_cmd_queue*, %struct.dpseci_cmd_queue** %13, align 8
  %68 = getelementptr inbounds %struct.dpseci_cmd_queue, %struct.dpseci_cmd_queue* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ORDER_PRESERVATION, align 4
  %71 = call i8* @dpseci_get_field(i32 %69, i32 %70)
  %72 = load %struct.dpseci_rx_queue_attr*, %struct.dpseci_rx_queue_attr** %11, align 8
  %73 = getelementptr inbounds %struct.dpseci_rx_queue_attr, %struct.dpseci_rx_queue_attr* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %33, %31
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i8* @dpseci_get_field(i32, i32) #2

declare dso_local i32 @le64_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
