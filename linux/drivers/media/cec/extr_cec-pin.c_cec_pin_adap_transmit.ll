; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i64, i64, i64, %struct.cec_msg, i64, i64 }
%struct.cec_msg = type { i32 }

@CEC_ST_IDLE = common dso_local global i64 0, align 8
@CEC_SIGNAL_FREE_TIME_NEW_INITIATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i64, %struct.cec_msg*)* @cec_pin_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_pin_adap_transmit(%struct.cec_adapter* %0, i32 %1, i64 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.cec_pin*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %10 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %10, i32 0, i32 0
  %12 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  store %struct.cec_pin* %12, %struct.cec_pin** %9, align 8
  %13 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %14 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CEC_ST_IDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @CEC_SIGNAL_FREE_TIME_NEW_INITIATOR, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @CEC_SIGNAL_FREE_TIME_NEW_INITIATOR, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %18, %4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %27 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %26, i32 0, i32 5
  store i64 %25, i64* %27, align 8
  %28 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %29 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %31 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %30, i32 0, i32 3
  %32 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %33 = bitcast %struct.cec_msg* %31 to i8*
  %34 = bitcast %struct.cec_msg* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %36 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %41 = call i64 @tx_add_bytes(%struct.cec_pin* %40)
  %42 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %43 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %46 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %51 = call i64 @tx_remove_byte(%struct.cec_pin* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %55 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %49, %44
  %60 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %61 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %63 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.cec_pin*, %struct.cec_pin** %9, align 8
  %65 = call i32 @cec_pin_start_timer(%struct.cec_pin* %64)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @tx_add_bytes(%struct.cec_pin*) #2

declare dso_local i64 @tx_remove_byte(%struct.cec_pin*) #2

declare dso_local i32 @cec_pin_start_timer(%struct.cec_pin*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
