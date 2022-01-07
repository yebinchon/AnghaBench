; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adv7511 = type { i64, i32, i32, i32*, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@ADV7533_REG_CEC_OFFSET = common dso_local global i32 0, align 4
@adv7511_cec_adap_ops = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@ADV7511_MAX_ADDRS = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_CTRL = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_SOFT_RESET = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_RX_BUFFERS = common dso_local global i64 0, align 8
@ADV7511_REG_CEC_CLK_DIV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Initializing CEC failed with error %d, disabling CEC\0A\00", align 1
@ADV7511_CEC_CTRL_POWER_DOWN = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv7511_cec_init(%struct.device* %0, %struct.adv7511* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adv7511*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.adv7511* %1, %struct.adv7511** %5, align 8
  %8 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %9 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ADV7533, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ADV7533_REG_CEC_OFFSET, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %20 = call i32 @adv7511_cec_parse_dt(%struct.device* %18, %struct.adv7511* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %110

24:                                               ; preds = %16
  %25 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_name(%struct.device* %26)
  %28 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %29 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  %30 = call i32* @cec_allocate_adapter(i32* @adv7511_cec_adap_ops, %struct.adv7511* %25, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %32 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %34 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %40 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %7, align 4
  br label %106

43:                                               ; preds = %24
  %44 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %45 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @ADV7511_REG_CEC_CTRL, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @regmap_write(i32 %46, i64 %50, i32 0)
  %52 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %53 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @ADV7511_REG_CEC_SOFT_RESET, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @regmap_write(i32 %54, i64 %58, i32 1)
  %60 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %61 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* @ADV7511_REG_CEC_SOFT_RESET, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @regmap_write(i32 %62, i64 %66, i32 0)
  %68 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %69 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* @ADV7511_REG_CEC_RX_BUFFERS, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @regmap_write(i32 %70, i64 %74, i32 0)
  %76 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %77 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @ADV7511_REG_CEC_CLK_DIV, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %84 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %85, 750000
  %87 = sub nsw i32 %86, 1
  %88 = shl i32 %87, 2
  %89 = call i32 @regmap_write(i32 %78, i64 %82, i32 %88)
  %90 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %91 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @cec_register_adapter(i32* %92, %struct.device* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %43
  br label %99

98:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %129

99:                                               ; preds = %97
  %100 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %101 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @cec_delete_adapter(i32* %102)
  %104 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %105 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %99, %38
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @dev_info(%struct.device* %107, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %23
  %111 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %112 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @ADV7511_REG_CEC_CTRL, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load i32, i32* @ADV7511_CEC_CTRL_POWER_DOWN, align 4
  %119 = call i32 @regmap_write(i32 %113, i64 %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @EPROBE_DEFER, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = load i32, i32* %7, align 4
  br label %127

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %98
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @adv7511_cec_parse_dt(%struct.device*, %struct.adv7511*) #1

declare dso_local i32* @cec_allocate_adapter(i32*, %struct.adv7511*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @cec_register_adapter(i32*, %struct.device*) #1

declare dso_local i32 @cec_delete_adapter(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
