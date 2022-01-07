; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_reset_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_reset_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.gb_message*, i32 }
%struct.gb_message = type { i32, %struct.gb_svc_intf_reset_request* }
%struct.gb_svc_intf_reset_request = type { i32 }
%struct.gb_svc = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"short reset request received (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_svc_intf_reset_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_intf_reset_recv(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca %struct.gb_message*, align 8
  %6 = alloca %struct.gb_svc_intf_reset_request*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %7 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %8 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.gb_svc* @gb_connection_get_data(i32 %9)
  store %struct.gb_svc* %10, %struct.gb_svc** %4, align 8
  %11 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %12 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %11, i32 0, i32 0
  %13 = load %struct.gb_message*, %struct.gb_message** %12, align 8
  store %struct.gb_message* %13, %struct.gb_message** %5, align 8
  %14 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  %15 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %21 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %20, i32 0, i32 0
  %22 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  %23 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 4)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  %30 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %29, i32 0, i32 1
  %31 = load %struct.gb_svc_intf_reset_request*, %struct.gb_svc_intf_reset_request** %30, align 8
  store %struct.gb_svc_intf_reset_request* %31, %struct.gb_svc_intf_reset_request** %6, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
