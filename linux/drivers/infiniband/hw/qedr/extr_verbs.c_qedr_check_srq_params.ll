; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_check_srq_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_check_srq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { %struct.qedr_device_attr }
%struct.qedr_device_attr = type { i64, i64 }
%struct.ib_srq_init_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ib_udata = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"create srq: unsupported srq_wr=0x%x requested (max_srq_wr=0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"create srq: unsupported sge=0x%x requested (max_srq_sge=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.ib_srq_init_attr*, %struct.ib_udata*)* @qedr_check_srq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_check_srq_params(%struct.qedr_dev* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qedr_device_attr*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %10 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %9, i32 0, i32 0
  store %struct.qedr_device_attr* %10, %struct.qedr_device_attr** %8, align 8
  %11 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %12 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %8, align 8
  %16 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %21 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %8, align 8
  %26 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @DP_ERR(%struct.qedr_dev* %20, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %3
  %32 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %8, align 8
  %37 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %42 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %8, align 8
  %47 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @DP_ERR(%struct.qedr_dev* %41, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %40, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
