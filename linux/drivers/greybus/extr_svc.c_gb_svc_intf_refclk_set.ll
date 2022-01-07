; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_refclk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_refclk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32 }
%struct.gb_svc_intf_refclk_request = type { i32 }
%struct.gb_svc_intf_refclk_response = type { i64 }

@GB_SVC_TYPE_INTF_REFCLK_ENABLE = common dso_local global i32 0, align 4
@GB_SVC_TYPE_INTF_REFCLK_DISABLE = common dso_local global i32 0, align 4
@GB_SVC_INTF_REFCLK_OK = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_intf_refclk_set(%struct.gb_svc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_svc_intf_refclk_request, align 4
  %9 = alloca %struct.gb_svc_intf_refclk_response, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.gb_svc_intf_refclk_request, %struct.gb_svc_intf_refclk_request* %8, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @GB_SVC_TYPE_INTF_REFCLK_ENABLE, align 4
  store i32 %17, i32* %10, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @GB_SVC_TYPE_INTF_REFCLK_DISABLE, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %22 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @gb_operation_sync(i32 %23, i32 %24, %struct.gb_svc_intf_refclk_request* %8, i32 4, %struct.gb_svc_intf_refclk_response* %9, i32 8)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.gb_svc_intf_refclk_response, %struct.gb_svc_intf_refclk_response* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GB_SVC_INTF_REFCLK_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EREMOTEIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35, %28
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_svc_intf_refclk_request*, i32, %struct.gb_svc_intf_refclk_response*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
