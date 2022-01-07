; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_loader_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_loader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }
%struct.ishtp_fw_client = type { i32 }
%struct.ishtp_cl_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"reset flag: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ishtp_cl_link failed\0A\00", align 1
@LOADER_CL_TX_RING_SIZE = common dso_local global i32 0, align 4
@LOADER_CL_RX_RING_SIZE = common dso_local global i32 0, align 4
@loader_ishtp_guid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ISH client uuid not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ISHTP_CL_CONNECTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Client connect fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Client connected\0A\00", align 1
@loader_cl_event_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl*, i32)* @loader_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loader_init(%struct.ishtp_cl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ishtp_cl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ishtp_fw_client*, align 8
  %8 = alloca %struct.ishtp_cl_data*, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %10 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %9)
  store %struct.ishtp_cl_data* %10, %struct.ishtp_cl_data** %8, align 8
  %11 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %12 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %16 = call i32 @ishtp_cl_link(%struct.ishtp_cl* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %21 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %20)
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %26 = load i32, i32* @LOADER_CL_TX_RING_SIZE, align 4
  %27 = call i32 @ishtp_set_tx_ring_size(%struct.ishtp_cl* %25, i32 %26)
  %28 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %29 = load i32, i32* @LOADER_CL_RX_RING_SIZE, align 4
  %30 = call i32 @ishtp_set_rx_ring_size(%struct.ishtp_cl* %28, i32 %29)
  %31 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %32 = call i32 @ishtp_get_ishtp_device(%struct.ishtp_cl* %31)
  %33 = call %struct.ishtp_fw_client* @ishtp_fw_cl_get_client(i32 %32, i32* @loader_ishtp_guid)
  store %struct.ishtp_fw_client* %33, %struct.ishtp_fw_client** %7, align 8
  %34 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %7, align 8
  %35 = icmp ne %struct.ishtp_fw_client* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %38 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %37)
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %67

42:                                               ; preds = %24
  %43 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %44 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %7, align 8
  %45 = call i32 @ishtp_get_fw_client_id(%struct.ishtp_fw_client* %44)
  %46 = call i32 @ishtp_cl_set_fw_client_id(%struct.ishtp_cl* %43, i32 %45)
  %47 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %48 = load i32, i32* @ISHTP_CL_CONNECTING, align 4
  %49 = call i32 @ishtp_set_connection_state(%struct.ishtp_cl* %47, i32 %48)
  %50 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %51 = call i32 @ishtp_cl_connect(%struct.ishtp_cl* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %56 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %55)
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %67

58:                                               ; preds = %42
  %59 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %60 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %59)
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %63 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @loader_cl_event_cb, align 4
  %66 = call i32 @ishtp_register_event_cb(i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %71

67:                                               ; preds = %54, %36
  %68 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %69 = call i32 @ishtp_cl_unlink(%struct.ishtp_cl* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %58, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local i32 @ishtp_cl_link(%struct.ishtp_cl*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ishtp_set_tx_ring_size(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_set_rx_ring_size(%struct.ishtp_cl*, i32) #1

declare dso_local %struct.ishtp_fw_client* @ishtp_fw_cl_get_client(i32, i32*) #1

declare dso_local i32 @ishtp_get_ishtp_device(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_set_fw_client_id(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_get_fw_client_id(%struct.ishtp_fw_client*) #1

declare dso_local i32 @ishtp_set_connection_state(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_cl_connect(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_register_event_cb(i32, i32) #1

declare dso_local i32 @ishtp_cl_unlink(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
