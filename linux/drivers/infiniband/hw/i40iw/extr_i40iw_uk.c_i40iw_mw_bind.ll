; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_mw_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_mw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40iw_bind_window }
%struct.i40iw_bind_window = type { i32, i32, i64, i32, i32, i64, i64 }

@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_PARENTMRSTAG = common dso_local global i32 0, align 4
@I40IWQPSQ_MWSTAG = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_BIND_MW = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_STAGRIGHTS = common dso_local global i32 0, align 4
@I40IW_ADDR_TYPE_VA_BASED = common dso_local global i64 0, align 8
@I40IWQPSQ_VABASEDTO = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i32)* @i40iw_mw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_mw_bind(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_qp_uk*, align 8
  %6 = alloca %struct.i40iw_post_sq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.i40iw_bind_window*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %5, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.i40iw_bind_window* %15, %struct.i40iw_bind_window** %9, align 8
  %16 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %17 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %12, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %12, align 4
  %21 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %22 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %23 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %24 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %21, i32* %11, i32 %22, i32 0, i32 %25)
  store i64* %26, i64** %8, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %30, i32* %4, align 4
  br label %112

31:                                               ; preds = %3
  %32 = load i64*, i64** %8, align 8
  %33 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %34 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @set_64bit_val(i64* %32, i32 0, i64 %35)
  %37 = load i64*, i64** %8, align 8
  %38 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %39 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I40IWQPSQ_PARENTMRSTAG, align 4
  %42 = call i64 @LS_64(i32 %40, i32 %41)
  %43 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %44 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I40IWQPSQ_MWSTAG, align 4
  %47 = call i64 @LS_64(i32 %45, i32 %46)
  %48 = or i64 %42, %47
  %49 = call i32 @set_64bit_val(i64* %37, i32 8, i64 %48)
  %50 = load i64*, i64** %8, align 8
  %51 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %52 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @set_64bit_val(i64* %50, i32 16, i64 %53)
  %55 = load i32, i32* @I40IW_OP_TYPE_BIND_MW, align 4
  %56 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %57 = call i64 @LS_64(i32 %55, i32 %56)
  %58 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %59 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 2
  %62 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %63 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 3
  %66 = or i32 %61, %65
  %67 = load i32, i32* @I40IWQPSQ_STAGRIGHTS, align 4
  %68 = call i64 @LS_64(i32 %66, i32 %67)
  %69 = or i64 %57, %68
  %70 = load %struct.i40iw_bind_window*, %struct.i40iw_bind_window** %9, align 8
  %71 = getelementptr inbounds %struct.i40iw_bind_window, %struct.i40iw_bind_window* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @I40IW_ADDR_TYPE_VA_BASED, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load i32, i32* @I40IWQPSQ_VABASEDTO, align 4
  %78 = call i64 @LS_64(i32 %76, i32 %77)
  %79 = or i64 %69, %78
  %80 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %81 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %84 = call i64 @LS_64(i32 %82, i32 %83)
  %85 = or i64 %79, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %88 = call i64 @LS_64(i32 %86, i32 %87)
  %89 = or i64 %85, %88
  %90 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %91 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %94 = call i64 @LS_64(i32 %92, i32 %93)
  %95 = or i64 %89, %94
  %96 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %97 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %100 = call i64 @LS_64(i32 %98, i32 %99)
  %101 = or i64 %95, %100
  store i64 %101, i64* %10, align 8
  %102 = call i32 (...) @wmb()
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @set_64bit_val(i64* %103, i32 24, i64 %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %31
  %109 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %110 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %109)
  br label %111

111:                                              ; preds = %108, %31
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %29
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_64bit_val(i64*, i32, i64) #1

declare dso_local i64 @LS_64(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
