; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i64, i64, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_dev = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.mthca_qp = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Bad QP transition (transport %d) %d->%d with attr 0x%08x\0A\00", align 1
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"P_Key index (%u) too large. max is %d\0A\00", align 1
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Port number (%u) is invalid\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Max rdma_atomic as initiator %u too large (max is %d)\0A\00", align 1
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Max rdma_atomic as responder %u too large (max %d)\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca %struct.mthca_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mthca_dev* @to_mdev(i32 %16)
  store %struct.mthca_dev* %17, %struct.mthca_dev** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = call %struct.mthca_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mthca_qp* %19, %struct.mthca_qp** %10, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %23 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  br label %53

33:                                               ; preds = %4
  %34 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %35 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %39 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %43 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %46 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %50 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  br label %53

53:                                               ; preds = %33, %29
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IB_QP_STATE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %61, %58 ], [ %63, %62 ]
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %69 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ib_modify_qp_is_ok(i32 %66, i32 %67, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %64
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %76 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %77 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79, i32 %80, i32 %81)
  br label %203

83:                                               ; preds = %64
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %90 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %93 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %91, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %99 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %104 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %106, 1
  %108 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %102, i64 %107)
  br label %203

109:                                              ; preds = %88, %83
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @IB_QP_PORT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %109
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %114
  %120 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %124 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %122, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %119, %114
  %129 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %203

135:                                              ; preds = %119, %109
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %145 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %143, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %140
  %150 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %156 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %150, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %154, i64 %158)
  br label %203

160:                                              ; preds = %140, %135
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %160
  %166 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %167 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %170 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = shl i32 1, %172
  %174 = icmp sgt i32 %168, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %165
  %176 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %177 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %181 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 1, %183
  %185 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %176, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %184)
  br label %203

186:                                              ; preds = %165, %160
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @IB_QPS_RESET, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 0, i32* %13, align 4
  br label %203

195:                                              ; preds = %190, %186
  %196 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %197 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %202 = call i32 @__mthca_modify_qp(%struct.ib_qp* %196, %struct.ib_qp_attr* %197, i32 %198, i32 %199, i32 %200, %struct.ib_udata* %201)
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %195, %194, %175, %149, %128, %97, %74
  %204 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %205 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %204, i32 0, i32 1
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load i32, i32* %13, align 4
  ret i32 %207
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i32, ...) #1

declare dso_local i32 @__mthca_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32, %struct.ib_udata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
