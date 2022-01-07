; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.arpc_cport_quiesce_req = type { i8*, i8*, i8* }

@U16_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARPC_TYPE_CPORT_QUIESCE = common dso_local global i32 0, align 4
@ES2_ARPC_CPORT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to quiesce cport %u: %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_host_device*, i32, i64, i32)* @es2_cport_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es2_cport_quiesce(%struct.gb_host_device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.es2_ap_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.arpc_cport_quiesce_req, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %16 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %15)
  store %struct.es2_ap_dev* %16, %struct.es2_ap_dev** %10, align 8
  %17 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %10, align 8
  %18 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @U16_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @U16_MAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %63

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.arpc_cport_quiesce_req, %struct.arpc_cport_quiesce_req* %12, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.arpc_cport_quiesce_req, %struct.arpc_cport_quiesce_req* %12, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.arpc_cport_quiesce_req, %struct.arpc_cport_quiesce_req* %12, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %10, align 8
  %47 = load i32, i32* @ARPC_TYPE_CPORT_QUIESCE, align 4
  %48 = load i64, i64* @ES2_ARPC_CPORT_TIMEOUT, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @arpc_sync(%struct.es2_ap_dev* %46, i32 %47, %struct.arpc_cport_quiesce_req* %12, i32 24, i32* %13, i64 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %35
  %56 = load %struct.device*, %struct.device** %11, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %55, %32, %24
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @arpc_sync(%struct.es2_ap_dev*, i32, %struct.arpc_cport_quiesce_req*, i32, i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
