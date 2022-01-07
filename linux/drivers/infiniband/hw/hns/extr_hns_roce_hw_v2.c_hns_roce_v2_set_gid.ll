; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i64 }

@GID_TYPE_FLAG_ROCE_V1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_GID_TYPE_ROCE = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i64 0, align 8
@GID_TYPE_FLAG_ROCE_V2_IPV4 = common dso_local global i32 0, align 4
@GID_TYPE_FLAG_ROCE_V2_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Configure sgid table failed(%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*)* @hns_roce_v2_set_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_set_gid(%struct.hns_roce_dev* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %struct.ib_gid_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %11, align 8
  %14 = load i32, i32* @GID_TYPE_FLAG_ROCE_V1, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %16 = icmp ne %union.ib_gid* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %19 = icmp ne %struct.ib_gid_attr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %63

23:                                               ; preds = %17
  %24 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %25 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IB_GID_TYPE_ROCE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @GID_TYPE_FLAG_ROCE_V1, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %33 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %39 = bitcast %union.ib_gid* %38 to i8*
  %40 = call i64 @ipv6_addr_v4mapped(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @GID_TYPE_FLAG_ROCE_V2_IPV4, align 4
  store i32 %43, i32* %12, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @GID_TYPE_FLAG_ROCE_V2_IPV6, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @hns_roce_config_sgid_table(%struct.hns_roce_dev* %48, i32 %49, %union.ib_gid* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %20
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @ipv6_addr_v4mapped(i8*) #1

declare dso_local i32 @hns_roce_config_sgid_table(%struct.hns_roce_dev*, i32, %union.ib_gid*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
