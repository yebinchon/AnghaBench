; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i64, i32 }
%struct.ib_qp_attr = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_12__*, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32)* }
%struct.TYPE_11__ = type { i64 }
%struct.hns_roce_qp = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"flush cqe is not supported in userspace!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ib_modify_qp_is_ok failed\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cur_state=%d new_state=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca %struct.hns_roce_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.hns_roce_dev* @to_hr_dev(i32 %16)
  store %struct.hns_roce_dev* %17, %struct.hns_roce_dev** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %18)
  store %struct.hns_roce_qp* %19, %struct.hns_roce_qp** %10, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %23 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %35 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %32, %29 ], [ %37, %33 ]
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IB_QP_STATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  store i32 %51, i32* %12, align 4
  %52 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @IB_QP_STATE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @IB_QPS_ERR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %67 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %72 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %78 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %81 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %70
  %85 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %86 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %92 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %94

94:                                               ; preds = %84, %70
  br label %99

95:                                               ; preds = %65
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %97 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %96, i32 0, i32 1
  %98 = call i32 @ibdev_warn(i32* %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %157

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %61, %56, %50
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %104 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @ib_modify_qp_is_ok(i32 %101, i32 %102, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %100
  %110 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %111 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %110, i32 0, i32 1
  %112 = call i32 (i32*, i8*, ...) @ibdev_err(i32* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %157

113:                                              ; preds = %100
  %114 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @hns_roce_check_qp_attr(%struct.ib_qp* %114, %struct.ib_qp_attr* %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %157

121:                                              ; preds = %113
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @IB_QPS_RESET, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %131 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load i32, i32* @EPERM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %13, align 4
  %138 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %139 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (i32*, i8*, ...) @ibdev_err(i32* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %141)
  br label %144

143:                                              ; preds = %129
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %143, %135
  br label %157

145:                                              ; preds = %125, %121
  %146 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %147 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %146, i32 0, i32 0
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32)*, i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32)** %149, align 8
  %151 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %152 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 %150(%struct.ib_qp* %151, %struct.ib_qp_attr* %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %145, %144, %120, %109, %95
  %158 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %159 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %158, i32 0, i32 2
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %13, align 4
  ret i32 %161
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ibdev_warn(i32*, i8*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32) #1

declare dso_local i32 @ibdev_err(i32*, i8*, ...) #1

declare dso_local i32 @hns_roce_check_qp_attr(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
