; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_del_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_del_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i64, i32, i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.hns_roce_dev*, i64, i32, i32*, %struct.ib_gid_attr*)* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@zgid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_attr*, i8**)* @hns_roce_del_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_del_gid(%struct.ib_gid_attr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.ib_gid_attr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hns_roce_dev* @to_hr_dev(i32 %12)
  store %struct.hns_roce_dev* %13, %struct.hns_roce_dev** %6, align 8
  %14 = bitcast %struct.ib_gid_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hns_roce_dev*, i64, i32, i32*, %struct.ib_gid_attr*)*, i32 (%struct.hns_roce_dev*, i64, i32, i32*, %struct.ib_gid_attr*)** %32, align 8
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %37 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %33(%struct.hns_roce_dev* %34, i64 %35, i32 %38, i32* @zgid, %struct.ib_gid_attr* %7)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
