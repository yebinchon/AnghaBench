; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ccp_op = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_data*, %struct.ccp_data*, %struct.ccp_op*)* @ccp_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_process_data(%struct.ccp_data* %0, %struct.ccp_data* %1, %struct.ccp_op* %2) #0 {
  %4 = alloca %struct.ccp_data*, align 8
  %5 = alloca %struct.ccp_data*, align 8
  %6 = alloca %struct.ccp_op*, align 8
  store %struct.ccp_data* %0, %struct.ccp_data** %4, align 8
  store %struct.ccp_data* %1, %struct.ccp_data** %5, align 8
  store %struct.ccp_op* %2, %struct.ccp_op** %6, align 8
  %7 = load %struct.ccp_op*, %struct.ccp_op** %6, align 8
  %8 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.ccp_data*, %struct.ccp_data** %5, align 8
  %10 = icmp ne %struct.ccp_data* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load %struct.ccp_op*, %struct.ccp_op** %6, align 8
  %13 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ccp_data*, %struct.ccp_data** %5, align 8
  %19 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.ccp_data*, %struct.ccp_data** %5, align 8
  %26 = call i32 @ccp_empty_queue_buf(%struct.ccp_data* %25)
  br label %37

27:                                               ; preds = %11
  %28 = load %struct.ccp_data*, %struct.ccp_data** %5, align 8
  %29 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %28, i32 0, i32 0
  %30 = load %struct.ccp_op*, %struct.ccp_op** %6, align 8
  %31 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ccp_update_sg_workarea(i32* %29, i32 %35)
  br label %37

37:                                               ; preds = %27, %24
  br label %38

38:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @ccp_empty_queue_buf(%struct.ccp_data*) #1

declare dso_local i32 @ccp_update_sg_workarea(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
