; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_set_power_mode_hibernate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_set_power_mode_hibernate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_intf_set_pwrm_request = type { i8*, i8*, i32, i32 }
%struct.gb_svc_intf_set_pwrm_response = type { i32 }

@GB_SVC_UNIPRO_HS_SERIES_A = common dso_local global i32 0, align 4
@GB_SVC_UNIPRO_HIBERNATE_MODE = common dso_local global i8* null, align 8
@GB_SVC_TYPE_INTF_SET_PWRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed to send set power mode operation to interface %u: %d\0A\00", align 1
@GB_SVC_SETPWRM_PWR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to hibernate the link for interface %u: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_intf_set_power_mode_hibernate(%struct.gb_svc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_svc_intf_set_pwrm_request, align 8
  %7 = alloca %struct.gb_svc_intf_set_pwrm_response, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 @memset(%struct.gb_svc_intf_set_pwrm_request* %6, i32 0, i32 24)
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, %struct.gb_svc_intf_set_pwrm_request* %6, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @GB_SVC_UNIPRO_HS_SERIES_A, align 4
  %14 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, %struct.gb_svc_intf_set_pwrm_request* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** @GB_SVC_UNIPRO_HIBERNATE_MODE, align 8
  %16 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, %struct.gb_svc_intf_set_pwrm_request* %6, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @GB_SVC_UNIPRO_HIBERNATE_MODE, align 8
  %18 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, %struct.gb_svc_intf_set_pwrm_request* %6, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %20 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GB_SVC_TYPE_INTF_SET_PWRM, align 4
  %23 = call i32 @gb_operation_sync(i32 %21, i32 %22, %struct.gb_svc_intf_set_pwrm_request* %6, i32 24, %struct.gb_svc_intf_set_pwrm_response* %7, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %28 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_response, %struct.gb_svc_intf_set_pwrm_response* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @GB_SVC_SETPWRM_PWR_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %41 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.gb_svc_intf_set_pwrm_request*, i32, i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_svc_intf_set_pwrm_request*, i32, %struct.gb_svc_intf_set_pwrm_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
