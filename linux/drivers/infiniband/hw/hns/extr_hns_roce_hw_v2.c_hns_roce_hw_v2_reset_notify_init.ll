; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_reset_notify_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_reset_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@HNS_ROCE_RST_DIRECT_RETURN = common dso_local global i32 0, align 4
@HNS_ROCE_STATE_RST_INITED = common dso_local global i8* null, align 8
@HNS_ROCE_STATE_RST_INIT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"In reset process RoCE client reinit.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"In reset process RoCE reinit failed %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Reset done, RoCE client reinit finished.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns_roce_hw_v2_reset_notify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_hw_v2_reset_notify_init(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @HNS_ROCE_RST_DIRECT_RETURN, align 4
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %12 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i64 @test_and_clear_bit(i32 %10, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** @HNS_ROCE_STATE_RST_INITED, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  store i32 0, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load i8*, i8** @HNS_ROCE_STATE_RST_INIT, align 8
  %23 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %24 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %27 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_info(%struct.device* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %32 = call i32 @__hns_roce_hw_v2_init_instance(%struct.hnae3_handle* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %48

41:                                               ; preds = %21
  %42 = load i8*, i8** @HNS_ROCE_STATE_RST_INITED, align 8
  %43 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %44 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_info(%struct.device* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @__hns_roce_hw_v2_init_instance(%struct.hnae3_handle*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
