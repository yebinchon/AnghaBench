; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_add_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_add_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i64, i32, i32, i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.hns_roce_dev*, i64, i32, i32*, %struct.ib_gid_attr*)* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_attr*, i8**)* @hns_roce_add_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_add_gid(%struct.ib_gid_attr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %10 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.hns_roce_dev* @to_hr_dev(i32 %11)
  store %struct.hns_roce_dev* %12, %struct.hns_roce_dev** %6, align 8
  %13 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %14 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.hns_roce_dev*, i64, i32, i32*, %struct.ib_gid_attr*)*, i32 (%struct.hns_roce_dev*, i64, i32, i32*, %struct.ib_gid_attr*)** %30, align 8
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %35 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %38 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %37, i32 0, i32 1
  %39 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %40 = call i32 %31(%struct.hns_roce_dev* %32, i64 %33, i32 %36, i32* %38, %struct.ib_gid_attr* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
