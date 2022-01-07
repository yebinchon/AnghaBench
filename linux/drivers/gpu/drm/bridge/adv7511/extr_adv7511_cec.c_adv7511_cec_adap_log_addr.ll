; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.adv7511 = type { i64, i32, i64*, i32, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@ADV7533_REG_CEC_OFFSET = common dso_local global i32 0, align 4
@ADV7511_MAX_ADDRS = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_LOG_ADDR_MASK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_LOG_ADDR_0_1 = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_LOG_ADDR_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i64)* @adv7511_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_cec_adap_log_addr(%struct.cec_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adv7511*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %12 = call %struct.adv7511* @cec_get_drvdata(%struct.cec_adapter* %11)
  store %struct.adv7511* %12, %struct.adv7511** %6, align 8
  %13 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %14 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ADV7533, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ADV7533_REG_CEC_OFFSET, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %25 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @CEC_LOG_ADDR_INVALID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 0, %32 ], [ %35, %33 ]
  store i32 %37, i32* %3, align 4
  br label %175

38:                                               ; preds = %21
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CEC_LOG_ADDR_INVALID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %44 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @ADV7511_REG_CEC_LOG_ADDR_MASK, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @regmap_update_bits(i32 %45, i64 %49, i32 112, i64 0)
  %51 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %52 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %175

53:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %60 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %68, %58
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %78 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %175

87:                                               ; preds = %76, %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %54

91:                                               ; preds = %54
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %175

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %91
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %107 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %105, i64* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 1, %112
  %114 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %115 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %8, align 4
  switch i32 %118, label %174 [
    i32 0, label %119
    i32 1, label %137
    i32 2, label %156
  ]

119:                                              ; preds = %104
  %120 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %121 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @ADV7511_REG_CEC_LOG_ADDR_MASK, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = call i32 @regmap_update_bits(i32 %122, i64 %126, i32 16, i64 16)
  %128 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %129 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ADV7511_REG_CEC_LOG_ADDR_0_1, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add i32 %131, %132
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @regmap_update_bits(i32 %130, i64 %134, i32 15, i64 %135)
  br label %174

137:                                              ; preds = %104
  %138 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %139 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* @ADV7511_REG_CEC_LOG_ADDR_MASK, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = call i32 @regmap_update_bits(i32 %140, i64 %144, i32 32, i64 32)
  %146 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %147 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ADV7511_REG_CEC_LOG_ADDR_0_1, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %5, align 8
  %154 = shl i64 %153, 4
  %155 = call i32 @regmap_update_bits(i32 %148, i64 %152, i32 240, i64 %154)
  br label %174

156:                                              ; preds = %104
  %157 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %158 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* @ADV7511_REG_CEC_LOG_ADDR_MASK, align 8
  %161 = load i32, i32* %7, align 4
  %162 = zext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = call i32 @regmap_update_bits(i32 %159, i64 %163, i32 64, i64 64)
  %165 = load %struct.adv7511*, %struct.adv7511** %6, align 8
  %166 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ADV7511_REG_CEC_LOG_ADDR_2, align 4
  %169 = load i32, i32* %7, align 4
  %170 = add i32 %168, %169
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @regmap_update_bits(i32 %167, i64 %171, i32 15, i64 %172)
  br label %174

174:                                              ; preds = %104, %156, %137, %119
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %100, %86, %42, %36
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.adv7511* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
