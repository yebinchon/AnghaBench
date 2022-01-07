; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_hw_alloc_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_hw_alloc_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32 }
%struct.i40iw_mr = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40iw_allocate_stag_info = type { i32, i32, i32, i32, i32 }
%struct.i40iw_pd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32*, %struct.i40iw_allocate_stag_info }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_IDX_SHIFT = common dso_local global i32 0, align 4
@OP_ALLOC_STAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CQP-OP MR Reg fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_mr*)* @i40iw_hw_alloc_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_hw_alloc_stag(%struct.i40iw_device* %0, %struct.i40iw_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_mr*, align 8
  %6 = alloca %struct.i40iw_allocate_stag_info*, align 8
  %7 = alloca %struct.i40iw_pd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_cqp_request*, align 8
  %11 = alloca %struct.cqp_commands_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40iw_mr* %1, %struct.i40iw_mr** %5, align 8
  %12 = load %struct.i40iw_mr*, %struct.i40iw_mr** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.i40iw_pd* @to_iwpd(i32 %15)
  store %struct.i40iw_pd* %16, %struct.i40iw_pd** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %17, i32 0, i32 1
  %19 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %18, i32 1)
  store %struct.i40iw_cqp_request* %19, %struct.i40iw_cqp_request** %10, align 8
  %20 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %21 = icmp ne %struct.i40iw_cqp_request* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %27 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %26, i32 0, i32 0
  store %struct.cqp_commands_info* %27, %struct.cqp_commands_info** %11, align 8
  %28 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %29 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store %struct.i40iw_allocate_stag_info* %32, %struct.i40iw_allocate_stag_info** %6, align 8
  %33 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %6, align 8
  %34 = call i32 @memset(%struct.i40iw_allocate_stag_info* %33, i32 0, i32 20)
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %6, align 8
  %37 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i40iw_mr*, %struct.i40iw_mr** %5, align 8
  %39 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I40IW_CQPSQ_STAG_IDX_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %6, align 8
  %44 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.i40iw_pd*, %struct.i40iw_pd** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_pd, %struct.i40iw_pd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %6, align 8
  %50 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i40iw_mr*, %struct.i40iw_mr** %5, align 8
  %52 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %6, align 8
  %55 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %6, align 8
  %57 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @OP_ALLOC_STAG, align 4
  %59 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %60 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %62 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %64 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %63, i32 0, i32 0
  %65 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %66 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32* %64, i32** %69, align 8
  %70 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %71 = ptrtoint %struct.i40iw_cqp_request* %70 to i64
  %72 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %73 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i64 %71, i64* %76, align 8
  %77 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %78 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %79 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %77, %struct.i40iw_cqp_request* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %25
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  %85 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %25
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.i40iw_pd* @to_iwpd(i32) #1

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @memset(%struct.i40iw_allocate_stag_info*, i32, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
