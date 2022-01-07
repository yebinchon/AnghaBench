; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_get_port_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_get_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.rvt_dev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_port_attr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_immutable*)* @rvt_get_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_get_port_immutable(%struct.ib_device* %0, i32 %1, %struct.ib_port_immutable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_immutable*, align 8
  %8 = alloca %struct.rvt_dev_info*, align 8
  %9 = alloca %struct.ib_port_attr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_immutable* %2, %struct.ib_port_immutable** %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %8, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ibport_num_to_idx(%struct.ib_device* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %28 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ib_query_port(%struct.ib_device* %29, i32 %30, %struct.ib_port_attr* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %40 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %44 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %46 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %50 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %36, %34, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local i32 @ibport_num_to_idx(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
