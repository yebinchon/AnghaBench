; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_rem_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_rem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.i40iw_qp = type { i32, i32, %struct.TYPE_5__, i32, %struct.i40iw_device* }
%struct.TYPE_5__ = type { i64 }
%struct.i40iw_device = type { i32, i32, i32** }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info, i8*, i32 }
%struct.cqp_commands_info = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32* }

@i40iw_free_qp = common dso_local global i32 0, align 4
@OP_QP_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_rem_ref(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.i40iw_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_cqp_request*, align 8
  %6 = alloca %struct.cqp_commands_info*, align 8
  %7 = alloca %struct.i40iw_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %11 = call %struct.i40iw_qp* @to_iwqp(%struct.ib_qp* %10)
  store %struct.i40iw_qp* %11, %struct.i40iw_qp** %3, align 8
  %12 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %12, i32 0, i32 4
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %13, align 8
  store %struct.i40iw_device* %14, %struct.i40iw_device** %7, align 8
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %20 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %19, i32 0, i32 3
  %21 = call i32 @atomic_dec_and_test(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 1
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %101

28:                                               ; preds = %1
  %29 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %30 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* null, i32** %37, align 8
  %38 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %39 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %43 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %42, i32 0, i32 0
  %44 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %43, i32 0)
  store %struct.i40iw_cqp_request* %44, %struct.i40iw_cqp_request** %5, align 8
  %45 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %46 = icmp ne %struct.i40iw_cqp_request* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %28
  br label %101

48:                                               ; preds = %28
  %49 = load i32, i32* @i40iw_free_qp, align 4
  %50 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %51 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %53 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %52, i32 0, i32 1
  %54 = bitcast i32* %53 to i8*
  %55 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %56 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %58 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %57, i32 0, i32 0
  store %struct.cqp_commands_info* %58, %struct.cqp_commands_info** %6, align 8
  %59 = load i32, i32* @OP_QP_DESTROY, align 4
  %60 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %61 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %63 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %65 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %64, i32 0, i32 1
  %66 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %67 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32* %65, i32** %70, align 8
  %71 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %72 = ptrtoint %struct.i40iw_cqp_request* %71 to i64
  %73 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %74 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  %78 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %79 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  %83 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %84 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %85 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %83, %struct.i40iw_cqp_request* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %48
  br label %101

89:                                               ; preds = %48
  %90 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %91 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %94 = call i32 @i40iw_rem_pdusecount(i32 %92, %struct.i40iw_device* %93)
  %95 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %96 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @i40iw_free_qp_resources(%struct.i40iw_device* %95, %struct.i40iw_qp* %96, i64 %97)
  %99 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %100 = call i32 @i40iw_rem_devusecount(%struct.i40iw_device* %99)
  br label %101

101:                                              ; preds = %89, %88, %47, %23
  ret void
}

declare dso_local %struct.i40iw_qp* @to_iwqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_rem_pdusecount(i32, %struct.i40iw_device*) #1

declare dso_local i32 @i40iw_free_qp_resources(%struct.i40iw_device*, %struct.i40iw_qp*, i64) #1

declare dso_local i32 @i40iw_rem_devusecount(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
