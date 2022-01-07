; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_get_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_get_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { i32*, i32, i32, i32, i32 }

@MAX77843_MUIC_STATUS1 = common dso_local global i64 0, align 8
@MAX77843_MUIC_STATUS1_ADC_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_STATUS1_ADC_SHIFT = common dso_local global i32 0, align 4
@MAX77843_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@MAX77843_MUIC_STATUS2 = common dso_local global i64 0, align 8
@MAX77843_MUIC_STATUS2_CHGTYP_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_ADC_GROUND = common dso_local global i32 0, align 4
@MAX77843_MUIC_CHG_NONE = common dso_local global i32 0, align 4
@MAX77843_MUIC_CHG_GND = common dso_local global i8* null, align 8
@MAX77843_MUIC_ADC_RESERVED_ACC_3 = common dso_local global i32 0, align 4
@MAX77843_MUIC_CHG_DOCK = common dso_local global i8* null, align 8
@MAX77843_MUIC_STATUS1_ADC1K_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_STATUS2_VBVOLT_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_STATUS2_VBVOLT_SHIFT = common dso_local global i32 0, align 4
@MAX77843_MUIC_GND_USB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown cable group (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77843_muic_info*, i32, i32*)* @max77843_muic_get_cable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.max77843_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %12 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @MAX77843_MUIC_STATUS1, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX77843_MUIC_STATUS1_ADC_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @MAX77843_MUIC_STATUS1_ADC_SHIFT, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %159 [
    i32 130, label %23
    i32 128, label %41
    i32 129, label %117
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MAX77843_MUIC_ADC_OPEN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %30 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @MAX77843_MUIC_ADC_OPEN, align 4
  %33 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %34 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %40

35:                                               ; preds = %23
  %36 = load i32*, i32** %6, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %39 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  store i32 %37, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %27
  br label %167

41:                                               ; preds = %3
  %42 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %43 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @MAX77843_MUIC_STATUS2, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX77843_MUIC_STATUS2_CHGTYP_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MAX77843_MUIC_ADC_GROUND, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MAX77843_MUIC_CHG_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  store i32 0, i32* %58, align 4
  %59 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %60 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @MAX77843_MUIC_CHG_NONE, align 4
  %63 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %64 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %73

65:                                               ; preds = %53
  %66 = load i32*, i32** %6, align 8
  store i32 1, i32* %66, align 4
  %67 = load i8*, i8** @MAX77843_MUIC_CHG_GND, align 8
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i8*, i8** @MAX77843_MUIC_CHG_GND, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %72 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %57
  br label %167

74:                                               ; preds = %41
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MAX77843_MUIC_ADC_RESERVED_ACC_3, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MAX77843_MUIC_CHG_NONE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  store i32 0, i32* %83, align 4
  %84 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %85 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @MAX77843_MUIC_CHG_NONE, align 4
  %88 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %89 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %98

90:                                               ; preds = %78
  %91 = load i32*, i32** %6, align 8
  store i32 1, i32* %91, align 4
  %92 = load i8*, i8** @MAX77843_MUIC_CHG_DOCK, align 8
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load i8*, i8** @MAX77843_MUIC_CHG_DOCK, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %97 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %82
  br label %167

99:                                               ; preds = %74
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @MAX77843_MUIC_CHG_NONE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  store i32 0, i32* %104, align 4
  %105 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %106 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @MAX77843_MUIC_CHG_NONE, align 4
  %109 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %110 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %116

111:                                              ; preds = %99
  %112 = load i32*, i32** %6, align 8
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %115 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  store i32 %113, i32* %9, align 4
  br label %116

116:                                              ; preds = %111, %103
  br label %167

117:                                              ; preds = %3
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @MAX77843_MUIC_ADC_OPEN, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  store i32 0, i32* %122, align 4
  %123 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %124 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* @MAX77843_MUIC_ADC_OPEN, align 4
  %127 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %128 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  br label %158

129:                                              ; preds = %117
  %130 = load i32*, i32** %6, align 8
  store i32 1, i32* %130, align 4
  %131 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %132 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @MAX77843_MUIC_STATUS1, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MAX77843_MUIC_STATUS1_ADC1K_MASK, align 4
  %138 = and i32 %136, %137
  store i32 %138, i32* %10, align 4
  %139 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %140 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @MAX77843_MUIC_STATUS2, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MAX77843_MUIC_STATUS2_VBVOLT_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @MAX77843_MUIC_STATUS2_VBVOLT_SHIFT, align 4
  %150 = load i32, i32* %10, align 4
  %151 = ashr i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @MAX77843_MUIC_GND_USB_HOST, align 4
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %157 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  store i32 %155, i32* %9, align 4
  br label %158

158:                                              ; preds = %129, %121
  br label %167

159:                                              ; preds = %3
  %160 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %161 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @dev_err(i32 %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %159, %158, %116, %98, %73, %40
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
