; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_pd.c_hns_roce_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_pd.c_hns_roce_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_pd = type { i32 }
%struct.hns_roce_ib_alloc_pd_resp = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"[alloc_pd]hns_roce_pd_alloc failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[alloc_pd]ib_copy_to_udata failed!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_alloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_pd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hns_roce_ib_alloc_pd_resp, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %13 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %12, i32 0, i32 0
  %14 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  store %struct.ib_device* %14, %struct.ib_device** %6, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device* %15)
  store %struct.hns_roce_dev* %16, %struct.hns_roce_dev** %7, align 8
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %21 = call %struct.hns_roce_pd* @to_hr_pd(%struct.ib_pd* %20)
  store %struct.hns_roce_pd* %21, %struct.hns_roce_pd** %9, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = call %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device* %22)
  %24 = load %struct.hns_roce_pd*, %struct.hns_roce_pd** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_pd, %struct.hns_roce_pd* %24, i32 0, i32 0
  %26 = call i32 @hns_roce_pd_alloc(%struct.hns_roce_dev* %23, i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %2
  %34 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %35 = icmp ne %struct.ib_udata* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hns_roce_ib_alloc_pd_resp, %struct.hns_roce_ib_alloc_pd_resp* %11, i32 0, i32 0
  %38 = load %struct.hns_roce_pd*, %struct.hns_roce_pd** %9, align 8
  %39 = getelementptr inbounds %struct.hns_roce_pd, %struct.hns_roce_pd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %42 = call i64 @ib_copy_to_udata(%struct.ib_udata* %41, %struct.hns_roce_ib_alloc_pd_resp* %11, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %46 = call %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device* %45)
  %47 = load %struct.hns_roce_pd*, %struct.hns_roce_pd** %9, align 8
  %48 = getelementptr inbounds %struct.hns_roce_pd, %struct.hns_roce_pd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hns_roce_pd_free(%struct.hns_roce_dev* %46, i32 %49)
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55, %33
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %44, %29
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device*) #1

declare dso_local %struct.hns_roce_pd* @to_hr_pd(%struct.ib_pd*) #1

declare dso_local i32 @hns_roce_pd_alloc(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.hns_roce_ib_alloc_pd_resp*, i32) #1

declare dso_local i32 @hns_roce_pd_free(%struct.hns_roce_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
