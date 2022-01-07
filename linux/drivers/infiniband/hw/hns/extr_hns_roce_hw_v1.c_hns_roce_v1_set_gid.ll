; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_set_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_set_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%union.ib_gid = type { i32* }
%struct.ib_gid_attr = type { i32 }

@ROCEE_PORT_GID_L_0_REG = common dso_local global i64 0, align 8
@HNS_ROCE_V1_GID_NUM = common dso_local global i32 0, align 4
@ROCEE_PORT_GID_ML_0_REG = common dso_local global i64 0, align 8
@ROCEE_PORT_GID_MH_0_REG = common dso_local global i64 0, align 8
@ROCEE_PORT_GID_H_0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*)* @hns_roce_v1_set_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_set_gid(%struct.hns_roce_dev* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.ib_gid_attr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %10, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @hns_get_gid_index(%struct.hns_roce_dev* %14, i32 %15, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %24 = bitcast %union.ib_gid* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ROCEE_PORT_GID_L_0_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = call i32 @roce_raw_write(i32 %28, i64 %38)
  %40 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %41 = bitcast %union.ib_gid* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ROCEE_PORT_GID_ML_0_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = call i32 @roce_raw_write(i32 %45, i64 %55)
  %57 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %58 = bitcast %union.ib_gid* %57 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %64 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ROCEE_PORT_GID_MH_0_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = call i32 @roce_raw_write(i32 %62, i64 %72)
  %74 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %75 = bitcast %union.ib_gid* %74 to i32**
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %81 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ROCEE_PORT_GID_H_0_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %84, %88
  %90 = call i32 @roce_raw_write(i32 %79, i64 %89)
  %91 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %92 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  ret i32 0
}

declare dso_local i32 @hns_get_gid_index(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @roce_raw_write(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
