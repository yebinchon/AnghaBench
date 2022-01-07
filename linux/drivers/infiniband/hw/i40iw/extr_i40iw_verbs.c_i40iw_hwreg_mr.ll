; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_hwreg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_hwreg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32 }
%struct.i40iw_mr = type { i32, i32*, i32, i32, %struct.TYPE_9__, %struct.i40iw_pbl }
%struct.TYPE_9__ = type { i32 }
%struct.i40iw_pbl = type { i64, i64, %struct.i40iw_pble_alloc }
%struct.i40iw_pble_alloc = type { i64, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.i40iw_reg_ns_stag_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.i40iw_pd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32*, %struct.i40iw_reg_ns_stag_info }

@ENOMEM = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_IDX_SHIFT = common dso_local global i32 0, align 4
@I40IW_ADDR_TYPE_VA_BASED = common dso_local global i32 0, align 4
@I40IW_LEVEL_1 = common dso_local global i64 0, align 8
@OP_MR_REG_NON_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CQP-OP MR Reg fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_mr*, i32)* @i40iw_hwreg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_hwreg_mr(%struct.i40iw_device* %0, %struct.i40iw_mr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_pbl*, align 8
  %9 = alloca %struct.i40iw_reg_ns_stag_info*, align 8
  %10 = alloca %struct.i40iw_pd*, align 8
  %11 = alloca %struct.i40iw_pble_alloc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40iw_cqp_request*, align 8
  %15 = alloca %struct.cqp_commands_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store %struct.i40iw_mr* %1, %struct.i40iw_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %17 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %16, i32 0, i32 5
  store %struct.i40iw_pbl* %17, %struct.i40iw_pbl** %8, align 8
  %18 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.i40iw_pd* @to_iwpd(i32 %21)
  store %struct.i40iw_pd* %22, %struct.i40iw_pd** %10, align 8
  %23 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %24 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %23, i32 0, i32 2
  store %struct.i40iw_pble_alloc* %24, %struct.i40iw_pble_alloc** %11, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %25, i32 0, i32 1
  %27 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %26, i32 1)
  store %struct.i40iw_cqp_request* %27, %struct.i40iw_cqp_request** %14, align 8
  %28 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %14, align 8
  %29 = icmp ne %struct.i40iw_cqp_request* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %153

33:                                               ; preds = %3
  %34 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %14, align 8
  %35 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %34, i32 0, i32 0
  store %struct.cqp_commands_info* %35, %struct.cqp_commands_info** %15, align 8
  %36 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %15, align 8
  %37 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  store %struct.i40iw_reg_ns_stag_info* %40, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %41 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %42 = call i32 @memset(%struct.i40iw_reg_ns_stag_info* %41, i32 0, i32 56)
  %43 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %44 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %48 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %50 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @I40IW_CQPSQ_STAG_IDX_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %55 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %57 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %61 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %60, i32 0, i32 9
  store i64 %59, i64* %61, align 8
  %62 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %63 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %66 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %69 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.i40iw_pd*, %struct.i40iw_pd** %10, align 8
  %71 = getelementptr inbounds %struct.i40iw_pd, %struct.i40iw_pd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %75 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @I40IW_ADDR_TYPE_VA_BASED, align 4
  %77 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %78 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %80 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %83 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %85 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %33
  %89 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %11, align 8
  %90 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @I40IW_LEVEL_1, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %11, align 8
  %96 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %100 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %102 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %113

103:                                              ; preds = %88
  %104 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %11, align 8
  %105 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %110 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %112 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %111, i32 0, i32 1
  store i32 3, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %94
  br label %122

114:                                              ; preds = %33
  %115 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %116 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %9, align 8
  %121 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %114, %113
  %123 = load i32, i32* @OP_MR_REG_NON_SHARED, align 4
  %124 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %15, align 8
  %125 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %15, align 8
  %127 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %129 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %128, i32 0, i32 0
  %130 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %15, align 8
  %131 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  store i32* %129, i32** %134, align 8
  %135 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %14, align 8
  %136 = ptrtoint %struct.i40iw_cqp_request* %135 to i64
  %137 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %15, align 8
  %138 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  store i64 %136, i64* %141, align 8
  %142 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %143 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %14, align 8
  %144 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %142, %struct.i40iw_cqp_request* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %122
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %13, align 4
  %150 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %122
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %30
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.i40iw_pd* @to_iwpd(i32) #1

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @memset(%struct.i40iw_reg_ns_stag_info*, i32, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
