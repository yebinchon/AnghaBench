; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ishtp_hid_link_ready_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ishtp_hid_link_ready_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"wait for link ready\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"link not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"link ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_hid_link_ready_wait(%struct.ishtp_cl_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %3, align 8
  %5 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %6 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %11 = call i32 @hid_ishtp_trace(%struct.ishtp_cl_data* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %13 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %16 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 5, %21
  %23 = call i32 @wait_event_interruptible_timeout(i32 %14, i32 %20, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %9
  %27 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %28 = call i32 @hid_ishtp_trace(%struct.ishtp_cl_data* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %9
  %32 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %33 = call i32 @hid_ishtp_trace(%struct.ishtp_cl_data* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @hid_ishtp_trace(%struct.ishtp_cl_data*, i8*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
