; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_scan_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_scan_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i32*, i32*, i32, %struct.input_dev*, %struct.pxa27x_keypad_platform_data* }
%struct.input_dev = type { i32 }
%struct.pxa27x_keypad_platform_data = type { i32, i32 }

@MAX_MATRIX_KEY_COLS = common dso_local global i32 0, align 4
@KPAS = common dso_local global i32 0, align 4
@KPASMKP0 = common dso_local global i32 0, align 4
@KPASMKP1 = common dso_local global i32 0, align 4
@KPASMKP2 = common dso_local global i32 0, align 4
@KPASMKP3 = common dso_local global i32 0, align 4
@KPASMKP_MKC_MASK = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_keypad*)* @pxa27x_keypad_scan_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_keypad_scan_matrix(%struct.pxa27x_keypad* %0) #0 {
  %2 = alloca %struct.pxa27x_keypad*, align 8
  %3 = alloca %struct.pxa27x_keypad_platform_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %2, align 8
  %17 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %18 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %17, i32 0, i32 4
  %19 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %18, align 8
  store %struct.pxa27x_keypad_platform_data* %19, %struct.pxa27x_keypad_platform_data** %3, align 8
  %20 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %21 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %20, i32 0, i32 3
  %22 = load %struct.input_dev*, %struct.input_dev** %21, align 8
  store %struct.input_dev* %22, %struct.input_dev** %4, align 8
  store i32 0, i32* %7, align 4
  %23 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* @KPAS, align 4
  %28 = call i32 @keypad_readl(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @KPAS_MUKP(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = mul nuw i64 4, %24
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %26, i32 0, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %112

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @KPAS_CP(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @KPAS_RP(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %47 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %53 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %40
  br label %112

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %26, i64 %61
  store i32 %59, i32* %62, align 4
  br label %112

63:                                               ; preds = %37
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %111

66:                                               ; preds = %63
  %67 = load i32, i32* @KPASMKP0, align 4
  %68 = call i32 @keypad_readl(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @KPASMKP1, align 4
  %70 = call i32 @keypad_readl(i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @KPASMKP2, align 4
  %72 = call i32 @keypad_readl(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @KPASMKP3, align 4
  %74 = call i32 @keypad_readl(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %77 = and i32 %75, %76
  %78 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %77, i32* %78, align 16
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %79, 16
  %81 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %82 = and i32 %80, %81
  %83 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %86 = and i32 %84, %85
  %87 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = ashr i32 %88, 16
  %90 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %91 = and i32 %89, %90
  %92 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %95 = and i32 %93, %94
  %96 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 %95, i32* %96, align 16
  %97 = load i32, i32* %13, align 4
  %98 = ashr i32 %97, 16
  %99 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %100 = and i32 %98, %99
  %101 = getelementptr inbounds i32, i32* %26, i64 5
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %104 = and i32 %102, %103
  %105 = getelementptr inbounds i32, i32* %26, i64 6
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = ashr i32 %106, 16
  %108 = load i32, i32* @KPASMKP_MKC_MASK, align 4
  %109 = and i32 %107, %108
  %110 = getelementptr inbounds i32, i32* %26, i64 7
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %66, %63
  br label %112

112:                                              ; preds = %111, %57, %56, %36
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %181, %112
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %116 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %184

119:                                              ; preds = %113
  %120 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %121 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %26, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %126, %130
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %181

135:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %177, %135
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %139 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %136
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %5, align 4
  %145 = shl i32 1, %144
  %146 = and i32 %143, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %177

149:                                              ; preds = %142
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %153 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @MATRIX_SCAN_CODE(i32 %150, i32 %151, i32 %154)
  store i32 %155, i32* %16, align 4
  %156 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %157 = load i32, i32* @EV_MSC, align 4
  %158 = load i32, i32* @MSC_SCAN, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @input_event(%struct.input_dev* %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %162 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %163 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %26, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = shl i32 1, %173
  %175 = and i32 %172, %174
  %176 = call i32 @input_report_key(%struct.input_dev* %161, i32 %168, i32 %175)
  br label %177

177:                                              ; preds = %149, %148
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %136

180:                                              ; preds = %136
  br label %181

181:                                              ; preds = %180, %134
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %113

184:                                              ; preds = %113
  %185 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %186 = call i32 @input_sync(%struct.input_dev* %185)
  %187 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %188 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = mul nuw i64 4, %24
  %191 = trunc i64 %190 to i32
  %192 = call i32 @memcpy(i32* %189, i32* %26, i32 %191)
  %193 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %193)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @keypad_readl(i32) #2

declare dso_local i32 @KPAS_MUKP(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @KPAS_CP(i32) #2

declare dso_local i32 @KPAS_RP(i32) #2

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #2

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
