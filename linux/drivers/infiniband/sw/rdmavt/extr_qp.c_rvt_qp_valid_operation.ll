; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_valid_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_valid_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.rvt_operation_params = type { i32, i32, i32 }
%struct.ib_send_wr = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@RVT_OPERATION_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RVT_OPERATION_PRIV = common dso_local global i32 0, align 4
@RVT_OPERATION_ATOMIC_SGE = common dso_local global i32 0, align 4
@RVT_OPERATION_ATOMIC = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, %struct.rvt_operation_params*, %struct.ib_send_wr*)* @rvt_qp_valid_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_qp_valid_operation(%struct.rvt_qp* %0, %struct.rvt_operation_params* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.rvt_operation_params*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.rvt_operation_params* %1, %struct.rvt_operation_params** %6, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %7, align 8
  %9 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %10 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RVT_OPERATION_MAX, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.rvt_operation_params*, %struct.rvt_operation_params** %6, align 8
  %16 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %17 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %15, i64 %18
  %20 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %163

26:                                               ; preds = %14
  %27 = load %struct.rvt_operation_params*, %struct.rvt_operation_params** %6, align 8
  %28 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %29 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %27, i64 %30
  %32 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @BIT(i64 %37)
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %163

44:                                               ; preds = %26
  %45 = load %struct.rvt_operation_params*, %struct.rvt_operation_params** %6, align 8
  %46 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %45, i64 %48
  %50 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RVT_OPERATION_PRIV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %44
  %56 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %57 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.TYPE_10__* @ibpd_to_rvtpd(i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %163

67:                                               ; preds = %55, %44
  %68 = load %struct.rvt_operation_params*, %struct.rvt_operation_params** %6, align 8
  %69 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %68, i64 %71
  %73 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RVT_OPERATION_ATOMIC_SGE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %67
  %79 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %80 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %85 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 4
  br i1 %91, label %102, label %92

92:                                               ; preds = %83
  %93 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %94 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, 3
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %92, %83, %78
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %163

105:                                              ; preds = %92, %67
  %106 = load %struct.rvt_operation_params*, %struct.rvt_operation_params** %6, align 8
  %107 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %108 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %106, i64 %109
  %111 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RVT_OPERATION_ATOMIC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %118 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %163

124:                                              ; preds = %116, %105
  %125 = load %struct.rvt_operation_params*, %struct.rvt_operation_params** %6, align 8
  %126 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %127 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %125, i64 %128
  %130 = getelementptr inbounds %struct.rvt_operation_params, %struct.rvt_operation_params* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %8, align 4
  %132 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %133 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IB_QPT_UC, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %124
  %139 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %140 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IB_QPT_RC, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %138
  %146 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %147 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %151 = call %struct.TYPE_9__* @ud_wr(%struct.ib_send_wr* %150)
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %149, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %163

160:                                              ; preds = %145
  store i32 4, i32* %8, align 4
  br label %161

161:                                              ; preds = %160, %138, %124
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %161, %157, %121, %102, %64, %41, %23
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @BIT(i64) #1

declare dso_local %struct.TYPE_10__* @ibpd_to_rvtpd(i64) #1

declare dso_local %struct.TYPE_9__* @ud_wr(%struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
