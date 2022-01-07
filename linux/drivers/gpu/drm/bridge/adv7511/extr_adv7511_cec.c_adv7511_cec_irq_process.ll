; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32, i32 }
%struct.cec_msg = type { i32, i32* }

@ADV7533 = common dso_local global i64 0, align 8
@ADV7533_REG_CEC_OFFSET = common dso_local global i32 0, align 4
@ADV7511_INT1_CEC_TX_READY = common dso_local global i32 0, align 4
@ADV7511_INT1_CEC_TX_ARBIT_LOST = common dso_local global i32 0, align 4
@ADV7511_INT1_CEC_TX_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@ADV7511_INT1_CEC_RX_READY1 = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_RX_FRAME_LEN = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_RX_FRAME_HDR = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_RX_BUFFERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv7511_cec_irq_process(%struct.adv7511* %0, i32 %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cec_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %12 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ADV7533, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ADV7533_REG_CEC_OFFSET, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @ADV7511_INT1_CEC_TX_READY, align 4
  %22 = load i32, i32* @ADV7511_INT1_CEC_TX_ARBIT_LOST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ADV7511_INT1_CEC_TX_RETRY_TIMEOUT, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = bitcast %struct.cec_msg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 16, i1 false)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @adv_cec_tx_raw_status(%struct.adv7511* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %19
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ADV7511_INT1_CEC_RX_READY1, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %113

41:                                               ; preds = %35
  %42 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %43 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @ADV7511_REG_CEC_RX_FRAME_LEN, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i64 @regmap_read(i32 %44, i64 %48, i32* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %113

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 31
  %55 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ugt i32 %57, 16
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  store i32 16, i32* %60, align 8
  br label %61

61:                                               ; preds = %59, %52
  %62 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %113

66:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %75 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @ADV7511_REG_CEC_RX_FRAME_HDR, align 8
  %79 = add i64 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = add i64 %79, %81
  %83 = call i64 @regmap_read(i32 %76, i64 %82, i32* %9)
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %73
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %67

92:                                               ; preds = %67
  %93 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %94 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @ADV7511_REG_CEC_RX_BUFFERS, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @regmap_write(i32 %95, i64 %99, i32 1)
  %101 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %102 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* @ADV7511_REG_CEC_RX_BUFFERS, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = call i32 @regmap_write(i32 %103, i64 %107, i32 0)
  %109 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %110 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @cec_received_msg(i32 %111, %struct.cec_msg* %7)
  br label %113

113:                                              ; preds = %92, %65, %51, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @adv_cec_tx_raw_status(%struct.adv7511*, i32) #2

declare dso_local i64 @regmap_read(i32, i64, i32*) #2

declare dso_local i32 @regmap_write(i32, i64, i32) #2

declare dso_local i32 @cec_received_msg(i32, %struct.cec_msg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
