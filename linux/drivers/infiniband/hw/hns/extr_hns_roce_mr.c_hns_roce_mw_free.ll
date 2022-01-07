; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mw_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_mw = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"MW HW2SW_MPT failed (%d)\0A\00", align 1
@BITMAP_NO_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_mw*)* @hns_roce_mw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_mw_free(%struct.hns_roce_dev* %0, %struct.hns_roce_mw* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_mw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_mw* %1, %struct.hns_roce_mw** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @key_to_hw_index(i32 %18)
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %19, %24
  %26 = call i32 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev* %15, i32* null, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %14
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @key_to_hw_index(i32 %40)
  %42 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %34, i32* %37, i32 %41)
  br label %43

43:                                               ; preds = %33, %2
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @key_to_hw_index(i32 %49)
  %51 = load i32, i32* @BITMAP_NO_RR, align 4
  %52 = call i32 @hns_roce_bitmap_free(i32* %46, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_bitmap_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
