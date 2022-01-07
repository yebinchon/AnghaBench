; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_nop_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_nop_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@I40IW_ERR_PARAM = common dso_local global i32 0, align 4
@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@I40IWQP_OP_NOP = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@nop_signature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*)* @i40iw_nop_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_nop_1(%struct.i40iw_qp_uk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_qp_uk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %3, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @I40IW_ERR_PARAM, align 4
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_6__* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @I40IW_RING_GETCURRENT_HEAD(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %24 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  %30 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %31 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %32 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %30, i32* %36, align 4
  %37 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %38 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %43 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %41, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  %48 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %49 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %17
  %58 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %59 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %65 = call i32 @LS_64(i32 %63, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %65, i32* %67, align 4
  br label %76

68:                                               ; preds = %17
  %69 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %70 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %73 = call i32 @LS_64(i32 %71, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %57
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @set_64bit_val(i32* %77, i32 0, i32 0)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @set_64bit_val(i32* %79, i32 8, i32 0)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @set_64bit_val(i32* %81, i32 16, i32 0)
  %83 = load i32, i32* @I40IWQP_OP_NOP, align 4
  %84 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %85 = call i32 @LS_64(i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %88 = call i32 @LS_64(i32 %86, i32 %87)
  %89 = or i32 %85, %88
  %90 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %91 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %94 = call i32 @LS_64(i32 %92, i32 %93)
  %95 = or i32 %89, %94
  %96 = load i32, i32* @nop_signature, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @nop_signature, align 4
  %98 = or i32 %95, %96
  store i32 %98, i32* %4, align 4
  %99 = call i32 (...) @wmb()
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @set_64bit_val(i32* %100, i32 24, i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %76, %15
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @I40IW_RING_GETCURRENT_HEAD(i64) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
