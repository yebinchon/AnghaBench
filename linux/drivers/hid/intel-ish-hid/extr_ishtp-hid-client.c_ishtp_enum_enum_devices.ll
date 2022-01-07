; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ishtp_enum_enum_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ishtp_enum_enum_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }
%struct.hostif_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ishtp_cl_data = type { i32, i32, i32, i32, i32, i32 }

@HOSTIF_DM_ENUM_DEVICES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[hid-ish]: timed out waiting for enum_devices\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"[hid-ish]: failed to allocate HID dev structures\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"[hid-ish]: enum_devices_done OK, num_hid_devices=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl*)* @ishtp_enum_enum_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_enum_enum_devices(%struct.ishtp_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca %struct.hostif_msg, align 4
  %5 = alloca %struct.ishtp_cl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %3, align 8
  %8 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %9 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %8)
  store %struct.ishtp_cl_data* %9, %struct.ishtp_cl_data** %5, align 8
  %10 = call i32 @memset(%struct.hostif_msg* %4, i32 0, i32 4)
  %11 = load i32, i32* @HOSTIF_DM_ENUM_DEVICES, align 4
  %12 = getelementptr inbounds %struct.hostif_msg, %struct.hostif_msg* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %15 = bitcast %struct.hostif_msg* %4 to i8*
  %16 = call i32 @ishtp_cl_send(%struct.ishtp_cl* %14, i8* %15, i32 4)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %24 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 10
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  br i1 %31, label %32, label %53

32:                                               ; preds = %30
  %33 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %34 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %37 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 3, %39
  %41 = call i32 @wait_event_interruptible_timeout(i32 %35, i32 %38, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %45 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %50 = bitcast %struct.hostif_msg* %4 to i8*
  %51 = call i32 @ishtp_cl_send(%struct.ishtp_cl* %49, i8* %50, i32 4)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %32
  br label %22

53:                                               ; preds = %30
  %54 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %55 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %60 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %59)
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %89

64:                                               ; preds = %53
  %65 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %66 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %71 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %70)
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %89

75:                                               ; preds = %64
  %76 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %77 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %80 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %82 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ishtp_device(i32 %83)
  %85 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %86 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(i32 %84, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %75, %69, %58, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local i32 @memset(%struct.hostif_msg*, i32, i32) #1

declare dso_local i32 @ishtp_cl_send(%struct.ishtp_cl*, i8*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @ishtp_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
