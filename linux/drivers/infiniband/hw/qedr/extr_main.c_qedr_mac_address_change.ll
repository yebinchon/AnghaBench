; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_mac_address_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_mac_address_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32*, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %union.ib_gid* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*, i32)* }
%union.ib_gid = type { i32* }
%struct.TYPE_4__ = type { i32 }

@QEDR_PORT = common dso_local global i32 0, align 4
@IB_EVENT_GID_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error updating mac filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*)* @qedr_mac_address_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_mac_address_change(%struct.qedr_dev* %0) #0 {
  %2 = alloca %struct.qedr_dev*, align 8
  %3 = alloca %union.ib_gid*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %2, align 8
  %7 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %7, i32 0, i32 4
  %9 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %10 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %9, i64 0
  store %union.ib_gid* %10, %union.ib_gid** %3, align 8
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %13 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ether_addr_copy(i32* %11, i32 %16)
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = xor i32 %19, 2
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 255, i32* %28, align 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 254, i32* %29, align 16
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %34 = load i32, i32* %33, align 16
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %37, i32* %38, align 4
  %39 = call i32 @cpu_to_be64(i32 0)
  %40 = load %union.ib_gid*, %union.ib_gid** %3, align 8
  %41 = bitcast %union.ib_gid* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %union.ib_gid*, %union.ib_gid** %3, align 8
  %44 = bitcast %union.ib_gid* %43 to i32**
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %48 = call i32 @memcpy(i32* %46, i32* %47, i32 32)
  %49 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %50 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %52, align 8
  %54 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %55 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %58 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %61 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %53(i32 %56, i32* %59, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %67 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %70 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ether_addr_copy(i32* %68, i32 %73)
  %75 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %76 = load i32, i32* @QEDR_PORT, align 4
  %77 = load i32, i32* @IB_EVENT_GID_CHANGE, align 4
  %78 = call i32 @qedr_ib_dispatch_event(%struct.qedr_dev* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %1
  %82 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %83 = call i32 @DP_ERR(%struct.qedr_dev* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %1
  ret void
}

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qedr_ib_dispatch_event(%struct.qedr_dev*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
