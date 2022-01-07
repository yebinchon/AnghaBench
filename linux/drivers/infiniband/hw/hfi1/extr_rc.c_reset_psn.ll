; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_reset_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_reset_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i64, i32, i32, i8*, i64, i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32, i64, i64 }
%struct.rvt_swqe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@SEND_LAST = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_LAST = common dso_local global i32 0, align 4
@WRITE_RESP = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_MIDDLE = common dso_local global i32 0, align 4
@READ_RESP = common dso_local global i32 0, align 4
@HFI1_S_TID_WAIT_INTERLCK = common dso_local global i32 0, align 4
@RVT_S_WAIT_PSN = common dso_local global i32 0, align 4
@HFI1_S_AHG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i64)* @reset_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_psn(%struct.rvt_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hfi1_qp_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %13, i64 %14)
  store %struct.rvt_swqe* %15, %struct.rvt_swqe** %6, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 11
  %18 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %17, align 8
  store %struct.hfi1_qp_priv* %18, %struct.hfi1_qp_priv** %8, align 8
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 10
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %26 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %28 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %30 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %33 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cmp_psn(i64 %31, i32 %34)
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i32, i32* @SEND_LAST, align 4
  %39 = call i8* @OP(i32 %38)
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  br label %132

42:                                               ; preds = %2
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %46 = call i32 @update_num_rd_atomic(%struct.rvt_qp* %43, i64 %44, %struct.rvt_swqe* %45)
  br label %47

47:                                               ; preds = %90, %42
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %5, align 8
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %95

62:                                               ; preds = %55
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %63, i64 %64)
  store %struct.rvt_swqe* %65, %struct.rvt_swqe** %6, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %68 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cmp_psn(i64 %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %74, i64 %77)
  store %struct.rvt_swqe* %78, %struct.rvt_swqe** %6, align 8
  br label %95

79:                                               ; preds = %62
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %82 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* @SEND_LAST, align 4
  %87 = call i8* @OP(i32 %86)
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %89 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %88, i32 0, i32 8
  store i8* %87, i8** %89, align 8
  br label %132

90:                                               ; preds = %79
  %91 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %94 = call i32 @update_num_rd_atomic(%struct.rvt_qp* %91, i64 %92, %struct.rvt_swqe* %93)
  br label %47

95:                                               ; preds = %73, %61
  %96 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %97 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  switch i64 %100, label %126 [
    i64 131, label %101
    i64 130, label %101
    i64 133, label %106
    i64 132, label %106
    i64 128, label %111
    i64 134, label %116
    i64 129, label %121
  ]

101:                                              ; preds = %95, %95
  %102 = load i32, i32* @RDMA_READ_RESPONSE_FIRST, align 4
  %103 = call i8* @OP(i32 %102)
  %104 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %105 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %104, i32 0, i32 8
  store i8* %103, i8** %105, align 8
  br label %131

106:                                              ; preds = %95, %95
  %107 = load i32, i32* @RDMA_READ_RESPONSE_LAST, align 4
  %108 = call i8* @OP(i32 %107)
  %109 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %110 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  br label %131

111:                                              ; preds = %95
  %112 = load i32, i32* @WRITE_RESP, align 4
  %113 = call i8* @TID_OP(i32 %112)
  %114 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %115 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %114, i32 0, i32 8
  store i8* %113, i8** %115, align 8
  br label %131

116:                                              ; preds = %95
  %117 = load i32, i32* @RDMA_READ_RESPONSE_MIDDLE, align 4
  %118 = call i8* @OP(i32 %117)
  %119 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %120 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %119, i32 0, i32 8
  store i8* %118, i8** %120, align 8
  br label %131

121:                                              ; preds = %95
  %122 = load i32, i32* @READ_RESP, align 4
  %123 = call i8* @TID_OP(i32 %122)
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  br label %131

126:                                              ; preds = %95
  %127 = load i32, i32* @SEND_LAST, align 4
  %128 = call i8* @OP(i32 %127)
  %129 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %130 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %129, i32 0, i32 8
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %126, %121, %116, %111, %106, %101
  br label %132

132:                                              ; preds = %131, %85, %37
  %133 = load i32, i32* @HFI1_S_TID_WAIT_INTERLCK, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %136 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i64, i64* %4, align 8
  %140 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %141 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  %142 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %143 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %146 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @cmp_psn(i64 %144, i32 %147)
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %132
  %151 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %152 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %155 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @cmp_psn(i64 %153, i32 %156)
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %150
  %160 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %161 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %162 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %150, %132
  %166 = load i32, i32* @HFI1_S_AHG_VALID, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %169 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %173 = call i32 @trace_hfi1_sender_reset_psn(%struct.rvt_qp* %172)
  ret void
}

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cmp_psn(i64, i32) #1

declare dso_local i8* @OP(i32) #1

declare dso_local i32 @update_num_rd_atomic(%struct.rvt_qp*, i64, %struct.rvt_swqe*) #1

declare dso_local i8* @TID_OP(i32) #1

declare dso_local i32 @trace_hfi1_sender_reset_psn(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
