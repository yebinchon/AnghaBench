; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_intf_resume_request = type { i32 }
%struct.gb_svc_intf_resume_response = type { i32 }

@GB_SVC_TYPE_INTF_RESUME = common dso_local global i32 0, align 4
@SVC_INTF_RESUME_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to send interface resume %u: %d\0A\00", align 1
@GB_SVC_OP_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to resume interface %u: %u\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_intf_resume(%struct.gb_svc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_svc_intf_resume_request, align 4
  %7 = alloca %struct.gb_svc_intf_resume_response, align 4
  %8 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.gb_svc_intf_resume_request, %struct.gb_svc_intf_resume_request* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %12 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GB_SVC_TYPE_INTF_RESUME, align 4
  %15 = load i32, i32* @SVC_INTF_RESUME_TIMEOUT, align 4
  %16 = call i32 @gb_operation_sync_timeout(i32 %13, i32 %14, %struct.gb_svc_intf_resume_request* %6, i32 4, %struct.gb_svc_intf_resume_response* %7, i32 4, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %21 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.gb_svc_intf_resume_response, %struct.gb_svc_intf_resume_response* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GB_SVC_OP_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %33 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.gb_svc_intf_resume_response, %struct.gb_svc_intf_resume_response* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* @EREMOTEIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @gb_operation_sync_timeout(i32, i32, %struct.gb_svc_intf_resume_request*, i32, %struct.gb_svc_intf_resume_response*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
