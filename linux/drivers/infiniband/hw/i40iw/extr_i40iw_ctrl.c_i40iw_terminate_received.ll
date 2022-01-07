; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_terminate_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_terminate_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32*, i32, i32 }
%struct.i40iw_aeqe_info = type { i32, i64 }
%struct.i40iw_terminate_hdr = type { i64 }

@Q2_BAD_FRAME_OFFSET = common dso_local global i32 0, align 4
@I40IW_AE_LCE_QP_CATASTROPHIC = common dso_local global i32 0, align 4
@I40IW_AE_DDP_UBE_INVALID_DDP_VERSION = common dso_local global i32 0, align 4
@I40IW_AE_DDP_UBE_INVALID_QN = common dso_local global i32 0, align 4
@I40IW_AE_DDP_INVALID_MSN_GAP_IN_MSN = common dso_local global i32 0, align 4
@I40IW_AE_DDP_UBE_INVALID_MO = common dso_local global i32 0, align 4
@I40IW_AE_RDMAP_ROE_INVALID_RDMAP_VERSION = common dso_local global i32 0, align 4
@I40IW_TERM_RCVD = common dso_local global i32 0, align 4
@TERM_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@RDMAP_REMOTE_PROT = common dso_local global i64 0, align 8
@RDMAP_REMOTE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_terminate_received(%struct.i40iw_sc_qp* %0, %struct.i40iw_aeqe_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca %struct.i40iw_aeqe_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_terminate_hdr*, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %3, align 8
  store %struct.i40iw_aeqe_info* %1, %struct.i40iw_aeqe_info** %4, align 8
  %11 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @Q2_BAD_FRAME_OFFSET, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @i40iw_locate_mpa(i32* %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %21 = getelementptr inbounds %struct.i40iw_aeqe_info, %struct.i40iw_aeqe_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %95

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohl(i32 %27)
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = and i32 %34, 255
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 64
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @I40IW_AE_LCE_QP_CATASTROPHIC, align 4
  store i32 %40, i32* %9, align 4
  br label %82

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @I40IW_AE_DDP_UBE_INVALID_DDP_VERSION, align 4
  store i32 %46, i32* %9, align 4
  br label %81

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @I40IW_AE_DDP_UBE_INVALID_QN, align 4
  store i32 %54, i32* %9, align 4
  br label %80

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @I40IW_AE_DDP_INVALID_MSN_GAP_IN_MSN, align 4
  store i32 %62, i32* %9, align 4
  br label %79

63:                                               ; preds = %55
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohl(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @I40IW_AE_DDP_UBE_INVALID_MO, align 4
  store i32 %70, i32* %9, align 4
  br label %78

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 192
  %74 = icmp ne i32 %73, 64
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @I40IW_AE_RDMAP_ROE_INVALID_RDMAP_VERSION, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %39
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %85 = getelementptr inbounds %struct.i40iw_aeqe_info, %struct.i40iw_aeqe_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_aeqe_info, %struct.i40iw_aeqe_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %92 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %93 = call i32 @i40iw_terminate_connection(%struct.i40iw_sc_qp* %91, %struct.i40iw_aeqe_info* %92)
  br label %126

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %2
  %96 = load i32, i32* @I40IW_TERM_RCVD, align 4
  %97 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %98 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @TERM_EVENT_QP_FATAL, align 4
  %102 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %103 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 5
  %106 = bitcast i32* %105 to %struct.i40iw_terminate_hdr*
  store %struct.i40iw_terminate_hdr* %106, %struct.i40iw_terminate_hdr** %10, align 8
  %107 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %108 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RDMAP_REMOTE_PROT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %95
  %113 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %114 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RDMAP_REMOTE_OP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112, %95
  %119 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %120 = call i32 @i40iw_terminate_done(%struct.i40iw_sc_qp* %119, i32 0)
  br label %126

121:                                              ; preds = %112
  %122 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %123 = call i32 @i40iw_terminate_start_timer(%struct.i40iw_sc_qp* %122)
  %124 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %125 = call i32 @i40iw_terminate_send_fin(%struct.i40iw_sc_qp* %124)
  br label %126

126:                                              ; preds = %90, %121, %118
  ret void
}

declare dso_local i64 @i40iw_locate_mpa(i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @i40iw_terminate_connection(%struct.i40iw_sc_qp*, %struct.i40iw_aeqe_info*) #1

declare dso_local i32 @i40iw_terminate_done(%struct.i40iw_sc_qp*, i32) #1

declare dso_local i32 @i40iw_terminate_start_timer(%struct.i40iw_sc_qp*) #1

declare dso_local i32 @i40iw_terminate_send_fin(%struct.i40iw_sc_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
