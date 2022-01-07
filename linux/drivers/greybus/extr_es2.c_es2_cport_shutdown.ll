; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.arpc_cport_shutdown_req = type { i32, i8*, i8* }

@U16_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARPC_TYPE_CPORT_SHUTDOWN = common dso_local global i32 0, align 4
@ES2_ARPC_CPORT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"failed to send shutdown over cport %u: %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_host_device*, i32, i32, i32)* @es2_cport_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es2_cport_shutdown(%struct.gb_host_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.es2_ap_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.arpc_cport_shutdown_req, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %16 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %15)
  store %struct.es2_ap_dev* %16, %struct.es2_ap_dev** %10, align 8
  %17 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %10, align 8
  %18 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @U16_MAX, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %53

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = getelementptr inbounds %struct.arpc_cport_shutdown_req, %struct.arpc_cport_shutdown_req* %12, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.arpc_cport_shutdown_req, %struct.arpc_cport_shutdown_req* %12, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.arpc_cport_shutdown_req, %struct.arpc_cport_shutdown_req* %12, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %10, align 8
  %37 = load i32, i32* @ARPC_TYPE_CPORT_SHUTDOWN, align 4
  %38 = load i64, i64* @ES2_ARPC_CPORT_TIMEOUT, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @arpc_sync(%struct.es2_ap_dev* %36, i32 %37, %struct.arpc_cport_shutdown_req* %12, i32 24, i32* %13, i64 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %45, %24
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @arpc_sync(%struct.es2_ap_dev*, i32, %struct.arpc_cport_shutdown_req*, i32, i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
