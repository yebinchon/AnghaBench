; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_create_device_ib_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_create_device_ib_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_device = type { i32, i32, %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"devattr->max_send_sge: %d devattr->max_recv_sge %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"devattr->max_sge_rd: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to allocate pd, device %p, ret=%d\0A\00", align 1
@IB_DEVICE_INTEGRITY_HANDOVER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_device*)* @isert_create_device_ib_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_create_device_ib_res(%struct.isert_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isert_device*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  store %struct.isert_device* %0, %struct.isert_device** %3, align 8
  %6 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %7 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %6, i32 0, i32 2
  %8 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  store %struct.ib_device* %8, %struct.ib_device** %4, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @isert_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @isert_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %24 = call i32 @isert_alloc_comps(%struct.isert_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %30 = call i32 @ib_alloc_pd(%struct.ib_device* %29, i32 0)
  %31 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %32 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %34 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %40 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @isert_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.isert_device* %43, i32 %44)
  br label %58

46:                                               ; preds = %28
  %47 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %48 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IB_DEVICE_INTEGRITY_HANDOVER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %57 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %69

58:                                               ; preds = %38
  %59 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %60 = call i32 @isert_free_comps(%struct.isert_device* %59)
  br label %61

61:                                               ; preds = %58, %27
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %46
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @isert_dbg(i8*, i32, ...) #1

declare dso_local i32 @isert_alloc_comps(%struct.isert_device*) #1

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @isert_err(i8*, %struct.isert_device*, i32) #1

declare dso_local i32 @isert_free_comps(%struct.isert_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
