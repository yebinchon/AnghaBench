; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_rc.c_rvt_compute_aeth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_rc.c_rvt_compute_aeth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, %struct.TYPE_8__, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@IB_MSN_MASK = common dso_local global i64 0, align 8
@IB_AETH_CREDIT_INVAL = common dso_local global i64 0, align 8
@IB_AETH_CREDIT_SHIFT = common dso_local global i64 0, align 8
@credit_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_compute_aeth(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IB_MSN_MASK, align 8
  %14 = and i64 %12, %13
  store i64 %14, i64* %3, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i64, i64* @IB_AETH_CREDIT_INVAL, align 8
  %22 = load i64, i64* @IB_AETH_CREDIT_SHIFT, align 8
  %23 = shl i64 %21, %22
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %138

26:                                               ; preds = %1
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @READ_ONCE(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %26
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %43 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @RDMA_READ_UAPI_ATOMIC(i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %50 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @RDMA_READ_UAPI_ATOMIC(i32 %54)
  store i64 %55, i64* %9, align 8
  br label %71

56:                                               ; preds = %36
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @READ_ONCE(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %65 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @READ_ONCE(i32 %69)
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %56, %41
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %74 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i64 0, i64* %8, align 8
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %82 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i64 0, i64* %9, align 8
  br label %87

87:                                               ; preds = %86, %79
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = trunc i64 %91 to i32
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %96 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %7, align 8
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %26
  store i64 0, i64* %4, align 8
  store i64 31, i64* %5, align 8
  br label %103

103:                                              ; preds = %131, %102
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add nsw i64 %104, %105
  %107 = sdiv i64 %106, 2
  store i64 %107, i64* %6, align 8
  %108 = load i64*, i64** @credit_table, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %132

115:                                              ; preds = %103
  %116 = load i64*, i64** @credit_table, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %5, align 8
  br label %131

124:                                              ; preds = %115
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %132

129:                                              ; preds = %124
  %130 = load i64, i64* %6, align 8
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %129, %122
  br label %103

132:                                              ; preds = %128, %114
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @IB_AETH_CREDIT_SHIFT, align 8
  %135 = shl i64 %133, %134
  %136 = load i64, i64* %3, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %132, %20
  %139 = load i64, i64* %3, align 8
  %140 = call i32 @cpu_to_be32(i64 %139)
  ret i32 %140
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @RDMA_READ_UAPI_ATOMIC(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
