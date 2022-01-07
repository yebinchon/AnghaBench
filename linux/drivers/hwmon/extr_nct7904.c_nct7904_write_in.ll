; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i32 }

@nct7904_chan_to_index = common dso_local global i32* null, align 8
@BANK_1 = common dso_local global i32 0, align 4
@VSEN1_LV_LL_REG = common dso_local global i32 0, align 4
@VSEN1_HV_LL_REG = common dso_local global i32 0, align 4
@VSEN1_LV_HL_REG = common dso_local global i32 0, align 4
@VSEN1_HV_HL_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @nct7904_write_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_write_in(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.nct7904_data* %15, %struct.nct7904_data** %10, align 8
  %16 = load i32*, i32** @nct7904_chan_to_index, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 14
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = sdiv i64 %24, 2
  store i64 %25, i64* %9, align 8
  br label %29

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = sdiv i64 %27, 6
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @clamp_val(i64 %30, i32 0, i32 2047)
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %151 [
    i32 128, label %33
    i32 129, label %92
  ]

33:                                               ; preds = %29
  %34 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %35 = load i32, i32* @BANK_1, align 4
  %36 = load i32, i32* @VSEN1_LV_LL_REG, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %37, 4
  %39 = add nsw i32 %36, %38
  %40 = call i32 @nct7904_read_reg(%struct.nct7904_data* %34, i32 %35, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %154

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, -8
  store i32 %47, i32* %13, align 4
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, 7
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = or i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %55 = load i32, i32* @BANK_1, align 4
  %56 = load i32, i32* @VSEN1_LV_LL_REG, align 4
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @nct7904_write_reg(%struct.nct7904_data* %54, i32 %55, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %154

66:                                               ; preds = %45
  %67 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %68 = load i32, i32* @BANK_1, align 4
  %69 = load i32, i32* @VSEN1_HV_LL_REG, align 4
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 4
  %72 = add nsw i32 %69, %71
  %73 = call i32 @nct7904_read_reg(%struct.nct7904_data* %67, i32 %68, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %154

78:                                               ; preds = %66
  %79 = load i64, i64* %9, align 8
  %80 = ashr i64 %79, 3
  %81 = and i64 %80, 255
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %84 = load i32, i32* @BANK_1, align 4
  %85 = load i32, i32* @VSEN1_HV_LL_REG, align 4
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 4
  %88 = add nsw i32 %85, %87
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @nct7904_write_reg(%struct.nct7904_data* %83, i32 %84, i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %154

92:                                               ; preds = %29
  %93 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %94 = load i32, i32* @BANK_1, align 4
  %95 = load i32, i32* @VSEN1_LV_HL_REG, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %96, 4
  %98 = add nsw i32 %95, %97
  %99 = call i32 @nct7904_read_reg(%struct.nct7904_data* %93, i32 %94, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %154

104:                                              ; preds = %92
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %105, -8
  store i32 %106, i32* %13, align 4
  %107 = load i64, i64* %9, align 8
  %108 = and i64 %107, 7
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = or i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %114 = load i32, i32* @BANK_1, align 4
  %115 = load i32, i32* @VSEN1_LV_HL_REG, align 4
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 %116, 4
  %118 = add nsw i32 %115, %117
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @nct7904_write_reg(%struct.nct7904_data* %113, i32 %114, i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %154

125:                                              ; preds = %104
  %126 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %127 = load i32, i32* @BANK_1, align 4
  %128 = load i32, i32* @VSEN1_HV_HL_REG, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %129, 4
  %131 = add nsw i32 %128, %130
  %132 = call i32 @nct7904_read_reg(%struct.nct7904_data* %126, i32 %127, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %154

137:                                              ; preds = %125
  %138 = load i64, i64* %9, align 8
  %139 = ashr i64 %138, 3
  %140 = and i64 %139, 255
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %143 = load i32, i32* @BANK_1, align 4
  %144 = load i32, i32* @VSEN1_HV_HL_REG, align 4
  %145 = load i32, i32* %12, align 4
  %146 = mul nsw i32 %145, 4
  %147 = add nsw i32 %144, %146
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @nct7904_write_reg(%struct.nct7904_data* %142, i32 %143, i32 %147, i32 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %5, align 4
  br label %154

151:                                              ; preds = %29
  %152 = load i32, i32* @EOPNOTSUPP, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %151, %137, %135, %123, %102, %78, %76, %64, %43
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @nct7904_read_reg(%struct.nct7904_data*, i32, i32) #1

declare dso_local i32 @nct7904_write_reg(%struct.nct7904_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
