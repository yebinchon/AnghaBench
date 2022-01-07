; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_next_opcode_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_next_opcode_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_OPCODE_RC_RDMA_WRITE_FIRST = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_WRITE_MIDDLE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_WRITE_LAST = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_WRITE_ONLY = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_WRITE_LAST_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_WRITE_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_FIRST = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_MIDDLE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_LAST = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_ONLY = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_LAST_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_READ_REQUEST = common dso_local global i32 0, align 4
@IB_OPCODE_RC_COMPARE_SWAP = common dso_local global i32 0, align 4
@IB_OPCODE_RC_FETCH_ADD = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_LAST_WITH_INVALIDATE = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_ONLY_WITH_INVALIDATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, i32, i32)* @next_opcode_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_opcode_rc(%struct.rxe_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %177 [
    i32 133, label %9
    i32 132, label %41
    i32 130, label %73
    i32 129, label %105
    i32 134, label %137
    i32 137, label %139
    i32 136, label %141
    i32 128, label %143
    i32 131, label %175
    i32 135, label %175
  ]

9:                                                ; preds = %3
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %11 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_FIRST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_MIDDLE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16, %9
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_LAST, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_MIDDLE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %4, align 4
  br label %180

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_ONLY, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_FIRST, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %4, align 4
  br label %180

41:                                               ; preds = %3
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_FIRST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %50 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_MIDDLE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48, %41
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_LAST_WITH_IMMEDIATE, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_MIDDLE, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %4, align 4
  br label %180

64:                                               ; preds = %48
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_ONLY_WITH_IMMEDIATE, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @IB_OPCODE_RC_RDMA_WRITE_FIRST, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %4, align 4
  br label %180

73:                                               ; preds = %3
  %74 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %75 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IB_OPCODE_RC_SEND_FIRST, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %82 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IB_OPCODE_RC_SEND_MIDDLE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %80, %73
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @IB_OPCODE_RC_SEND_LAST, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @IB_OPCODE_RC_SEND_MIDDLE, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %4, align 4
  br label %180

96:                                               ; preds = %80
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @IB_OPCODE_RC_SEND_ONLY, align 4
  br label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @IB_OPCODE_RC_SEND_FIRST, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %4, align 4
  br label %180

105:                                              ; preds = %3
  %106 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %107 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IB_OPCODE_RC_SEND_FIRST, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %114 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IB_OPCODE_RC_SEND_MIDDLE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %112, %105
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @IB_OPCODE_RC_SEND_LAST_WITH_IMMEDIATE, align 4
  br label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @IB_OPCODE_RC_SEND_MIDDLE, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %4, align 4
  br label %180

128:                                              ; preds = %112
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @IB_OPCODE_RC_SEND_ONLY_WITH_IMMEDIATE, align 4
  br label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @IB_OPCODE_RC_SEND_FIRST, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  store i32 %136, i32* %4, align 4
  br label %180

137:                                              ; preds = %3
  %138 = load i32, i32* @IB_OPCODE_RC_RDMA_READ_REQUEST, align 4
  store i32 %138, i32* %4, align 4
  br label %180

139:                                              ; preds = %3
  %140 = load i32, i32* @IB_OPCODE_RC_COMPARE_SWAP, align 4
  store i32 %140, i32* %4, align 4
  br label %180

141:                                              ; preds = %3
  %142 = load i32, i32* @IB_OPCODE_RC_FETCH_ADD, align 4
  store i32 %142, i32* %4, align 4
  br label %180

143:                                              ; preds = %3
  %144 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %145 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IB_OPCODE_RC_SEND_FIRST, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %152 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IB_OPCODE_RC_SEND_MIDDLE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %150, %143
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @IB_OPCODE_RC_SEND_LAST_WITH_INVALIDATE, align 4
  br label %164

162:                                              ; preds = %157
  %163 = load i32, i32* @IB_OPCODE_RC_SEND_MIDDLE, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  store i32 %165, i32* %4, align 4
  br label %180

166:                                              ; preds = %150
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @IB_OPCODE_RC_SEND_ONLY_WITH_INVALIDATE, align 4
  br label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @IB_OPCODE_RC_SEND_FIRST, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  store i32 %174, i32* %4, align 4
  br label %180

175:                                              ; preds = %3, %3
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %4, align 4
  br label %180

177:                                              ; preds = %3
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %177, %175, %173, %164, %141, %139, %137, %135, %126, %103, %94, %71, %62, %39, %30
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
