; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_nopin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_nopin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32 }
%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ib_send_wr }
%struct.ib_send_wr = type { i32 }
%struct.iscsi_nopin = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"conn %p Posting NOPIN Response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*, i32)* @isert_put_nopin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_nopin(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_cmd*, align 8
  %8 = alloca %struct.isert_conn*, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %10)
  store %struct.isert_cmd* %11, %struct.isert_cmd** %7, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 0
  %14 = load %struct.isert_conn*, %struct.isert_conn** %13, align 8
  store %struct.isert_conn* %14, %struct.isert_conn** %8, align 8
  %15 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.ib_send_wr* %17, %struct.ib_send_wr** %9, align 8
  %18 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %19 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %20 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %20, i32 0, i32 0
  %22 = call i32 @isert_create_send_desc(%struct.isert_conn* %18, %struct.isert_cmd* %19, %struct.TYPE_3__* %21)
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %25 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.iscsi_nopin*
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @iscsit_build_nopin_rsp(%struct.iscsi_cmd* %23, %struct.iscsi_conn* %24, %struct.iscsi_nopin* %28, i32 %29)
  %31 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %32 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %32, i32 0, i32 0
  %34 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %31, %struct.TYPE_3__* %33)
  %35 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %36 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %38 = call i32 @isert_init_send_wr(%struct.isert_conn* %35, %struct.isert_cmd* %36, %struct.ib_send_wr* %37)
  %39 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %40 = call i32 @isert_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %39)
  %41 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %42 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %43 = call i32 @isert_post_response(%struct.isert_conn* %41, %struct.isert_cmd* %42)
  ret i32 %43
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_create_send_desc(%struct.isert_conn*, %struct.isert_cmd*, %struct.TYPE_3__*) #1

declare dso_local i32 @iscsit_build_nopin_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*, %struct.iscsi_nopin*, i32) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.TYPE_3__*) #1

declare dso_local i32 @isert_init_send_wr(%struct.isert_conn*, %struct.isert_cmd*, %struct.ib_send_wr*) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_conn*) #1

declare dso_local i32 @isert_post_response(%struct.isert_conn*, %struct.isert_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
