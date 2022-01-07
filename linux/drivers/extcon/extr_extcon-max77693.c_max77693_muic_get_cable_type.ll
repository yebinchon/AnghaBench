; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_get_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_get_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32*, i32, i32, i32, i32 }

@MAX77693_STATUS1_ADC_MASK = common dso_local global i32 0, align 4
@MAX77693_STATUS1_ADC_SHIFT = common dso_local global i32 0, align 4
@MAX77693_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@MAX77693_STATUS1_ADCLOW_MASK = common dso_local global i32 0, align 4
@MAX77693_STATUS1_ADCLOW_SHIFT = common dso_local global i32 0, align 4
@MAX77693_STATUS1_ADC1K_MASK = common dso_local global i32 0, align 4
@MAX77693_STATUS1_ADC1K_SHIFT = common dso_local global i32 0, align 4
@MAX77693_STATUS2_VBVOLT_MASK = common dso_local global i32 0, align 4
@MAX77693_STATUS2_VBVOLT_SHIFT = common dso_local global i32 0, align 4
@MAX77693_STATUS2_CHGTYP_MASK = common dso_local global i32 0, align 4
@MAX77693_STATUS2_CHGTYP_SHIFT = common dso_local global i32 0, align 4
@MAX77693_CHARGER_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown cable group (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*, i32, i32*)* @max77693_muic_get_cable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.max77693_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %183 [
    i32 131, label %14
    i32 130, label %42
    i32 129, label %111
    i32 128, label %139
  ]

14:                                               ; preds = %3
  %15 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %16 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX77693_STATUS1_ADC_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MAX77693_STATUS1_ADC_SHIFT, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MAX77693_MUIC_ADC_OPEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %14
  %29 = load i32*, i32** %6, align 8
  store i32 0, i32* %29, align 4
  %30 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %31 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @MAX77693_MUIC_ADC_OPEN, align 4
  %34 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %35 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %41

36:                                               ; preds = %14
  %37 = load i32*, i32** %6, align 8
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %40 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  store i32 %38, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %28
  br label %191

42:                                               ; preds = %3
  %43 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %44 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX77693_STATUS1_ADC_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @MAX77693_STATUS1_ADC_SHIFT, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MAX77693_MUIC_ADC_OPEN, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load i32*, i32** %6, align 8
  store i32 0, i32* %57, align 4
  %58 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %59 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @MAX77693_MUIC_ADC_OPEN, align 4
  %62 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %63 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %110

64:                                               ; preds = %42
  %65 = load i32*, i32** %6, align 8
  store i32 1, i32* %65, align 4
  %66 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %67 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MAX77693_STATUS1_ADCLOW_MASK, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @MAX77693_STATUS1_ADCLOW_SHIFT, align 4
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %77 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MAX77693_STATUS1_ADC1K_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @MAX77693_STATUS1_ADC1K_SHIFT, align 4
  %84 = load i32, i32* %9, align 4
  %85 = ashr i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %87 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MAX77693_STATUS2_VBVOLT_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @MAX77693_STATUS2_VBVOLT_SHIFT, align 4
  %94 = load i32, i32* %11, align 4
  %95 = ashr i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 2
  %98 = or i32 256, %97
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %99, 1
  %101 = or i32 %98, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %106 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %109 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %64, %56
  br label %191

111:                                              ; preds = %3
  %112 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %113 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MAX77693_STATUS2_CHGTYP_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* @MAX77693_STATUS2_CHGTYP_SHIFT, align 4
  %120 = load i32, i32* %12, align 4
  %121 = ashr i32 %120, %119
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @MAX77693_CHARGER_TYPE_NONE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %111
  %126 = load i32*, i32** %6, align 8
  store i32 0, i32* %126, align 4
  %127 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %128 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* @MAX77693_CHARGER_TYPE_NONE, align 4
  %131 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %132 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  br label %138

133:                                              ; preds = %111
  %134 = load i32*, i32** %6, align 8
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %137 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  store i32 %135, i32* %7, align 4
  br label %138

138:                                              ; preds = %133, %125
  br label %191

139:                                              ; preds = %3
  %140 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %141 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MAX77693_STATUS1_ADC_MASK, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @MAX77693_STATUS1_ADC_SHIFT, align 4
  %148 = load i32, i32* %8, align 4
  %149 = ashr i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %151 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MAX77693_STATUS2_CHGTYP_MASK, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* @MAX77693_STATUS2_CHGTYP_SHIFT, align 4
  %158 = load i32, i32* %12, align 4
  %159 = ashr i32 %158, %157
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @MAX77693_MUIC_ADC_OPEN, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %139
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @MAX77693_CHARGER_TYPE_NONE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  store i32 0, i32* %168, align 4
  br label %171

169:                                              ; preds = %163, %139
  %170 = load i32*, i32** %6, align 8
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %173 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @MAX77693_STATUS2_VBVOLT_MASK, align 4
  %178 = and i32 %176, %177
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* @MAX77693_STATUS2_VBVOLT_SHIFT, align 4
  %180 = load i32, i32* %11, align 4
  %181 = ashr i32 %180, %179
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %7, align 4
  br label %191

183:                                              ; preds = %3
  %184 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %185 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %183, %171, %138, %110, %41
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
