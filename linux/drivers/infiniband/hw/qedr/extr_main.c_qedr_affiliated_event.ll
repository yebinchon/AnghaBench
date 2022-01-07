; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_affiliated_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_affiliated_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.regpair = type { i32, i64 }
%struct.ib_event = type { %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { %struct.ib_srq*, %struct.ib_qp*, %struct.ib_cq* }
%struct.ib_srq = type { i32, i32 (%struct.ib_event.0*, i32)*, i32 }
%struct.ib_event.0 = type opaque
%struct.ib_qp = type { i32, i32 (%struct.ib_event.1*, i32)*, i32 }
%struct.ib_event.1 = type opaque
%struct.ib_cq = type { i32, i32 (%struct.ib_event.2*, i32)*, i32 }
%struct.ib_event.2 = type opaque
%struct.qedr_srq = type { %struct.ib_srq }
%struct.qedr_cq = type { %struct.ib_qp, %struct.ib_cq }
%struct.qedr_qp = type { %struct.ib_qp, %struct.ib_cq }

@IB_EVENT_CQ_ERR = common dso_local global i8* null, align 8
@IB_EVENT_SQ_DRAINED = common dso_local global i8* null, align 8
@IB_EVENT_QP_FATAL = common dso_local global i8* null, align 8
@IB_EVENT_QP_REQ_ERR = common dso_local global i8* null, align 8
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i8* null, align 8
@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i8* null, align 8
@IB_EVENT_SRQ_ERR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"unsupported event %d on handle=%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Error: CQ event with NULL pointer ibcq. Handle=%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CQ event %d on handle %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Error: QP event with NULL pointer ibqp. Handle=%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"QP event %d on handle %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"SRQ event with NULL pointer ibsrq. Handle=%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SRQ event %d on handle %p\0A\00", align 1
@EVENT_TYPE_NOT_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @qedr_affiliated_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_affiliated_event(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.regpair*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_event, align 8
  %12 = alloca %struct.ib_srq*, align 8
  %13 = alloca %struct.qedr_srq*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ib_cq*, align 8
  %16 = alloca %struct.ib_qp*, align 8
  %17 = alloca %struct.qedr_cq*, align 8
  %18 = alloca %struct.qedr_qp*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.qedr_dev*
  store %struct.qedr_dev* %21, %struct.qedr_dev** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.regpair*
  store %struct.regpair* %23, %struct.regpair** %8, align 8
  %24 = load %struct.regpair*, %struct.regpair** %8, align 8
  %25 = getelementptr inbounds %struct.regpair, %struct.regpair* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 32
  %29 = load %struct.regpair*, %struct.regpair** %8, align 8
  %30 = getelementptr inbounds %struct.regpair, %struct.regpair* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %34 = call i64 @IS_ROCE(%struct.qedr_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %59 [
    i32 134, label %38
    i32 130, label %41
    i32 131, label %44
    i32 132, label %47
    i32 133, label %50
    i32 128, label %53
    i32 129, label %56
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @IB_EVENT_CQ_ERR, align 8
  %40 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  store i32 1, i32* %10, align 4
  br label %64

41:                                               ; preds = %36
  %42 = load i8*, i8** @IB_EVENT_SQ_DRAINED, align 8
  %43 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  store i32 2, i32* %10, align 4
  br label %64

44:                                               ; preds = %36
  %45 = load i8*, i8** @IB_EVENT_QP_FATAL, align 8
  %46 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  store i32 2, i32* %10, align 4
  br label %64

47:                                               ; preds = %36
  %48 = load i8*, i8** @IB_EVENT_QP_REQ_ERR, align 8
  %49 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  store i32 2, i32* %10, align 4
  br label %64

50:                                               ; preds = %36
  %51 = load i8*, i8** @IB_EVENT_QP_ACCESS_ERR, align 8
  %52 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  store i32 2, i32* %10, align 4
  br label %64

53:                                               ; preds = %36
  %54 = load i8*, i8** @IB_EVENT_SRQ_LIMIT_REACHED, align 8
  %55 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %54, i8** %55, align 8
  store i32 3, i32* %10, align 4
  br label %64

56:                                               ; preds = %36
  %57 = load i8*, i8** @IB_EVENT_SRQ_ERR, align 8
  %58 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  store i32 3, i32* %10, align 4
  br label %64

59:                                               ; preds = %36
  %60 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56, %53, %50, %47, %44, %41, %38
  br label %79

65:                                               ; preds = %3
  %66 = load i32, i32* %5, align 4
  switch i32 %66, label %73 [
    i32 135, label %67
    i32 136, label %70
  ]

67:                                               ; preds = %65
  %68 = load i8*, i8** @IB_EVENT_SRQ_LIMIT_REACHED, align 8
  %69 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  store i32 3, i32* %10, align 4
  br label %78

70:                                               ; preds = %65
  %71 = load i8*, i8** @IB_EVENT_SRQ_ERR, align 8
  %72 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  store i32 3, i32* %10, align 4
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70, %67
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %10, align 4
  switch i32 %80, label %206 [
    i32 1, label %81
    i32 2, label %119
    i32 3, label %157
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.qedr_cq*
  store %struct.qedr_cq* %84, %struct.qedr_cq** %17, align 8
  %85 = load %struct.qedr_cq*, %struct.qedr_cq** %17, align 8
  %86 = icmp ne %struct.qedr_cq* %85, null
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.qedr_cq*, %struct.qedr_cq** %17, align 8
  %89 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %88, i32 0, i32 1
  store %struct.ib_cq* %89, %struct.ib_cq** %15, align 8
  %90 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %91 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %90, i32 0, i32 1
  %92 = load i32 (%struct.ib_event.2*, i32)*, i32 (%struct.ib_event.2*, i32)** %91, align 8
  %93 = icmp ne i32 (%struct.ib_event.2*, i32)* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %87
  %95 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %96 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  %99 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %100 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store %struct.ib_cq* %99, %struct.ib_cq** %101, align 8
  %102 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %103 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %102, i32 0, i32 1
  %104 = load i32 (%struct.ib_event.2*, i32)*, i32 (%struct.ib_event.2*, i32)** %103, align 8
  %105 = bitcast %struct.ib_event* %11 to %struct.ib_event.2*
  %106 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %107 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %104(%struct.ib_event.2* %105, i32 %108)
  br label %110

110:                                              ; preds = %94, %87
  br label %114

111:                                              ; preds = %81
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %110
  %115 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.qedr_cq*, %struct.qedr_cq** %17, align 8
  %118 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %116, %struct.qedr_cq* %117)
  br label %207

119:                                              ; preds = %79
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to %struct.qedr_qp*
  store %struct.qedr_qp* %122, %struct.qedr_qp** %18, align 8
  %123 = load %struct.qedr_qp*, %struct.qedr_qp** %18, align 8
  %124 = icmp ne %struct.qedr_qp* %123, null
  br i1 %124, label %125, label %149

125:                                              ; preds = %119
  %126 = load %struct.qedr_qp*, %struct.qedr_qp** %18, align 8
  %127 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %126, i32 0, i32 0
  store %struct.ib_qp* %127, %struct.ib_qp** %16, align 8
  %128 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %129 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %128, i32 0, i32 1
  %130 = load i32 (%struct.ib_event.1*, i32)*, i32 (%struct.ib_event.1*, i32)** %129, align 8
  %131 = icmp ne i32 (%struct.ib_event.1*, i32)* %130, null
  br i1 %131, label %132, label %148

132:                                              ; preds = %125
  %133 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %134 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 1
  store i32 %135, i32* %136, align 8
  %137 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %138 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store %struct.ib_qp* %137, %struct.ib_qp** %139, align 8
  %140 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %141 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %140, i32 0, i32 1
  %142 = load i32 (%struct.ib_event.1*, i32)*, i32 (%struct.ib_event.1*, i32)** %141, align 8
  %143 = bitcast %struct.ib_event* %11 to %struct.ib_event.1*
  %144 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %145 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %142(%struct.ib_event.1* %143, i32 %146)
  br label %148

148:                                              ; preds = %132, %125
  br label %152

149:                                              ; preds = %119
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %148
  %153 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.qedr_qp*, %struct.qedr_qp** %18, align 8
  %156 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %154, %struct.qedr_qp* %155)
  br label %207

157:                                              ; preds = %79
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %19, align 4
  %159 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %160 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %159, i32 0, i32 0
  %161 = load i64, i64* %14, align 8
  %162 = call i32 @xa_lock_irqsave(i32* %160, i64 %161)
  %163 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %164 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %19, align 4
  %166 = call %struct.qedr_srq* @xa_load(i32* %164, i32 %165)
  store %struct.qedr_srq* %166, %struct.qedr_srq** %13, align 8
  %167 = load %struct.qedr_srq*, %struct.qedr_srq** %13, align 8
  %168 = icmp ne %struct.qedr_srq* %167, null
  br i1 %168, label %169, label %193

169:                                              ; preds = %157
  %170 = load %struct.qedr_srq*, %struct.qedr_srq** %13, align 8
  %171 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %170, i32 0, i32 0
  store %struct.ib_srq* %171, %struct.ib_srq** %12, align 8
  %172 = load %struct.ib_srq*, %struct.ib_srq** %12, align 8
  %173 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %172, i32 0, i32 1
  %174 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %173, align 8
  %175 = icmp ne i32 (%struct.ib_event.0*, i32)* %174, null
  br i1 %175, label %176, label %192

176:                                              ; preds = %169
  %177 = load %struct.ib_srq*, %struct.ib_srq** %12, align 8
  %178 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = load %struct.ib_srq*, %struct.ib_srq** %12, align 8
  %182 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  store %struct.ib_srq* %181, %struct.ib_srq** %183, align 8
  %184 = load %struct.ib_srq*, %struct.ib_srq** %12, align 8
  %185 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %184, i32 0, i32 1
  %186 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %185, align 8
  %187 = bitcast %struct.ib_event* %11 to %struct.ib_event.0*
  %188 = load %struct.ib_srq*, %struct.ib_srq** %12, align 8
  %189 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 %186(%struct.ib_event.0* %187, i32 %190)
  br label %192

192:                                              ; preds = %176, %169
  br label %197

193:                                              ; preds = %157
  %194 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_NOTICE(%struct.qedr_dev* %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %193, %192
  %198 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %199 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %198, i32 0, i32 0
  %200 = load i64, i64* %14, align 8
  %201 = call i32 @xa_unlock_irqrestore(i32* %199, i64 %200)
  %202 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.qedr_srq*, %struct.qedr_srq** %13, align 8
  %205 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_NOTICE(%struct.qedr_dev* %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %203, %struct.qedr_srq* %204)
  br label %206

206:                                              ; preds = %79, %197
  br label %207

207:                                              ; preds = %206, %152, %114
  ret void
}

declare dso_local i64 @IS_ROCE(%struct.qedr_dev*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32, ...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local %struct.qedr_srq* @xa_load(i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qedr_dev*, i8*, i32, ...) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
