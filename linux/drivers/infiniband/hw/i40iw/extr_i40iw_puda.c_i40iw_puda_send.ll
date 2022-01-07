; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.i40iw_puda_send_info = type { i32, i32, i32, i32, i32, i64, i64 }

@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_MACLEN = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_IPLEN = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_L4T = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_IIPT = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_L4LEN = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_SEND = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_DOLOOPBACK = common dso_local global i32 0, align 4
@I40IW_UDA_QPSQ_VALID = common dso_local global i32 0, align 4
@I40IWQPSQ_FRAG_LEN = common dso_local global i32 0, align 4
@I40IW_DEBUG_PUDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PUDA SEND WQE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_puda_send(%struct.i40iw_sc_qp* %0, %struct.i40iw_puda_send_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_qp*, align 8
  %5 = alloca %struct.i40iw_puda_send_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %4, align 8
  store %struct.i40iw_puda_send_info* %1, %struct.i40iw_puda_send_info** %5, align 8
  %12 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 2
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %18 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 3, i32* %11, align 4
  store i64 5, i64* %7, align 8
  br label %23

22:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  store i64 10, i64* %7, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %24, i32 0, i32 0
  %26 = call i32* @i40iw_puda_get_next_send_wqe(%struct.TYPE_5__* %25, i64* %10)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %30, i32* %3, align 4
  br label %115

31:                                               ; preds = %23
  %32 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %33 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %36 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %34, i64* %41, align 8
  %42 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %43 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 1
  %46 = load i32, i32* @I40IW_UDA_QPSQ_MACLEN, align 4
  %47 = call i32 @LS_64(i32 %45, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @I40IW_UDA_QPSQ_IPLEN, align 4
  %51 = call i32 @LS_64(i32 %49, i32 %50)
  %52 = or i32 %47, %51
  %53 = load i32, i32* @I40IW_UDA_QPSQ_L4T, align 4
  %54 = call i32 @LS_64(i32 1, i32 %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @I40IW_UDA_QPSQ_IIPT, align 4
  %58 = call i32 @LS_64(i32 %56, i32 %57)
  %59 = or i32 %55, %58
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @I40IW_UDA_QPSQ_L4LEN, align 4
  %63 = call i32 @LS_64(i32 %61, i32 %62)
  %64 = or i32 %59, %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @I40IW_OP_TYPE_SEND, align 4
  %67 = load i32, i32* @I40IW_UDA_QPSQ_OPCODE, align 4
  %68 = call i32 @LS_64(i32 %66, i32 %67)
  %69 = load i32, i32* @I40IW_UDA_QPSQ_SIGCOMPL, align 4
  %70 = call i32 @LS_64(i32 1, i32 %69)
  %71 = or i32 %68, %70
  %72 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %73 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @I40IW_UDA_QPSQ_DOLOOPBACK, align 4
  %76 = call i32 @LS_64(i32 %74, i32 %75)
  %77 = or i32 %71, %76
  %78 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %79 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40IW_UDA_QPSQ_VALID, align 4
  %83 = call i32 @LS_64(i32 %81, i32 %82)
  %84 = or i32 %77, %83
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %88 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @set_64bit_val(i32* %86, i32 0, i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.i40iw_puda_send_info*, %struct.i40iw_puda_send_info** %5, align 8
  %93 = getelementptr inbounds %struct.i40iw_puda_send_info, %struct.i40iw_puda_send_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @I40IWQPSQ_FRAG_LEN, align 4
  %96 = call i32 @LS_64(i32 %94, i32 %95)
  %97 = call i32 @set_64bit_val(i32* %91, i32 8, i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @set_64bit_val(i32* %98, i32 16, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @i40iw_insert_wqe_hdr(i32* %102, i32 %104)
  %106 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %107 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @I40IW_DEBUG_PUDA, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @i40iw_debug_buf(i32 %108, i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %110, i32 32)
  %112 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %113 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %112, i32 0, i32 0
  %114 = call i32 @i40iw_qp_post_wr(%struct.TYPE_5__* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %31, %29
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32* @i40iw_puda_get_next_send_wqe(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
