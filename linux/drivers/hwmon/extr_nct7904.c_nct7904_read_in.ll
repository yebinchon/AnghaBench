; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i32* }

@nct7904_chan_to_index = common dso_local global i32* null, align 8
@BANK_0 = common dso_local global i32 0, align 4
@VSEN1_HV_REG = common dso_local global i32 0, align 4
@BANK_1 = common dso_local global i32 0, align 4
@VSEN1_HV_LL_REG = common dso_local global i32 0, align 4
@VSEN1_HV_HL_REG = common dso_local global i32 0, align 4
@SMI_STS1_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @nct7904_read_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_read_in(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.nct7904_data* %15, %struct.nct7904_data** %10, align 8
  %16 = load i32*, i32** @nct7904_chan_to_index, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %191 [
    i32 130, label %22
    i32 128, label %53
    i32 129, label %84
    i32 131, label %115
  ]

22:                                               ; preds = %4
  %23 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %24 = load i32, i32* @BANK_0, align 4
  %25 = load i32, i32* @VSEN1_HV_REG, align 4
  %26 = load i32, i32* %13, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %25, %27
  %29 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %23, i32 %24, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %194

34:                                               ; preds = %22
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 65280
  %37 = ashr i32 %36, 5
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 7
  %40 = or i32 %37, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 14
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %12, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %47, 6
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %194

53:                                               ; preds = %4
  %54 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %55 = load i32, i32* @BANK_1, align 4
  %56 = load i32, i32* @VSEN1_HV_LL_REG, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 %56, %58
  %60 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %54, i32 %55, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %194

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 65280
  %68 = ashr i32 %67, 5
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 7
  %71 = or i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 14
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %75, 2
  store i32 %76, i32* %12, align 4
  br label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, 6
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  store i32 0, i32* %5, align 4
  br label %194

84:                                               ; preds = %4
  %85 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %86 = load i32, i32* @BANK_1, align 4
  %87 = load i32, i32* @VSEN1_HV_HL_REG, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 4
  %90 = add nsw i32 %87, %89
  %91 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %85, i32 %86, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %5, align 4
  br label %194

96:                                               ; preds = %84
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 65280
  %99 = ashr i32 %98, 5
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 7
  %102 = or i32 %99, %101
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 14
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = mul nsw i32 %106, 2
  store i32 %107, i32* %12, align 4
  br label %111

108:                                              ; preds = %96
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %109, 6
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  store i32 0, i32* %5, align 4
  br label %194

115:                                              ; preds = %4
  %116 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %117 = load i32, i32* @BANK_0, align 4
  %118 = load i32, i32* @SMI_STS1_REG, align 4
  %119 = load i32, i32* %13, align 4
  %120 = ashr i32 %119, 3
  %121 = add nsw i32 %118, %120
  %122 = call i32 @nct7904_read_reg(%struct.nct7904_data* %116, i32 %117, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %194

127:                                              ; preds = %115
  %128 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %129 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = ashr i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 255
  %140 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %141 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = ashr i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %139, i32* %146, align 4
  br label %159

147:                                              ; preds = %127
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %148, 255
  %150 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %151 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = ashr i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %149
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %147, %137
  %160 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %161 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = ashr i32 %163, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %13, align 4
  %169 = and i32 %168, 7
  %170 = ashr i32 %167, %169
  %171 = and i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = load i64*, i64** %9, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i64*, i64** %9, align 8
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %159
  %178 = load i32, i32* %13, align 4
  %179 = and i32 %178, 7
  %180 = shl i32 1, %179
  %181 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %182 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = ashr i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %188, %180
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %177, %159
  store i32 0, i32* %5, align 4
  br label %194

191:                                              ; preds = %4
  %192 = load i32, i32* @EOPNOTSUPP, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %191, %190, %125, %111, %94, %80, %63, %49, %32
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nct7904_read_reg16(%struct.nct7904_data*, i32, i32) #1

declare dso_local i32 @nct7904_read_reg(%struct.nct7904_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
