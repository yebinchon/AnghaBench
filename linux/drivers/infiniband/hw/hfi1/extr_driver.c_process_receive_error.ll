; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_receive_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_receive_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RHF_RCV_TYPE_ERROR = common dso_local global i64 0, align 8
@RHF_DC_ERR = common dso_local global i32 0, align 4
@RHF_RCV_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unhandled error packet received. Dropping.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @process_receive_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_receive_error(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %4 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %5 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i64 @hfi1_dbg_fault_suppress_err(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %14 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @rhf_rcv_type_err(i32 %15)
  %17 = load i64, i64* @RHF_RCV_TYPE_ERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %21 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RHF_DC_ERR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %12
  %27 = phi i1 [ true, %12 ], [ %25, %19 ]
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi i1 [ false, %1 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %28
  %36 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %37 = call i32 @hfi1_setup_ib_header(%struct.hfi1_packet* %36)
  %38 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %39 = call i32 @handle_eflags(%struct.hfi1_packet* %38)
  %40 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %41 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @rhf_err_flags(i32 %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @dd_dev_err(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %46, %35
  %54 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %33
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hfi1_dbg_fault_suppress_err(i32*) #1

declare dso_local i64 @rhf_rcv_type_err(i32) #1

declare dso_local i32 @hfi1_setup_ib_header(%struct.hfi1_packet*) #1

declare dso_local i32 @handle_eflags(%struct.hfi1_packet*) #1

declare dso_local i32 @rhf_err_flags(i32) #1

declare dso_local i32 @dd_dev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
