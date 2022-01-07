; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_intf_activate_request = type { i32 }
%struct.gb_svc_intf_activate_response = type { i64, i32 }

@GB_SVC_TYPE_INTF_ACTIVATE = common dso_local global i32 0, align 4
@SVC_INTF_ACTIVATE_TIMEOUT = common dso_local global i32 0, align 4
@GB_SVC_OP_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to activate interface %u: %u\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_intf_activate(%struct.gb_svc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gb_svc_intf_activate_request, align 4
  %9 = alloca %struct.gb_svc_intf_activate_response, align 8
  %10 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.gb_svc_intf_activate_request, %struct.gb_svc_intf_activate_request* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %14 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GB_SVC_TYPE_INTF_ACTIVATE, align 4
  %17 = load i32, i32* @SVC_INTF_ACTIVATE_TIMEOUT, align 4
  %18 = call i32 @gb_operation_sync_timeout(i32 %15, i32 %16, %struct.gb_svc_intf_activate_request* %8, i32 4, %struct.gb_svc_intf_activate_response* %9, i32 16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.gb_svc_intf_activate_response, %struct.gb_svc_intf_activate_response* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GB_SVC_OP_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %30 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.gb_svc_intf_activate_response, %struct.gb_svc_intf_activate_response* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %33)
  %35 = load i32, i32* @EREMOTEIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.gb_svc_intf_activate_response, %struct.gb_svc_intf_activate_response* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %28, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @gb_operation_sync_timeout(i32, i32, %struct.gb_svc_intf_activate_request*, i32, %struct.gb_svc_intf_activate_response*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
