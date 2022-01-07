; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_set_congestion_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_set_congestion_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpseci_congestion_notification_cfg = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpseci_cmd_congestion_notification = type { i8*, i8*, i8*, i8*, i32, i32, i32, i8* }

@DPSECI_CMDID_SET_CONGESTION_NOTIFICATION = common dso_local global i32 0, align 4
@CGN_DEST_TYPE = common dso_local global i32 0, align 4
@CGN_UNITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpseci_set_congestion_notification(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpseci_congestion_notification_cfg* %3) #0 {
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpseci_congestion_notification_cfg*, align 8
  %9 = alloca %struct.fsl_mc_command, align 8
  %10 = alloca %struct.dpseci_cmd_congestion_notification*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dpseci_congestion_notification_cfg* %3, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %11 = bitcast %struct.fsl_mc_command* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @DPSECI_CMDID_SET_CONGESTION_NOTIFICATION, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mc_encode_cmd_header(i32 %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dpseci_cmd_congestion_notification*
  store %struct.dpseci_cmd_congestion_notification* %19, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %20 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %21 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %26 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %28 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %32 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %34 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %38 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %40 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CGN_DEST_TYPE, align 4
  %43 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %44 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dpseci_set_field(i32 %41, i32 %42, i32 %46)
  %48 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %49 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CGN_UNITS, align 4
  %52 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %53 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dpseci_set_field(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %57 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le64(i32 %58)
  %60 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %61 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %63 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le64(i32 %64)
  %66 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %67 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %69 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %73 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.dpseci_congestion_notification_cfg*, %struct.dpseci_congestion_notification_cfg** %8, align 8
  %75 = getelementptr inbounds %struct.dpseci_congestion_notification_cfg, %struct.dpseci_congestion_notification_cfg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.dpseci_cmd_congestion_notification*, %struct.dpseci_cmd_congestion_notification** %10, align 8
  %79 = getelementptr inbounds %struct.dpseci_cmd_congestion_notification, %struct.dpseci_cmd_congestion_notification* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %81 = call i32 @mc_send_command(%struct.fsl_mc_io* %80, %struct.fsl_mc_command* %9)
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @dpseci_set_field(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
