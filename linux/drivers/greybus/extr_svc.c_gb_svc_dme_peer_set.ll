; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_dme_peer_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_dme_peer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_dme_peer_set_request = type { i32, i8*, i8*, i32 }
%struct.gb_svc_dme_peer_set_response = type { i32 }

@GB_SVC_TYPE_DME_PEER_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to set DME attribute (%u 0x%04x %u %u): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"UniPro error while setting DME attribute (%u 0x%04x %u %u): %u\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_dme_peer_set(%struct.gb_svc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_svc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gb_svc_dme_peer_set_request, align 8
  %13 = alloca %struct.gb_svc_dme_peer_set_response, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, %struct.gb_svc_dme_peer_set_request* %12, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, %struct.gb_svc_dme_peer_set_request* %12, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, %struct.gb_svc_dme_peer_set_request* %12, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, %struct.gb_svc_dme_peer_set_request* %12, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %28 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GB_SVC_TYPE_DME_PEER_SET, align 4
  %31 = call i32 @gb_operation_sync(i32 %29, i32 %30, %struct.gb_svc_dme_peer_set_request* %12, i32 32, %struct.gb_svc_dme_peer_set_response* %13, i32 4)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %5
  %35 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %36 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %6, align 4
  br label %62

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.gb_svc_dme_peer_set_response, %struct.gb_svc_dme_peer_set_response* %13, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %52 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EREMOTEIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %50, %34
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_svc_dme_peer_set_request*, i32, %struct.gb_svc_dme_peer_set_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
