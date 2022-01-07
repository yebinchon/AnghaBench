; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_hw_v2_init_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_hw_v2_init_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.hns_roce_dev*, %struct.TYPE_2__* }
%struct.hns_roce_dev = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@hns_roce_dev = common dso_local global i32 0, align 4
@ib_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Get Configuration failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"RoCE Engine init failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @__hns_roce_hw_v2_init_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hns_roce_hw_v2_init_instance(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %6 = load i32, i32* @hns_roce_dev, align 4
  %7 = load i32, i32* @ib_dev, align 4
  %8 = call %struct.hns_roce_dev* @ib_alloc_device(i32 %6, i32 %7)
  store %struct.hns_roce_dev* %8, %struct.hns_roce_dev** %4, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = icmp ne %struct.hns_roce_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kzalloc(i32 4, i32 %15)
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %67

26:                                               ; preds = %14
  %27 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %28 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %31 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %30, i32 0, i32 3
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %33 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %40 = call i32 @hns_roce_hw_v2_get_cfg(%struct.hns_roce_dev* %38, %struct.hnae3_handle* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %62

48:                                               ; preds = %26
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %50 = call i32 @hns_roce_init(%struct.hns_roce_dev* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %60 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %61 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %60, i32 0, i32 0
  store %struct.hns_roce_dev* %59, %struct.hns_roce_dev** %61, align 8
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %53, %43
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %64 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kfree(i32 %65)
  br label %67

67:                                               ; preds = %62, %23
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %69 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %68, i32 0, i32 0
  %70 = call i32 @ib_dealloc_device(i32* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %58, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.hns_roce_dev* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @hns_roce_hw_v2_get_cfg(%struct.hns_roce_dev*, %struct.hnae3_handle*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hns_roce_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
