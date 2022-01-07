; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_feature_abort_reason.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_feature_abort_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32* }

@CEC_MSG_FEATURE_ABORT = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_UNREGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, %struct.cec_msg*, i32)* @cec_feature_abort_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_feature_abort_reason(%struct.cec_adapter* %0, %struct.cec_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca %struct.cec_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store %struct.cec_msg* %1, %struct.cec_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = bitcast %struct.cec_msg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.cec_msg*, %struct.cec_msg** %6, align 8
  %11 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CEC_MSG_FEATURE_ABORT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.cec_msg*, %struct.cec_msg** %6, align 8
  %20 = call i64 @cec_msg_initiator(%struct.cec_msg* %19)
  %21 = load i64, i64* @CEC_LOG_ADDR_UNREGISTERED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.cec_msg*, %struct.cec_msg** %6, align 8
  %26 = call i32 @cec_msg_set_reply_to(%struct.cec_msg* %8, %struct.cec_msg* %25)
  %27 = load %struct.cec_msg*, %struct.cec_msg** %6, align 8
  %28 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cec_msg_feature_abort(%struct.cec_msg* %8, i32 %31, i32 %32)
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %35 = call i32 @cec_transmit_msg(%struct.cec_adapter* %34, %struct.cec_msg* %8, i32 0)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %23, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @cec_msg_initiator(%struct.cec_msg*) #2

declare dso_local i32 @cec_msg_set_reply_to(%struct.cec_msg*, %struct.cec_msg*) #2

declare dso_local i32 @cec_msg_feature_abort(%struct.cec_msg*, i32, i32) #2

declare dso_local i32 @cec_transmit_msg(%struct.cec_adapter*, %struct.cec_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
