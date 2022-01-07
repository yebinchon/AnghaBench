; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_mr_reg_shared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_mr_reg_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.i40iw_register_shared_stag = type { i32, i64, i32, i32, i32, i32, i64 }

@I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY = common dso_local global i32 0, align 4
@I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_ADDR_TYPE_VA_BASED = common dso_local global i64 0, align 8
@I40IW_CQPSQ_STAG_PDID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_KEY = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_IDX = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_PARENTSTAGIDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_REG_SMR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_MR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_ARIGHTS = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_REMACCENABLED = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_VABASEDTO = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MR_REG_SHARED WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_register_shared_stag*, i32, i32)* @i40iw_sc_mr_reg_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_mr_reg_shared(%struct.i40iw_sc_dev* %0, %struct.i40iw_register_shared_stag* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca %struct.i40iw_register_shared_stag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_sc_cqp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store %struct.i40iw_register_shared_stag* %1, %struct.i40iw_register_shared_stag** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %20 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY, align 4
  %23 = load i32, i32* @I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %29

28:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %30, i32 0, i32 0
  %32 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %31, align 8
  store %struct.i40iw_sc_cqp* %32, %struct.i40iw_sc_cqp** %11, align 8
  %33 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %33, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %39, i32* %5, align 4
  br label %140

40:                                               ; preds = %29
  %41 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %42 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = and i32 %46, 4095
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %50 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @I40IW_ADDR_TYPE_VA_BASED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %56 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  br label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i64 [ %57, %54 ], [ %60, %58 ]
  %63 = trunc i64 %62 to i32
  %64 = call i32 @set_64bit_val(i32* %48, i32 0, i32 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %67 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @I40IW_CQPSQ_STAG_PDID, align 4
  %70 = call i32 @LS_64(i32 %68, i32 %69)
  %71 = call i32 @set_64bit_val(i32* %65, i32 8, i32 %70)
  %72 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I40IW_CQPSQ_STAG_KEY, align 4
  %76 = call i32 @LS_64(i32 %74, i32 %75)
  %77 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %78 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I40IW_CQPSQ_STAG_IDX, align 4
  %81 = call i32 @LS_64(i32 %79, i32 %80)
  %82 = or i32 %76, %81
  %83 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %84 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @I40IW_CQPSQ_STAG_PARENTSTAGIDX, align 4
  %87 = call i32 @LS_64(i32 %85, i32 %86)
  %88 = or i32 %82, %87
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @set_64bit_val(i32* %89, i32 16, i32 %90)
  %92 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %93 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @I40IW_ADDR_TYPE_VA_BASED, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* @I40IW_CQP_OP_REG_SMR, align 4
  %100 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %101 = call i32 @LS_64(i32 %99, i32 %100)
  %102 = load i32, i32* @I40IW_CQPSQ_STAG_MR, align 4
  %103 = call i32 @LS_64(i32 1, i32 %102)
  %104 = or i32 %101, %103
  %105 = load %struct.i40iw_register_shared_stag*, %struct.i40iw_register_shared_stag** %7, align 8
  %106 = getelementptr inbounds %struct.i40iw_register_shared_stag, %struct.i40iw_register_shared_stag* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @I40IW_CQPSQ_STAG_ARIGHTS, align 4
  %109 = call i32 @LS_64(i32 %107, i32 %108)
  %110 = or i32 %104, %109
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @I40IW_CQPSQ_STAG_REMACCENABLED, align 4
  %113 = call i32 @LS_64(i32 %111, i32 %112)
  %114 = or i32 %110, %113
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @I40IW_CQPSQ_STAG_VABASEDTO, align 4
  %117 = call i32 @LS_64(i32 %115, i32 %116)
  %118 = or i32 %114, %117
  %119 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %120 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %123 = call i32 @LS_64(i32 %121, i32 %122)
  %124 = or i32 %118, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @i40iw_insert_wqe_hdr(i32* %125, i32 %126)
  %128 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %129 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %132 = mul nsw i32 %131, 8
  %133 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %128, i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %130, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %61
  %137 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %138 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %137)
  br label %139

139:                                              ; preds = %136, %61
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %38
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(%struct.i40iw_sc_dev*, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
