; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv_cec_tx_raw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv_cec_tx_raw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@ADV7533_REG_CEC_OFFSET = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_TX_ENABLE = common dso_local global i64 0, align 8
@ADV7511_INT1_CEC_TX_ARBIT_LOST = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i32 0, align 4
@ADV7511_INT1_CEC_TX_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_TX_LOW_DRV_CNT = common dso_local global i64 0, align 8
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_LOW_DRIVE = common dso_local global i32 0, align 4
@ADV7511_INT1_CEC_TX_READY = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*, i32)* @adv_cec_tx_raw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv_cec_tx_raw_status(%struct.adv7511* %0, i32 %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %13 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADV7533, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ADV7533_REG_CEC_OFFSET, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %5, align 4
  %22 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %23 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @ADV7511_REG_CEC_TX_ENABLE, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i64 @regmap_read(i32 %24, i64 %28, i32* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %107

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %107

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ADV7511_INT1_CEC_TX_ARBIT_LOST, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %44 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CEC_TX_STATUS_ARB_LOST, align 4
  %47 = call i32 @cec_transmit_attempt_done(i32 %45, i32 %46)
  br label %107

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ADV7511_INT1_CEC_TX_RETRY_TIMEOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %56 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @ADV7511_REG_CEC_TX_LOW_DRV_CNT, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i64 @regmap_read(i32 %57, i64 %61, i32* %11)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %65 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %87

68:                                               ; preds = %53
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %11, align 4
  %79 = lshr i32 %78, 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @CEC_TX_STATUS_LOW_DRIVE, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %77
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %89 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @cec_transmit_done(i32 %90, i32 %91, i32 0, i32 %92, i32 %93, i32 %94)
  br label %107

96:                                               ; preds = %48
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @ADV7511_INT1_CEC_TX_READY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %103 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %106 = call i32 @cec_transmit_attempt_done(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %31, %36, %42, %87, %101, %96
  ret void
}

declare dso_local i64 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @cec_transmit_attempt_done(i32, i32) #1

declare dso_local i32 @cec_transmit_done(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
