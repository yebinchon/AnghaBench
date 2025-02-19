; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_wait4logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_wait4logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i64, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"conn %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"conn %p wait for conn_logout_comp\0A\00", align 1
@SECONDS_FOR_LOGOUT_COMP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*)* @isert_wait4logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_wait4logout(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %4 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %5 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %4, i32 0, i32 1
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_conn* %6, %struct.iscsi_conn** %3, align 8
  %7 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %8 = call i32 @isert_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %7)
  %9 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %15 = call i32 @isert_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.isert_conn* %14)
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i32, i32* @SECONDS_FOR_LOGOUT_COMP, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @wait_for_completion_timeout(i32* %17, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @isert_info(i8*, %struct.isert_conn*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
