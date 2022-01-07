; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_set_rq_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_set_rq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ib_qp_cap = type { i32, i32 }
%struct.hns_roce_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, i8* }

@.str = private unnamed_addr constant [51 x i8] c"RQ WR or sge error!max_recv_wr=%d max_recv_sge=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"user space no need config max_recv_wr max_recv_sge\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"while setting rq size, rq.wqe_cnt too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.ib_qp_cap*, i32, i32, %struct.hns_roce_qp*)* @hns_roce_set_rq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_set_rq_size(%struct.hns_roce_dev* %0, %struct.ib_qp_cap* %1, i32 %2, i32 %3, %struct.hns_roce_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.ib_qp_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hns_roce_qp*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.hns_roce_qp* %4, %struct.hns_roce_qp** %11, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %12, align 8
  %17 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %18 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ugt i32 %19, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %5
  %26 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %27 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %25, %5
  %35 = load %struct.device*, %struct.device** %12, align 8
  %36 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %37 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %40 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %176

45:                                               ; preds = %25
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %50 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %53 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %56 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %58 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %159

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %64 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %69 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.device*, %struct.device** %12, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %176

77:                                               ; preds = %67, %59
  %78 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %79 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %85 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %88 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @max(i32 %86, i32 %90)
  store i64 %91, i64* %13, align 8
  br label %97

92:                                               ; preds = %77
  %93 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %94 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %92, %83
  %98 = load i64, i64* %13, align 8
  %99 = call i8* @roundup_pow_of_two(i64 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %102 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %105 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %109 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = zext i32 %111 to i64
  %113 = icmp sgt i64 %107, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %97
  %115 = load %struct.device*, %struct.device** %12, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %176

119:                                              ; preds = %97
  %120 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %121 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @max(i32 1, i32 %122)
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = call i8* @roundup_pow_of_two(i64 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %128 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %131 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sle i32 %133, 2
  br i1 %134, label %135, label %144

135:                                              ; preds = %119
  %136 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %137 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @ilog2(i32 %139)
  %141 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %142 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  store i8* %140, i8** %143, align 8
  br label %158

144:                                              ; preds = %119
  %145 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %146 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %150 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %148, %152
  %154 = call i8* @ilog2(i32 %153)
  %155 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %156 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  store i8* %154, i8** %157, align 8
  br label %158

158:                                              ; preds = %144, %135
  br label %159

159:                                              ; preds = %158, %48
  %160 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %161 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %165 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i64 %163, i64* %166, align 8
  %167 = trunc i64 %163 to i32
  %168 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %169 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %171 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %175 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %159, %114, %72, %34
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i8* @roundup_pow_of_two(i64) #1

declare dso_local i8* @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
