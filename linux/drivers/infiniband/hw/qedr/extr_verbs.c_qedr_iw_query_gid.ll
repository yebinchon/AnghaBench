; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_iw_query_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_iw_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qedr_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"QUERY sgid[%d]=%llx:%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_iw_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %struct.qedr_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.ib_gid* %3, %union.ib_gid** %8, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = call %struct.qedr_dev* @get_qedr_dev(%struct.ib_device* %10)
  store %struct.qedr_dev* %11, %struct.qedr_dev** %9, align 8
  %12 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %13 = bitcast %union.ib_gid* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %17 = bitcast %union.ib_gid* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %20 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ether_addr_copy(i32 %18, i32 %23)
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %26 = load i32, i32* @QEDR_MSG_INIT, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %29 = bitcast %union.ib_gid* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %33 = bitcast %union.ib_gid* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DP_DEBUG(%struct.qedr_dev* %25, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i32 %35)
  ret i32 0
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(%struct.ib_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
