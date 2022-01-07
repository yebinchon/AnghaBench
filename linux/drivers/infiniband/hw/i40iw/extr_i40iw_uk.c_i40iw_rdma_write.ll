; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_rdma_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i64, i32 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i40iw_rdma_write }
%struct.i40iw_rdma_write = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@I40IW_ERR_INVALID_FRAG_COUNT = common dso_local global i32 0, align 4
@I40IW_MAX_OUTBOUND_MESSAGE_SIZE = common dso_local global i64 0, align 8
@I40IW_ERR_QP_INVALID_MSG_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_FRAG_TO = common dso_local global i32 0, align 4
@I40IW_ERR_BAD_STAG = common dso_local global i32 0, align 4
@I40IWQPSQ_REMSTAG = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_WRITE = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_ADDFRAGCNT = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i32)* @i40iw_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_rdma_write(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_qp_uk*, align 8
  %6 = alloca %struct.i40iw_post_sq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i40iw_rdma_write*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %5, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.i40iw_rdma_write* %20, %struct.i40iw_rdma_write** %10, align 8
  %21 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %22 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @I40IW_ERR_INVALID_FRAG_COUNT, align 4
  store i32 %29, i32* %4, align 4
  br label %183

30:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %34 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %39 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %13, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  br label %31

50:                                               ; preds = %31
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @I40IW_MAX_OUTBOUND_MESSAGE_SIZE, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @I40IW_ERR_QP_INVALID_MSG_SIZE, align 4
  store i32 %55, i32* %4, align 4
  br label %183

56:                                               ; preds = %50
  %57 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %58 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %16, align 4
  %62 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %63 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @i40iw_fragcnt_to_wqesize_sq(i64 %64, i32* %17)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %4, align 4
  br label %183

70:                                               ; preds = %56
  %71 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %75 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %71, i64* %12, i32 %72, i64 %73, i32 %76)
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %81, i32* %4, align 4
  br label %183

82:                                               ; preds = %70
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %85 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @I40IWQPSQ_FRAG_TO, align 4
  %89 = call i32 @LS_64(i32 %87, i32 %88)
  %90 = call i32 @set_64bit_val(i32* %83, i32 16, i32 %89)
  %91 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %92 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %82
  %97 = load i32, i32* @I40IW_ERR_BAD_STAG, align 4
  store i32 %97, i32* %4, align 4
  br label %183

98:                                               ; preds = %82
  %99 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %100 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @I40IWQPSQ_REMSTAG, align 4
  %104 = call i32 @LS_64(i32 %102, i32 %103)
  %105 = load i32, i32* @I40IWQP_OP_RDMA_WRITE, align 4
  %106 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %107 = call i32 @LS_64(i32 %105, i32 %106)
  %108 = or i32 %104, %107
  %109 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %110 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %115 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %116, 1
  br label %119

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi i64 [ %117, %113 ], [ 0, %118 ]
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @I40IWQPSQ_ADDFRAGCNT, align 4
  %123 = call i32 @LS_64(i32 %121, i32 %122)
  %124 = or i32 %108, %123
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %127 = call i32 @LS_64(i32 %125, i32 %126)
  %128 = or i32 %124, %127
  %129 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %130 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %133 = call i32 @LS_64(i32 %131, i32 %132)
  %134 = or i32 %128, %133
  %135 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %136 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %139 = call i32 @LS_64(i32 %137, i32 %138)
  %140 = or i32 %134, %139
  %141 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %142 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %145 = call i32 @LS_64(i32 %143, i32 %144)
  %146 = or i32 %140, %145
  store i32 %146, i32* %8, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %149 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = call i32 @i40iw_set_fragment(i32* %147, i64 0, %struct.TYPE_6__* %150)
  store i64 1, i64* %11, align 8
  store i64 32, i64* %14, align 8
  br label %152

152:                                              ; preds = %169, %119
  %153 = load i64, i64* %11, align 8
  %154 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %155 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %153, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %152
  %159 = load i32*, i32** %9, align 8
  %160 = load i64, i64* %14, align 8
  %161 = load %struct.i40iw_rdma_write*, %struct.i40iw_rdma_write** %10, align 8
  %162 = getelementptr inbounds %struct.i40iw_rdma_write, %struct.i40iw_rdma_write* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %164
  %166 = call i32 @i40iw_set_fragment(i32* %159, i64 %160, %struct.TYPE_6__* %165)
  %167 = load i64, i64* %14, align 8
  %168 = add i64 %167, 16
  store i64 %168, i64* %14, align 8
  br label %169

169:                                              ; preds = %158
  %170 = load i64, i64* %11, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %11, align 8
  br label %152

172:                                              ; preds = %152
  %173 = call i32 (...) @wmb()
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @set_64bit_val(i32* %174, i32 24, i32 %175)
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %181 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %180)
  br label %182

182:                                              ; preds = %179, %172
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %96, %80, %68, %54, %28
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @i40iw_fragcnt_to_wqesize_sq(i64, i32*) #1

declare dso_local i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i64*, i32, i64, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_set_fragment(i32*, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
