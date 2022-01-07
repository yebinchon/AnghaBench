; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.adv7511 = type { i64, i32, i64, i32, i32, i32* }

@ADV7533 = common dso_local global i64 0, align 8
@ADV7533_REG_CEC_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_CLK_DIV = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_RX_BUFFERS = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_TX_ENABLE = common dso_local global i64 0, align 8
@ADV7511_INT1_CEC_MASK = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_LOG_ADDR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @adv7511_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv7511*, align 8
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = call %struct.adv7511* @cec_get_drvdata(%struct.cec_adapter* %8)
  store %struct.adv7511* %9, %struct.adv7511** %6, align 8
  %10 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %11 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ADV7533, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ADV7533_REG_CEC_OFFSET, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %21 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %18
  %28 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %29 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  %36 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %37 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @ADV7511_REG_CEC_CLK_DIV, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @regmap_update_bits(i32 %38, i64 %42, i32 3, i32 1)
  %44 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %45 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @ADV7511_REG_CEC_RX_BUFFERS, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @regmap_write(i32 %46, i64 %50, i32 7)
  %52 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %53 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @ADV7511_REG_CEC_RX_BUFFERS, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @regmap_write(i32 %54, i64 %58, i32 0)
  %60 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %61 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* @ADV7511_REG_CEC_TX_ENABLE, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @regmap_update_bits(i32 %62, i64 %66, i32 1, i32 0)
  %68 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %69 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ADV7511_REG_INT_ENABLE(i32 1)
  %72 = load i32, i32* @ADV7511_INT1_CEC_MASK, align 4
  %73 = call i32 @regmap_update_bits(i32 %70, i64 %71, i32 63, i32 %72)
  br label %107

74:                                               ; preds = %32, %27
  %75 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %76 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %79
  %83 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %84 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ADV7511_REG_INT_ENABLE(i32 1)
  %87 = call i32 @regmap_update_bits(i32 %85, i64 %86, i32 63, i32 0)
  %88 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %89 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* @ADV7511_REG_CEC_LOG_ADDR_MASK, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = call i32 @regmap_update_bits(i32 %90, i64 %94, i32 112, i32 0)
  %96 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %97 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* @ADV7511_REG_CEC_CLK_DIV, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = call i32 @regmap_update_bits(i32 %98, i64 %102, i32 3, i32 0)
  %104 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %105 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %82, %79, %74
  br label %107

107:                                              ; preds = %106, %35
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %110 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.adv7511* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @ADV7511_REG_INT_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
