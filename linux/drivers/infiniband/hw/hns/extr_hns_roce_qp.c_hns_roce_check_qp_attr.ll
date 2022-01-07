; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_check_qp_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_check_qp_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, i64, i64, i64 }
%struct.hns_roce_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64*, i64, i64 }
%struct.hns_roce_qp = type { i32 }

@IB_QP_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"attr port_num invalid.attr->port_num=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"attr pkey_index invalid.attr->pkey_index=%d\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"attr max_rd_atomic invalid.attr->max_rd_atomic=%d\0A\00", align 1
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"attr max_dest_rd_atomic invalid.attr->max_dest_rd_atomic=%d\0A\00", align 1
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32)* @hns_roce_check_qp_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_check_qp_attr(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hns_roce_dev* @to_hr_dev(i32 %13)
  store %struct.hns_roce_dev* %14, %struct.hns_roce_dev** %8, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %15)
  store %struct.hns_roce_qp* %16, %struct.hns_roce_qp** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IB_QP_PORT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %31 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %26, %21
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 0
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ibdev_err(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %147

44:                                               ; preds = %26, %3
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IB_QP_PORT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 1
  br label %64

59:                                               ; preds = %49
  %60 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %61 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i64 [ %58, %54 ], [ %63, %59 ]
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %71 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %69, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %64
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %81 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %80, i32 0, i32 0
  %82 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ibdev_err(i32* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %147

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88, %44
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %96 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %99 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %97, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %105 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %104, i32 0, i32 0
  %106 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @ibdev_err(i32* %105, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %147

112:                                              ; preds = %94, %89
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %122 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %120, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %117
  %127 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %128 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %127, i32 0, i32 0
  %129 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ibdev_err(i32* %128, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %147

135:                                              ; preds = %117, %112
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %142 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %143 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @check_mtu_validate(%struct.hns_roce_dev* %141, %struct.hns_roce_qp* %142, %struct.ib_qp_attr* %143, i32 %144)
  store i32 %145, i32* %4, align 4
  br label %147

146:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %140, %126, %103, %79, %35
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @ibdev_err(i32*, i8*, i64) #1

declare dso_local i32 @check_mtu_validate(%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
