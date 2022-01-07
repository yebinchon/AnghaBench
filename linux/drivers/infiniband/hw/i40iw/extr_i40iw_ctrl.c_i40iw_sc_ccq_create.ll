; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ccq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ccq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32, i32 }

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
@.str = private unnamed_addr constant [15 x i8] c"CCQ_CREATE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@i40iw_cqp_sds_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cq*, i32, i32, i32)* @i40iw_sc_ccq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_ccq_create(%struct.i40iw_sc_cq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_sc_cqp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_cq* %0, %struct.i40iw_sc_cq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %14, i32 0, i32 12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %17, align 8
  store %struct.i40iw_sc_cqp* %18, %struct.i40iw_sc_cqp** %11, align 8
  %19 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %19, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %25, i32* %5, align 4
  br label %178

26:                                               ; preds = %4
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %29 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_64bit_val(i32* %27, i32 0, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %35 = call i32 @RS_64_1(%struct.i40iw_sc_cq* %34, i32 1)
  %36 = call i32 @set_64bit_val(i32* %33, i32 8, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %39 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD, align 4
  %42 = call i32 @LS_64(i32 %40, i32 %41)
  %43 = call i32 @set_64bit_val(i32* %37, i32 16, i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %46 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %26
  br label %54

50:                                               ; preds = %26
  %51 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %52 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi i32 [ 0, %49 ], [ %53, %50 ]
  %56 = call i32 @set_64bit_val(i32* %44, i32 32, i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_64bit_val(i32* %57, i32 40, i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %64 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %69 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  br label %72

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = call i32 @set_64bit_val(i32* %62, i32 48, i32 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %77 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I40IW_CQPSQ_TPHVAL, align 4
  %80 = call i32 @LS_64(i32 %78, i32 %79)
  %81 = call i32 @set_64bit_val(i32* %75, i32 56, i32 %80)
  %82 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %83 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %82, i32 0, i32 11
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %87 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %72
  %91 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %92 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  br label %95

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i32 [ %93, %90 ], [ 0, %94 ]
  %97 = load i32, i32* @I40IW_CQPSQ_CQ_CEQID, align 4
  %98 = call i32 @LS_64(i32 %96, i32 %97)
  %99 = or i32 %85, %98
  %100 = load i32, i32* @I40IW_CQP_OP_CREATE_CQ, align 4
  %101 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %102 = call i32 @LS_64(i32 %100, i32 %101)
  %103 = or i32 %99, %102
  %104 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %105 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @I40IW_CQPSQ_CQ_LPBLSIZE, align 4
  %108 = call i32 @LS_64(i32 %106, i32 %107)
  %109 = or i32 %103, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @I40IW_CQPSQ_CQ_CHKOVERFLOW, align 4
  %112 = call i32 @LS_64(i32 %110, i32 %111)
  %113 = or i32 %109, %112
  %114 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %115 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @I40IW_CQPSQ_CQ_VIRTMAP, align 4
  %118 = call i32 @LS_64(i32 %116, i32 %117)
  %119 = or i32 %113, %118
  %120 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %121 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @I40IW_CQPSQ_CQ_ENCEQEMASK, align 4
  %124 = call i32 @LS_64(i32 %122, i32 %123)
  %125 = or i32 %119, %124
  %126 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %127 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @I40IW_CQPSQ_CQ_CEQIDVALID, align 4
  %130 = call i32 @LS_64(i32 %128, i32 %129)
  %131 = or i32 %125, %130
  %132 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %133 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %136 = call i32 @LS_64(i32 %134, i32 %135)
  %137 = or i32 %131, %136
  %138 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %139 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT, align 4
  %143 = call i32 @LS_64(i32 %141, i32 %142)
  %144 = or i32 %137, %143
  %145 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %146 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %149 = call i32 @LS_64(i32 %147, i32 %148)
  %150 = or i32 %144, %149
  store i32 %150, i32* %12, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @i40iw_insert_wqe_hdr(i32* %151, i32 %152)
  %154 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %155 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %160 = mul nsw i32 %159, 8
  %161 = call i32 @i40iw_debug_buf(i32 %156, i32 %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %158, i32 %160)
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %95
  %165 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %166 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %165)
  %167 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %168 = call i32 @i40iw_sc_ccq_create_done(%struct.i40iw_sc_cq* %167)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %5, align 4
  br label %178

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %95
  %175 = load i32, i32* @i40iw_cqp_sds_cmd, align 4
  %176 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %177 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %174, %171, %24
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @RS_64_1(%struct.i40iw_sc_cq*, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

declare dso_local i32 @i40iw_sc_ccq_create_done(%struct.i40iw_sc_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
