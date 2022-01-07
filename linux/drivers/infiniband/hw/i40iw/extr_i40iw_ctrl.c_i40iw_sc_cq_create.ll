; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cq = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_MAX_CQID = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_CQ_ID = common dso_local global i32 0, align 4
@I40IW_MAX_CEQID = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_CEQ_ID = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHVAL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_CREATE_CQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CHKOVERFLOW = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_VIRTMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_ENCEQEMASK = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQIDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"CQ_CREATE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cq*, i32, i32, i32)* @i40iw_sc_cq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cq_create(%struct.i40iw_sc_cq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_sc_cqp*, align 8
  %12 = alloca i32, align 4
  store %struct.i40iw_sc_cq* %0, %struct.i40iw_sc_cq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I40IW_MAX_CQID, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @I40IW_ERR_INVALID_CQ_ID, align 4
  store i32 %20, i32* %5, align 4
  br label %185

21:                                               ; preds = %4
  %22 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I40IW_MAX_CEQID, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @I40IW_ERR_INVALID_CEQ_ID, align 4
  store i32 %28, i32* %5, align 4
  br label %185

29:                                               ; preds = %21
  %30 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %30, i32 0, i32 12
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %33, align 8
  store %struct.i40iw_sc_cqp* %34, %struct.i40iw_sc_cqp** %11, align 8
  %35 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %35, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %41, i32* %5, align 4
  br label %185

42:                                               ; preds = %29
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %45 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %44, i32 0, i32 11
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @set_64bit_val(i32* %43, i32 0, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %51 = call i32 @RS_64_1(%struct.i40iw_sc_cq* %50, i32 1)
  %52 = call i32 @set_64bit_val(i32* %49, i32 8, i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %55 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD, align 4
  %58 = call i32 @LS_64(i32 %56, i32 %57)
  %59 = call i32 @set_64bit_val(i32* %53, i32 16, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %62 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %42
  br label %70

66:                                               ; preds = %42
  %67 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %68 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = phi i32 [ 0, %65 ], [ %69, %66 ]
  %72 = call i32 @set_64bit_val(i32* %60, i32 32, i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %75 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @set_64bit_val(i32* %73, i32 40, i32 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %80 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  br label %88

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 0, %87 ]
  %90 = call i32 @set_64bit_val(i32* %78, i32 48, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %93 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I40IW_CQPSQ_TPHVAL, align 4
  %96 = call i32 @LS_64(i32 %94, i32 %95)
  %97 = call i32 @set_64bit_val(i32* %91, i32 56, i32 %96)
  %98 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %99 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %98, i32 0, i32 11
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %103 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %88
  %107 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %108 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  br label %111

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i64 [ %109, %106 ], [ 0, %110 ]
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @I40IW_CQPSQ_CQ_CEQID, align 4
  %115 = call i32 @LS_64(i32 %113, i32 %114)
  %116 = or i32 %101, %115
  %117 = load i32, i32* @I40IW_CQP_OP_CREATE_CQ, align 4
  %118 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %119 = call i32 @LS_64(i32 %117, i32 %118)
  %120 = or i32 %116, %119
  %121 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %122 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @I40IW_CQPSQ_CQ_LPBLSIZE, align 4
  %125 = call i32 @LS_64(i32 %123, i32 %124)
  %126 = or i32 %120, %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @I40IW_CQPSQ_CQ_CHKOVERFLOW, align 4
  %129 = call i32 @LS_64(i32 %127, i32 %128)
  %130 = or i32 %126, %129
  %131 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %132 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @I40IW_CQPSQ_CQ_VIRTMAP, align 4
  %135 = call i32 @LS_64(i32 %133, i32 %134)
  %136 = or i32 %130, %135
  %137 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %138 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @I40IW_CQPSQ_CQ_ENCEQEMASK, align 4
  %141 = call i32 @LS_64(i32 %139, i32 %140)
  %142 = or i32 %136, %141
  %143 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %144 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @I40IW_CQPSQ_CQ_CEQIDVALID, align 4
  %147 = call i32 @LS_64(i32 %145, i32 %146)
  %148 = or i32 %142, %147
  %149 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %150 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %153 = call i32 @LS_64(i32 %151, i32 %152)
  %154 = or i32 %148, %153
  %155 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %156 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %155, i32 0, i32 11
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT, align 4
  %160 = call i32 @LS_64(i32 %158, i32 %159)
  %161 = or i32 %154, %160
  %162 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %163 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %166 = call i32 @LS_64(i32 %164, i32 %165)
  %167 = or i32 %161, %166
  store i32 %167, i32* %12, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @i40iw_insert_wqe_hdr(i32* %168, i32 %169)
  %171 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %172 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %177 = mul nsw i32 %176, 8
  %178 = call i32 @i40iw_debug_buf(i32 %173, i32 %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %175, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %111
  %182 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %183 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %182)
  br label %184

184:                                              ; preds = %181, %111
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %40, %27, %19
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @RS_64_1(%struct.i40iw_sc_cq*, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
