; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i64, %struct.ib_recv_wr*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qedr_dev = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32*, i32)* }
%struct.qedr_qp = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }

@QED_ROCE_QP_STATE_RTR = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"gsi post recv: failed to post rx buffer. state is %d and not QED_ROCE_QP_STATE_RTR/S\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDR_GSI_MAX_RECV_SGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"gsi post recv: failed to post rx buffer. too many sges %d>%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"gsi post recv: failed to post rx buffer (rc=%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_gsi_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qedr_dev* @get_qedr_dev(i32 %14)
  store %struct.qedr_dev* %15, %struct.qedr_dev** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %16)
  store %struct.qedr_qp* %17, %struct.qedr_qp** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %19 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QED_ROCE_QP_STATE_RTR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %25 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %31 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %30, %struct.ib_recv_wr** %31, align 8
  %32 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %32, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %153

40:                                               ; preds = %23, %3
  %41 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %42 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %93, %40
  %46 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %47 = icmp ne %struct.ib_recv_wr* %46, null
  br i1 %47, label %48, label %138

48:                                               ; preds = %45
  %49 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QEDR_GSI_MAX_RECV_SGE, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %56 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* @QEDR_GSI_MAX_RECV_SGE, align 8
  %61 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 %60)
  br label %144

62:                                               ; preds = %48
  %63 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %64 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32, i32*, i32)** %66, align 8
  %68 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %69 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %72 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 %67(i32 %70, i32 %73, i32 %79, i32 %85, i32* null, i32 1)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %62
  %90 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %144

93:                                               ; preds = %62
  %94 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %95 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %94, i32 0, i32 3
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %98 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %100
  %102 = call i32 @memset(%struct.TYPE_8__* %101, i32 0, i32 16)
  %103 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %104 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %103, i32 0, i32 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %107 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 0
  %114 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %114, i32 0, i32 3
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 0
  %118 = bitcast %struct.TYPE_6__* %113 to i8*
  %119 = bitcast %struct.TYPE_6__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  %120 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %124 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %123, i32 0, i32 3
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %127 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %122, i32* %131, align 8
  %132 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %133 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %132, i32 0, i32 2
  %134 = call i32 @qedr_inc_sw_prod(%struct.TYPE_7__* %133)
  %135 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %135, i32 0, i32 1
  %137 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %136, align 8
  store %struct.ib_recv_wr* %137, %struct.ib_recv_wr** %6, align 8
  br label %45

138:                                              ; preds = %45
  %139 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %140 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %139, i32 0, i32 1
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %153

144:                                              ; preds = %89, %54
  %145 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %146 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %145, i32 0, i32 1
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %150 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %149, %struct.ib_recv_wr** %150, align 8
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %144, %138, %29
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qedr_inc_sw_prod(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
