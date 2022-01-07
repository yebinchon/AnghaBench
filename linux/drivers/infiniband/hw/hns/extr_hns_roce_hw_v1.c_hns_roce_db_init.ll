; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_db_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_db_table }
%struct.hns_roce_db_table = type { i8*, i8* }

@HNS_ROCE_SDB_EXTEND_MODE = common dso_local global i8* null, align 8
@HNS_ROCE_ODB_EXTEND_MODE = common dso_local global i8* null, align 8
@HNS_ROCE_SDB_NORMAL_MODE = common dso_local global i8* null, align 8
@HNS_ROCE_ODB_POLL_MODE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed in extend DB configuration.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_db_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_db_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hns_roce_v1_priv*, align 8
  %6 = alloca %struct.hns_roce_db_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %19, %struct.hns_roce_v1_priv** %5, align 8
  %20 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %21 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %20, i32 0, i32 0
  store %struct.hns_roce_db_table* %21, %struct.hns_roce_db_table** %6, align 8
  %22 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %6, align 8
  %23 = call i32 @memset(%struct.hns_roce_db_table* %22, i32 0, i32 16)
  %24 = load i8*, i8** @HNS_ROCE_SDB_EXTEND_MODE, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** @HNS_ROCE_ODB_EXTEND_MODE, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** @HNS_ROCE_SDB_NORMAL_MODE, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** @HNS_ROCE_ODB_POLL_MODE, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %6, align 8
  %33 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @hns_roce_db_ext_init(%struct.hns_roce_dev* %34, i8* %35, i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @hns_roce_set_db_event_mode(%struct.hns_roce_dev* %45, i8* %46, i8* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.hns_roce_db_table*, i32, i32) #1

declare dso_local i32 @hns_roce_db_ext_init(%struct.hns_roce_dev*, i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_set_db_event_mode(%struct.hns_roce_dev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
