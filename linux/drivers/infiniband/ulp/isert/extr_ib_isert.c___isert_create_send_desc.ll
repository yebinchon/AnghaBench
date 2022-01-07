; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c___isert_create_send_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c___isert_create_send_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iser_tx_desc = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@ISCSI_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tx_desc %p lkey mismatch, fixing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_device*, %struct.iser_tx_desc*)* @__isert_create_send_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__isert_create_send_desc(%struct.isert_device* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.isert_device*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  store %struct.isert_device* %0, %struct.isert_device** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %5 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %6 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %5, i32 0, i32 2
  %7 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 4)
  %8 = load i32, i32* @ISCSI_CTRL, align 4
  %9 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %10 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %13 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %15 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %21 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %28 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %33 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 %31, i64* %36, align 8
  %37 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %38 = call i32 @isert_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.iser_tx_desc* %37)
  br label %39

39:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @isert_dbg(i8*, %struct.iser_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
