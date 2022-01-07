; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_immediate_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_immediate_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i32 }
%struct.isert_cmd = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unknown immediate state: 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)* @isert_immediate_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_immediate_queue(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %10 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %9)
  store %struct.isert_cmd* %10, %struct.isert_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %28 [
    i32 129, label %12
    i32 128, label %24
  ]

12:                                               ; preds = %3
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 0
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_bh(i32* %20)
  %22 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %23 = call i32 @isert_put_cmd(%struct.isert_cmd* %22, i32 1)
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %27 = call i32 @isert_put_nopin(%struct.iscsi_cmd* %25, %struct.iscsi_conn* %26, i32 0)
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @isert_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %24, %12
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @isert_put_cmd(%struct.isert_cmd*, i32) #1

declare dso_local i32 @isert_put_nopin(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
