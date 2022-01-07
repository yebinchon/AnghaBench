; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_set_extend_sge_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_set_extend_sge_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.device* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"The extended sge cnt error! sge_cnt=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_qp*)* @set_extend_sge_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_extend_sge_param(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_qp*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %5, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %21 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 2
  %25 = mul nsw i32 %19, %24
  %26 = call i8* @roundup_pow_of_two(i32 %25)
  %27 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %28 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %31 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  br label %33

33:                                               ; preds = %15, %2
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IB_QPT_GSI, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %48 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %52 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %50, %54
  %56 = call i8* @roundup_pow_of_two(i32 %55)
  %57 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %58 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %61 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  br label %63

63:                                               ; preds = %46, %39, %33
  %64 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %65 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %96

69:                                               ; preds = %63
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %71 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %78 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ugt i8* %80, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %89 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %76
  br label %96

96:                                               ; preds = %95, %69, %63
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i8* @roundup_pow_of_two(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
