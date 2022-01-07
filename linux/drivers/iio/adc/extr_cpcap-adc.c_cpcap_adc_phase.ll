; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_adc_request = type { i32, i32, i64, %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_conversion_tbl* }
%struct.cpcap_adc_phasing_tbl = type { i64, i64, i64, i64, i32 }
%struct.cpcap_adc_conversion_tbl = type { i32, i32 }

@CPCAP_FOUR_POINT_TWO_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpcap_adc_request*)* @cpcap_adc_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcap_adc_phase(%struct.cpcap_adc_request* %0) #0 {
  %2 = alloca %struct.cpcap_adc_request*, align 8
  %3 = alloca %struct.cpcap_adc_conversion_tbl*, align 8
  %4 = alloca %struct.cpcap_adc_phasing_tbl*, align 8
  %5 = alloca i32, align 4
  store %struct.cpcap_adc_request* %0, %struct.cpcap_adc_request** %2, align 8
  %6 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %7 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %6, i32 0, i32 4
  %8 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %7, align 8
  store %struct.cpcap_adc_conversion_tbl* %8, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %9 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %10 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %9, i32 0, i32 3
  %11 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %10, align 8
  store %struct.cpcap_adc_phasing_tbl* %11, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %12 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %13 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %16 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %78 [
    i32 129, label %18
    i32 128, label %18
    i32 130, label %74
  ]

18:                                               ; preds = %1, %1
  %19 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %20 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %22, i64 %24
  %26 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %30 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* @CPCAP_FOUR_POINT_TWO_ADC, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %36 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %39, i64 %41
  %43 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %46 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = mul nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %49, i64 %51
  %53 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %18
  br label %182

57:                                               ; preds = %18
  %58 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %58, i64 %60
  %62 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %65 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sdiv i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* @CPCAP_FOUR_POINT_TWO_ADC, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %71 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %141

74:                                               ; preds = %1
  %75 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %76 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %1, %74
  %79 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %79, i64 %81
  %83 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %87 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %90, i64 %92
  %94 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %98 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %101, i64 %103
  %105 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %108 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = mul nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %111, i64 %113
  %115 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %78
  br label %182

119:                                              ; preds = %78
  %120 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %120, i64 %122
  %124 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %127 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = sdiv i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %130, i64 %132
  %134 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %138 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  br label %141

141:                                              ; preds = %119, %57
  %142 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %143 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %145, i64 %147
  %149 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %144, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %141
  %153 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %153, i64 %155
  %157 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %160 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %182

161:                                              ; preds = %141
  %162 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %163 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %165, i64 %167
  %169 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %164, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %161
  %173 = load %struct.cpcap_adc_phasing_tbl*, %struct.cpcap_adc_phasing_tbl** %4, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %173, i64 %175
  %177 = getelementptr inbounds %struct.cpcap_adc_phasing_tbl, %struct.cpcap_adc_phasing_tbl* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %180 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %172, %161
  br label %182

182:                                              ; preds = %56, %118, %181, %152
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
