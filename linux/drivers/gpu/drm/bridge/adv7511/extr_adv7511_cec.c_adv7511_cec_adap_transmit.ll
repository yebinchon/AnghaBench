; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }
%struct.adv7511 = type { i64, i32, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@ADV7533_REG_CEC_OFFSET = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_TX_RETRY = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_TX_FRAME_HDR = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_TX_FRAME_LEN = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_TX_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @adv7511_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.adv7511*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %14 = call %struct.adv7511* @cec_get_drvdata(%struct.cec_adapter* %13)
  store %struct.adv7511* %14, %struct.adv7511** %9, align 8
  %15 = load %struct.adv7511*, %struct.adv7511** %9, align 8
  %16 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADV7533, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ADV7533_REG_CEC_OFFSET, align 4
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %10, align 4
  %25 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %26 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.adv7511*, %struct.adv7511** %9, align 8
  %29 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @ADV7511_REG_CEC_TX_RETRY, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = sub i32 %35, 1
  %37 = call i32 @max(i32 1, i32 %36)
  %38 = shl i32 %37, 4
  %39 = call i32 @regmap_update_bits(i32 %30, i64 %34, i32 112, i32 %38)
  %40 = load %struct.adv7511*, %struct.adv7511** %9, align 8
  %41 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ADV7511_REG_INT(i32 1)
  %44 = call i32 @regmap_update_bits(i32 %42, i64 %43, i32 56, i32 56)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %68, %23
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.adv7511*, %struct.adv7511** %9, align 8
  %51 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @ADV7511_REG_CEC_TX_FRAME_HDR, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %61 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_write(i32 %52, i64 %59, i32 %66)
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.adv7511*, %struct.adv7511** %9, align 8
  %73 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @ADV7511_REG_CEC_TX_FRAME_LEN, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @regmap_write(i32 %74, i64 %78, i32 %79)
  %81 = load %struct.adv7511*, %struct.adv7511** %9, align 8
  %82 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* @ADV7511_REG_CEC_TX_ENABLE, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = call i32 @regmap_write(i32 %83, i64 %87, i32 1)
  ret i32 0
}

declare dso_local %struct.adv7511* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @ADV7511_REG_INT(i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
