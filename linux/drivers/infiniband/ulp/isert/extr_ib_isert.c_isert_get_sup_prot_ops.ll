; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_get_sup_prot_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_get_sup_prot_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, %struct.isert_conn* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.isert_conn = type { i32, %struct.isert_device* }
%struct.isert_device = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"conn %p PI offload enabled\0A\00", align 1
@TARGET_PROT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"conn %p PI offload disabled\0A\00", align 1
@TARGET_PROT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @isert_get_sup_prot_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_get_sup_prot_ops(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.isert_device*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %6, i32 0, i32 1
  %8 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  store %struct.isert_conn* %8, %struct.isert_conn** %4, align 8
  %9 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 1
  %11 = load %struct.isert_device*, %struct.isert_device** %10, align 8
  store %struct.isert_device* %11, %struct.isert_device** %5, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.isert_device*, %struct.isert_device** %5, align 8
  %21 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %26 = call i32 @isert_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %25)
  %27 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %28 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @TARGET_PROT_ALL, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %33 = call i32 @isert_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.isert_conn* %32)
  %34 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %35 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @TARGET_PROT_NORMAL, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @isert_info(i8*, %struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
