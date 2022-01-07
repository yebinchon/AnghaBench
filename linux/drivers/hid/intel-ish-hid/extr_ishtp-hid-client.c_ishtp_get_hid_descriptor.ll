; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ishtp_get_hid_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ishtp_get_hid_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }
%struct.hostif_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ishtp_cl_data = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HOSTIF_GET_HID_DESCRIPTOR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[hid-ish]: timed out for hid_descr_done\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[hid-ish]: allocation HID desc fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl*, i32)* @ishtp_get_hid_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_get_hid_descriptor(%struct.ishtp_cl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ishtp_cl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostif_msg, align 4
  %7 = alloca %struct.ishtp_cl_data*, align 8
  %8 = alloca i32, align 4
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %10 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %9)
  store %struct.ishtp_cl_data* %10, %struct.ishtp_cl_data** %7, align 8
  %11 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %12 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = call i32 @memset(%struct.hostif_msg* %6, i32 0, i32 8)
  %14 = load i32, i32* @HOSTIF_GET_HID_DESCRIPTOR, align 4
  %15 = getelementptr inbounds %struct.hostif_msg, %struct.hostif_msg* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %18 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.hostif_msg, %struct.hostif_msg* %6, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %28 = bitcast %struct.hostif_msg* %6 to i8*
  %29 = call i32 @ishtp_cl_send(%struct.ishtp_cl* %27, i8* %28, i32 8)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %2
  %35 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %36 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %34
  %40 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %41 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %44 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 3, %46
  %48 = call i32 @wait_event_interruptible_timeout(i32 %42, i32 %45, i32 %47)
  %49 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %50 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %39
  %54 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %55 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %54)
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %39
  %60 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %61 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %59
  %69 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %70 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %69)
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %34
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %68, %53, %32
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local i32 @memset(%struct.hostif_msg*, i32, i32) #1

declare dso_local i32 @ishtp_cl_send(%struct.ishtp_cl*, i8*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
