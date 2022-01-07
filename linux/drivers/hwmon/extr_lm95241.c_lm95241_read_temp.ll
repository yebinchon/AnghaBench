; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm95241_data = type { i32, i32, i32, i32* }

@R1DF_MASK = common dso_local global i32 0, align 4
@R2DF_MASK = common dso_local global i32 0, align 4
@R1MS_MASK = common dso_local global i32 0, align 4
@R2MS_MASK = common dso_local global i32 0, align 4
@R1DM = common dso_local global i32 0, align 4
@R2DM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @lm95241_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95241_read_temp(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.lm95241_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.lm95241_data* @lm95241_update_device(%struct.device* %11)
  store %struct.lm95241_data* %12, %struct.lm95241_data** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %173 [
    i32 131, label %14
    i32 129, label %67
    i32 130, label %93
    i32 128, label %119
    i32 132, label %145
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %19 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %17, %14
  %27 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %28 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %36 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @temp_from_reg_signed(i32 %34, i32 %43)
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %66

46:                                               ; preds = %17
  %47 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %48 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %56 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @temp_from_reg_unsigned(i32 %54, i32 %63)
  %65 = load i64*, i64** %9, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %46, %26
  store i32 0, i32* %5, align 4
  br label %176

67:                                               ; preds = %4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %72 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @R1DF_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 -128000, i32 0
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  br label %92

81:                                               ; preds = %67
  %82 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %83 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @R2DF_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 -128000, i32 0
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %70
  store i32 0, i32* %5, align 4
  br label %176

93:                                               ; preds = %4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %98 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @R1DF_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 127875, i32 255875
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** %9, align 8
  store i64 %105, i64* %106, align 8
  br label %118

107:                                              ; preds = %93
  %108 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %109 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @R2DF_MASK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 127875, i32 255875
  %116 = sext i32 %115 to i64
  %117 = load i64*, i64** %9, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %107, %96
  store i32 0, i32* %5, align 4
  br label %176

119:                                              ; preds = %4
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %124 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @R1MS_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 2
  %131 = sext i32 %130 to i64
  %132 = load i64*, i64** %9, align 8
  store i64 %131, i64* %132, align 8
  br label %144

133:                                              ; preds = %119
  %134 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %135 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @R2MS_MASK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 2
  %142 = sext i32 %141 to i64
  %143 = load i64*, i64** %9, align 8
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %133, %122
  store i32 0, i32* %5, align 4
  br label %176

145:                                              ; preds = %4
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %150 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @R1DM, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %9, align 8
  store i64 %158, i64* %159, align 8
  br label %172

160:                                              ; preds = %145
  %161 = load %struct.lm95241_data*, %struct.lm95241_data** %10, align 8
  %162 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @R2DM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = load i64*, i64** %9, align 8
  store i64 %170, i64* %171, align 8
  br label %172

172:                                              ; preds = %160, %148
  store i32 0, i32* %5, align 4
  br label %176

173:                                              ; preds = %4
  %174 = load i32, i32* @EOPNOTSUPP, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %173, %172, %144, %118, %92, %66
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local %struct.lm95241_data* @lm95241_update_device(%struct.device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @temp_from_reg_signed(i32, i32) #1

declare dso_local i64 @temp_from_reg_unsigned(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
