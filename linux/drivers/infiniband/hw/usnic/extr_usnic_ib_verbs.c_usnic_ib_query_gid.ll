; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32* }
%struct.usnic_ib_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %12 = call %struct.usnic_ib_dev* @to_usdev(%struct.ib_device* %11)
  store %struct.usnic_ib_dev* %12, %struct.usnic_ib_dev** %10, align 8
  %13 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %10, align 8
  %21 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %24 = bitcast %union.ib_gid* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 8)
  %28 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %10, align 8
  %29 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %10, align 8
  %34 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %39 = bitcast %union.ib_gid* %38 to i32**
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @usnic_mac_ip_to_gid(i32 %32, i32 %37, i32* %41)
  %43 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %10, align 8
  %44 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %19, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.usnic_ib_dev* @to_usdev(%struct.ib_device*) #1

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usnic_mac_ip_to_gid(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
