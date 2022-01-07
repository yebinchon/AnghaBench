; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cm.c_set_remote_comm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cm.c_set_remote_comm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cm_sidr_generic_msg = type { i8* }
%struct.cm_generic_msg = type { i8* }

@CM_SIDR_REP_ATTR_ID = common dso_local global i64 0, align 8
@CM_SIDR_REQ_ATTR_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"trying to set remote_comm_id in SIDR_REQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad*, i32)* @set_remote_comm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_remote_comm_id(%struct.ib_mad* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_sidr_generic_msg*, align 8
  %6 = alloca %struct.cm_generic_msg*, align 8
  store %struct.ib_mad* %0, %struct.ib_mad** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %8 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CM_SIDR_REP_ATTR_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %15 = bitcast %struct.ib_mad* %14 to %struct.cm_sidr_generic_msg*
  store %struct.cm_sidr_generic_msg* %15, %struct.cm_sidr_generic_msg** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.cm_sidr_generic_msg*, %struct.cm_sidr_generic_msg** %5, align 8
  %19 = getelementptr inbounds %struct.cm_sidr_generic_msg, %struct.cm_sidr_generic_msg* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CM_SIDR_REQ_ATTR_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %31 = bitcast %struct.ib_mad* %30 to %struct.cm_generic_msg*
  store %struct.cm_generic_msg* %31, %struct.cm_generic_msg** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.cm_generic_msg*, %struct.cm_generic_msg** %6, align 8
  %35 = getelementptr inbounds %struct.cm_generic_msg, %struct.cm_generic_msg* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %27, %36, %13
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
