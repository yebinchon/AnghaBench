; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_get_login_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_get_login_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, %struct.iscsi_conn* }
%struct.iscsi_login = type { %struct.isert_conn*, i32 }
%struct.isert_conn = type { i32, i32, %struct.isert_conn* }

@.str = private unnamed_addr constant [32 x i8] c"before login_req comp conn: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"isert_conn %p interrupted before got login req\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"before login_comp conn: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"processing login->req: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_login*)* @isert_get_login_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_get_login_rx(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_login*, align 8
  %6 = alloca %struct.isert_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %5, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 2
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %11 = bitcast %struct.iscsi_conn* %10 to %struct.isert_conn*
  store %struct.isert_conn* %11, %struct.isert_conn** %6, align 8
  %12 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %13 = call i32 @isert_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %12)
  %14 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %15 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %14, i32 0, i32 1
  %16 = call i32 @wait_for_completion_interruptible(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %21 = call i32 @isert_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.isert_conn* %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %25 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %24, i32 0, i32 1
  %26 = call i32 @reinit_completion(i32* %25)
  %27 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %34 = call i32 @isert_rx_login_req(%struct.isert_conn* %33)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %36 = bitcast %struct.iscsi_conn* %35 to %struct.isert_conn*
  %37 = call i32 @isert_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.isert_conn* %36)
  %38 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %39 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %38, i32 0, i32 0
  %40 = call i32 @wait_for_completion_interruptible(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %46, i32 0, i32 0
  %48 = load %struct.isert_conn*, %struct.isert_conn** %47, align 8
  %49 = call i32 @isert_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.isert_conn* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %43, %31, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @isert_info(i8*, %struct.isert_conn*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @isert_err(i8*, %struct.isert_conn*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @isert_rx_login_req(%struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
