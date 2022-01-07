; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_voltage_multiplier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_voltage_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i32* }

@ADT7462_PIN7_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN23 = common dso_local global i32 0, align 4
@ADT7462_VID_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN22_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN21_INPUT = common dso_local global i32 0, align 4
@ADT7462_DIODE3_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN19_INPUT = common dso_local global i32 0, align 4
@ADT7462_DIODE1_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN15_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN13_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN8_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN26 = common dso_local global i32 0, align 4
@ADT7462_PIN25 = common dso_local global i32 0, align 4
@ADT7462_PIN24 = common dso_local global i32 0, align 4
@ADT7462_PIN28_SHIFT = common dso_local global i32 0, align 4
@ADT7462_PIN28_VOLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7462_data*, i32)* @voltage_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voltage_multiplier(%struct.adt7462_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adt7462_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adt7462_data* %0, %struct.adt7462_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %183 [
    i32 0, label %7
    i32 1, label %18
    i32 2, label %41
    i32 3, label %52
    i32 4, label %63
    i32 5, label %84
    i32 6, label %105
    i32 7, label %116
    i32 8, label %127
    i32 9, label %138
    i32 10, label %149
    i32 11, label %162
    i32 12, label %162
  ]

7:                                                ; preds = %2
  %8 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %9 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ADT7462_PIN7_INPUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  store i32 62500, i32* %3, align 4
  br label %184

17:                                               ; preds = %7
  br label %183

18:                                               ; preds = %2
  %19 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %20 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADT7462_PIN23, align 4
  %25 = call i32 @MASK_AND_SHIFT(i32 %23, i32 %24)
  switch i32 %25, label %40 [
    i32 0, label %26
    i32 1, label %37
    i32 2, label %38
    i32 3, label %39
  ]

26:                                               ; preds = %18
  %27 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %28 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ADT7462_VID_INPUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 12500, i32* %3, align 4
  br label %184

36:                                               ; preds = %26
  store i32 6250, i32* %3, align 4
  br label %184

37:                                               ; preds = %18
  store i32 13000, i32* %3, align 4
  br label %184

38:                                               ; preds = %18
  store i32 9400, i32* %3, align 4
  br label %184

39:                                               ; preds = %18
  store i32 7800, i32* %3, align 4
  br label %184

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %2, %40
  %42 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %43 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ADT7462_PIN22_INPUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 62500, i32* %3, align 4
  br label %184

51:                                               ; preds = %41
  br label %183

52:                                               ; preds = %2
  %53 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %54 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ADT7462_PIN21_INPUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 26000, i32* %3, align 4
  br label %184

62:                                               ; preds = %52
  br label %183

63:                                               ; preds = %2
  %64 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %65 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ADT7462_DIODE3_INPUT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %63
  %73 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %74 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ADT7462_PIN19_INPUT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 4690, i32* %3, align 4
  br label %184

82:                                               ; preds = %72
  store i32 6500, i32* %3, align 4
  br label %184

83:                                               ; preds = %63
  br label %183

84:                                               ; preds = %2
  %85 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %86 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ADT7462_DIODE1_INPUT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %84
  %94 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %95 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ADT7462_PIN15_INPUT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 9400, i32* %3, align 4
  br label %184

103:                                              ; preds = %93
  store i32 13000, i32* %3, align 4
  br label %184

104:                                              ; preds = %84
  br label %183

105:                                              ; preds = %2
  %106 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %107 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ADT7462_PIN13_INPUT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  store i32 17200, i32* %3, align 4
  br label %184

115:                                              ; preds = %105
  br label %183

116:                                              ; preds = %2
  %117 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %118 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ADT7462_PIN8_INPUT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  store i32 62500, i32* %3, align 4
  br label %184

126:                                              ; preds = %116
  br label %183

127:                                              ; preds = %2
  %128 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %129 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ADT7462_PIN26, align 4
  %134 = call i32 @MASK_AND_SHIFT(i32 %132, i32 %133)
  switch i32 %134, label %137 [
    i32 0, label %135
    i32 1, label %136
  ]

135:                                              ; preds = %127
  store i32 15600, i32* %3, align 4
  br label %184

136:                                              ; preds = %127
  store i32 6250, i32* %3, align 4
  br label %184

137:                                              ; preds = %127
  br label %183

138:                                              ; preds = %2
  %139 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %140 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ADT7462_PIN25, align 4
  %145 = call i32 @MASK_AND_SHIFT(i32 %143, i32 %144)
  switch i32 %145, label %148 [
    i32 0, label %146
    i32 1, label %147
  ]

146:                                              ; preds = %138
  store i32 17200, i32* %3, align 4
  br label %184

147:                                              ; preds = %138
  store i32 6250, i32* %3, align 4
  br label %184

148:                                              ; preds = %138
  br label %183

149:                                              ; preds = %2
  %150 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %151 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ADT7462_PIN24, align 4
  %156 = call i32 @MASK_AND_SHIFT(i32 %154, i32 %155)
  switch i32 %156, label %161 [
    i32 0, label %157
    i32 1, label %158
    i32 2, label %159
    i32 3, label %160
  ]

157:                                              ; preds = %149
  store i32 6250, i32* %3, align 4
  br label %184

158:                                              ; preds = %149
  store i32 13000, i32* %3, align 4
  br label %184

159:                                              ; preds = %149
  store i32 9400, i32* %3, align 4
  br label %184

160:                                              ; preds = %149
  store i32 7800, i32* %3, align 4
  br label %184

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %2, %2, %161
  %163 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %164 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ADT7462_PIN28_SHIFT, align 4
  %169 = ashr i32 %167, %168
  %170 = load i32, i32* @ADT7462_PIN28_VOLT, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %162
  %173 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %174 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ADT7462_VID_INPUT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %172
  store i32 7800, i32* %3, align 4
  br label %184

182:                                              ; preds = %172, %162
  br label %183

183:                                              ; preds = %182, %2, %148, %137, %126, %115, %104, %83, %62, %51, %17
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %181, %160, %159, %158, %157, %147, %146, %136, %135, %125, %114, %103, %102, %82, %81, %61, %50, %39, %38, %37, %36, %35, %16
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @MASK_AND_SHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
