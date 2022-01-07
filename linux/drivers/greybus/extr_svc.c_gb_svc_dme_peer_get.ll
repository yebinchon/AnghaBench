; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_dme_peer_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_dme_peer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_dme_peer_get_request = type { i8*, i8*, i32 }
%struct.gb_svc_dme_peer_get_response = type { i32, i32 }

@GB_SVC_TYPE_DME_PEER_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to get DME attribute (%u 0x%04x %u): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"UniPro error while getting DME attribute (%u 0x%04x %u): %u\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_dme_peer_get(%struct.gb_svc* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_svc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gb_svc_dme_peer_get_request, align 8
  %13 = alloca %struct.gb_svc_dme_peer_get_response, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.gb_svc_dme_peer_get_request, %struct.gb_svc_dme_peer_get_request* %12, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.gb_svc_dme_peer_get_request, %struct.gb_svc_dme_peer_get_request* %12, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.gb_svc_dme_peer_get_request, %struct.gb_svc_dme_peer_get_request* %12, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %25 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GB_SVC_TYPE_DME_PEER_GET, align 4
  %28 = call i32 @gb_operation_sync(i32 %26, i32 %27, %struct.gb_svc_dme_peer_get_request* %12, i32 24, %struct.gb_svc_dme_peer_get_response* %13, i32 8)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %33 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %65

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.gb_svc_dme_peer_get_response, %struct.gb_svc_dme_peer_get_response* %13, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %48 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @EREMOTEIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %65

56:                                               ; preds = %40
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gb_svc_dme_peer_get_response, %struct.gb_svc_dme_peer_get_response* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %56
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %46, %31
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_svc_dme_peer_get_request*, i32, %struct.gb_svc_dme_peer_get_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
