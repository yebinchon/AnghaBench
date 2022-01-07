; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_table_to_millicelcius.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_table_to_millicelcius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp_map = common dso_local global i16** null, align 8
@CPCAP_MAX_TEMP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @cpcap_adc_table_to_millicelcius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_table_to_millicelcius(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 0, i32* %5, align 4
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16**, i16*** @temp_map, align 8
  %10 = load i32, i32* @CPCAP_MAX_TEMP_LVL, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16*, i16** %9, i64 %12
  %14 = load i16*, i16** %13, align 8
  %15 = getelementptr inbounds i16, i16* %14, i64 0
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %8, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i16**, i16*** @temp_map, align 8
  %21 = load i32, i32* @CPCAP_MAX_TEMP_LVL, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16*, i16** %20, i64 %23
  %25 = load i16*, i16** %24, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 1
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %191

29:                                               ; preds = %1
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16**, i16*** @temp_map, align 8
  %33 = getelementptr inbounds i16*, i16** %32, i64 0
  %34 = load i16*, i16** %33, align 8
  %35 = getelementptr inbounds i16, i16* %34, i64 0
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp sge i32 %31, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i16**, i16*** @temp_map, align 8
  %41 = getelementptr inbounds i16*, i16** %40, i64 0
  %42 = load i16*, i16** %41, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 1
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %191

46:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %186, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CPCAP_MAX_TEMP_LVL, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %189

52:                                               ; preds = %47
  %53 = load i16, i16* %3, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16**, i16*** @temp_map, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16*, i16** %55, i64 %57
  %59 = load i16*, i16** %58, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 0
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp sle i32 %54, %62
  br i1 %63, label %64, label %185

64:                                               ; preds = %52
  %65 = load i16, i16* %3, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16**, i16*** @temp_map, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16*, i16** %67, i64 %70
  %72 = load i16*, i16** %71, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 0
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp sge i32 %66, %75
  br i1 %76, label %77, label %185

77:                                               ; preds = %64
  %78 = load i16, i16* %3, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16**, i16*** @temp_map, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16*, i16** %80, i64 %82
  %84 = load i16*, i16** %83, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 0
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp eq i32 %79, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %77
  %90 = load i16**, i16*** @temp_map, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16*, i16** %90, i64 %92
  %94 = load i16*, i16** %93, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 1
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %184

98:                                               ; preds = %77
  %99 = load i16, i16* %3, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16**, i16*** @temp_map, align 8
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16*, i16** %101, i64 %104
  %106 = load i16*, i16** %105, align 8
  %107 = getelementptr inbounds i16, i16* %106, i64 0
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %100, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %98
  %112 = load i16**, i16*** @temp_map, align 8
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16*, i16** %112, i64 %115
  %117 = load i16*, i16** %116, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 1
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i32
  store i32 %120, i32* %5, align 4
  br label %183

121:                                              ; preds = %98
  %122 = load i16, i16* %3, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16**, i16*** @temp_map, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16*, i16** %124, i64 %126
  %128 = load i16*, i16** %127, align 8
  %129 = getelementptr inbounds i16, i16* %128, i64 0
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %123, %131
  %133 = mul nsw i32 %132, 1000
  %134 = load i16**, i16*** @temp_map, align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16*, i16** %134, i64 %137
  %139 = load i16*, i16** %138, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 0
  %141 = load i16, i16* %140, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16**, i16*** @temp_map, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16*, i16** %143, i64 %145
  %147 = load i16*, i16** %146, align 8
  %148 = getelementptr inbounds i16, i16* %147, i64 0
  %149 = load i16, i16* %148, align 2
  %150 = zext i16 %149 to i32
  %151 = sub nsw i32 %142, %150
  %152 = sdiv i32 %133, %151
  store i32 %152, i32* %6, align 4
  %153 = load i16**, i16*** @temp_map, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16*, i16** %153, i64 %155
  %157 = load i16*, i16** %156, align 8
  %158 = getelementptr inbounds i16, i16* %157, i64 1
  %159 = load i16, i16* %158, align 2
  %160 = zext i16 %159 to i32
  %161 = load i32, i32* %6, align 4
  %162 = load i16**, i16*** @temp_map, align 8
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i16*, i16** %162, i64 %165
  %167 = load i16*, i16** %166, align 8
  %168 = getelementptr inbounds i16, i16* %167, i64 1
  %169 = load i16, i16* %168, align 2
  %170 = zext i16 %169 to i32
  %171 = load i16**, i16*** @temp_map, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16*, i16** %171, i64 %173
  %175 = load i16*, i16** %174, align 8
  %176 = getelementptr inbounds i16, i16* %175, i64 1
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = sub nsw i32 %170, %178
  %180 = mul nsw i32 %161, %179
  %181 = sdiv i32 %180, 1000
  %182 = add nsw i32 %160, %181
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %121, %111
  br label %184

184:                                              ; preds = %183, %89
  br label %189

185:                                              ; preds = %64, %52
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %4, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %4, align 4
  br label %47

189:                                              ; preds = %184, %47
  %190 = load i32, i32* %5, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %189, %39, %19
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
