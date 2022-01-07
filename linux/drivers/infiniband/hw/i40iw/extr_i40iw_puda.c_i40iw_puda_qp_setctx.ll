; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_qp_setctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_qp_setctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_rsrc = type { i64, i64, i32, %struct.i40iw_sc_qp }
%struct.i40iw_sc_qp = type { i32, i32, i64, i64, i64, i64, i64, i32* }

@I40IWQPC_RQSIZE = common dso_local global i32 0, align 4
@I40IWQPC_SQSIZE = common dso_local global i32 0, align 4
@I40IW_UDA_QPC_MAXFRAMESIZE = common dso_local global i32 0, align 4
@I40IWQPC_TXCQNUM = common dso_local global i32 0, align 4
@I40IWQPC_RXCQNUM = common dso_local global i32 0, align 4
@I40IWQPC_PRIVEN = common dso_local global i32 0, align 4
@I40IWQPC_QPCOMPCTX = common dso_local global i32 0, align 4
@I40IWQPC_SQTPHVAL = common dso_local global i32 0, align 4
@I40IWQPC_RQTPHVAL = common dso_local global i32 0, align 4
@I40IWQPC_QSHANDLE = common dso_local global i32 0, align 4
@I40IW_DEBUG_PUDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PUDA QP CONTEXT\00", align 1
@I40IW_QP_CTX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_puda_rsrc*)* @i40iw_puda_qp_setctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_puda_qp_setctx(%struct.i40iw_puda_rsrc* %0) #0 {
  %2 = alloca %struct.i40iw_puda_rsrc*, align 8
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca i32*, align 8
  store %struct.i40iw_puda_rsrc* %0, %struct.i40iw_puda_rsrc** %2, align 8
  %5 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %5, i32 0, i32 3
  store %struct.i40iw_sc_qp* %6, %struct.i40iw_sc_qp** %3, align 8
  %7 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %7, i32 0, i32 7
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @set_64bit_val(i32* %10, i32 8, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_64bit_val(i32* %15, i32 16, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @I40IWQPC_RQSIZE, align 4
  %25 = call i32 @LS_64(i64 %23, i32 %24)
  %26 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %27 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @I40IWQPC_SQSIZE, align 4
  %30 = call i32 @LS_64(i64 %28, i32 %29)
  %31 = or i32 %25, %30
  %32 = call i32 @set_64bit_val(i32* %20, i32 24, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %2, align 8
  %35 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @I40IW_UDA_QPC_MAXFRAMESIZE, align 4
  %38 = call i32 @LS_64(i64 %36, i32 %37)
  %39 = call i32 @set_64bit_val(i32* %33, i32 48, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @set_64bit_val(i32* %40, i32 56, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @set_64bit_val(i32* %42, i32 64, i32 1)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %2, align 8
  %46 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @I40IWQPC_TXCQNUM, align 4
  %49 = call i32 @LS_64(i64 %47, i32 %48)
  %50 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %2, align 8
  %51 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @I40IWQPC_RXCQNUM, align 4
  %54 = call i32 @LS_64(i64 %52, i32 %53)
  %55 = or i32 %49, %54
  %56 = call i32 @set_64bit_val(i32* %44, i32 136, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @I40IWQPC_PRIVEN, align 4
  %59 = call i32 @LS_64(i64 1, i32 %58)
  %60 = call i32 @set_64bit_val(i32* %57, i32 160, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %63 = ptrtoint %struct.i40iw_sc_qp* %62 to i64
  %64 = load i32, i32* @I40IWQPC_QPCOMPCTX, align 4
  %65 = call i32 @LS_64(i64 %63, i32 %64)
  %66 = call i32 @set_64bit_val(i32* %61, i32 168, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %69 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @I40IWQPC_SQTPHVAL, align 4
  %72 = call i32 @LS_64(i64 %70, i32 %71)
  %73 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @I40IWQPC_RQTPHVAL, align 4
  %77 = call i32 @LS_64(i64 %75, i32 %76)
  %78 = or i32 %72, %77
  %79 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %80 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @I40IWQPC_QSHANDLE, align 4
  %83 = call i32 @LS_64(i64 %81, i32 %82)
  %84 = or i32 %78, %83
  %85 = call i32 @set_64bit_val(i32* %67, i32 176, i32 %84)
  %86 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %2, align 8
  %87 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @I40IW_DEBUG_PUDA, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @I40IW_QP_CTX_SIZE, align 4
  %92 = call i32 @i40iw_debug_buf(i32 %88, i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %90, i32 %91)
  ret void
}

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i64, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
