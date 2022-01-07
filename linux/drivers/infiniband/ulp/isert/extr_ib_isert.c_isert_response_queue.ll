; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_response_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { i32 }
%struct.iscsi_cmd = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unknown response state: 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)* @isert_response_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_response_queue(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 0
  %11 = load %struct.isert_conn*, %struct.isert_conn** %10, align 8
  store %struct.isert_conn* %11, %struct.isert_conn** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %43 [
    i32 133, label %13
    i32 132, label %23
    i32 129, label %27
    i32 131, label %31
    i32 128, label %35
    i32 130, label %39
  ]

13:                                               ; preds = %3
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = call i32 @isert_put_logout_rsp(%struct.iscsi_cmd* %14, %struct.iscsi_conn* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %21 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %13
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %26 = call i32 @isert_put_nopin(%struct.iscsi_cmd* %24, %struct.iscsi_conn* %25, i32 1)
  store i32 %26, i32* %8, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %30 = call i32 @isert_put_tm_rsp(%struct.iscsi_cmd* %28, %struct.iscsi_conn* %29)
  store i32 %30, i32* %8, align 4
  br label %48

31:                                               ; preds = %3
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %34 = call i32 @isert_put_reject(%struct.iscsi_cmd* %32, %struct.iscsi_conn* %33)
  store i32 %34, i32* %8, align 4
  br label %48

35:                                               ; preds = %3
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %38 = call i32 @isert_put_text_rsp(%struct.iscsi_cmd* %36, %struct.iscsi_conn* %37)
  store i32 %38, i32* %8, align 4
  br label %48

39:                                               ; preds = %3
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %42 = call i32 @isert_put_response(%struct.iscsi_conn* %40, %struct.iscsi_cmd* %41)
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @isert_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %39, %35, %31, %27, %23, %22
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @isert_put_logout_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @isert_put_nopin(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @isert_put_tm_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @isert_put_reject(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @isert_put_text_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @isert_put_response(%struct.iscsi_conn*, %struct.iscsi_cmd*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
