; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_prop_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_prop_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.hbm_props_request = type { i64, i32, i32 }

@ISHTP_CLIENTS_MAX = common dso_local global i64 0, align 8
@ISHTP_HBM_WORKING = common dso_local global i32 0, align 4
@ISHTP_DEV_ENABLED = common dso_local global i32 0, align 4
@HOST_CLIENT_PROPERTIES_REQ_CMD = common dso_local global i32 0, align 4
@ISHTP_DEV_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"properties request send failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_device*)* @ishtp_hbm_prop_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_hbm_prop_req(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ishtp_msg_hdr, align 4
  %5 = alloca %struct.hbm_props_request, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %8 = bitcast %struct.hbm_props_request* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %10 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %13 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @ISHTP_CLIENTS_MAX, align 8
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %17 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @find_next_bit(i32 %14, i64 %15, i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @ISHTP_CLIENTS_MAX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  %24 = load i32, i32* @ISHTP_HBM_WORKING, align 4
  %25 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %26 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @ISHTP_DEV_ENABLED, align 4
  %28 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %29 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %42, %23
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %34 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %41 = call i32 @ishtp_bus_new_client(%struct.ishtp_device* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %44 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %32

47:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %81

48:                                               ; preds = %1
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %51 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %49, i64* %56, align 8
  %57 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %4, i32 16)
  %58 = load i32, i32* @HOST_CLIENT_PROPERTIES_REQ_CMD, align 4
  %59 = getelementptr inbounds %struct.hbm_props_request, %struct.hbm_props_request* %5, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.hbm_props_request, %struct.hbm_props_request* %5, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %63 = call i64 @ishtp_write_message(%struct.ishtp_device* %62, %struct.ishtp_msg_hdr* %4, %struct.hbm_props_request* %5)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %48
  %66 = load i32, i32* @ISHTP_DEV_RESETTING, align 4
  %67 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %68 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %70 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %74 = call i32 @ish_hw_reset(%struct.ishtp_device* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %48
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %80 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %65, %47
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #2

declare dso_local i32 @ishtp_bus_new_client(%struct.ishtp_device*) #2

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i32) #2

declare dso_local i64 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, %struct.hbm_props_request*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @ish_hw_reset(%struct.ishtp_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
