; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_has_been_populated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_has_been_populated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64* }

@EV_CNT = common dso_local global i32 0, align 4
@KEY_CNT = common dso_local global i32 0, align 4
@REL_CNT = common dso_local global i32 0, align 4
@ABS_CNT = common dso_local global i32 0, align 4
@MSC_CNT = common dso_local global i32 0, align 4
@LED_CNT = common dso_local global i32 0, align 4
@SND_CNT = common dso_local global i32 0, align 4
@FF_CNT = common dso_local global i32 0, align 4
@SW_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_input*)* @hidinput_has_been_populated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidinput_has_been_populated(%struct.hid_input* %0) #0 {
  %2 = alloca %struct.hid_input*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.hid_input* %0, %struct.hid_input** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EV_CNT, align 4
  %8 = call i32 @BITS_TO_LONGS(i32 %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %12 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @KEY_CNT, align 4
  %29 = call i32 @BITS_TO_LONGS(i32 %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %33 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %26

46:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @REL_CNT, align 4
  %50 = call i32 @BITS_TO_LONGS(i32 %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %54 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %47

67:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @ABS_CNT, align 4
  %71 = call i32 @BITS_TO_LONGS(i32 %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %75 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %68

88:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @MSC_CNT, align 4
  %92 = call i32 @BITS_TO_LONGS(i32 %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %96 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %89

109:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @LED_CNT, align 4
  %113 = call i32 @BITS_TO_LONGS(i32 %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %117 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 5
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %4, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %4, align 8
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %110

130:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @SND_CNT, align 4
  %134 = call i32 @BITS_TO_LONGS(i32 %133)
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %138 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 6
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %4, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %131

151:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @FF_CNT, align 4
  %155 = call i32 @BITS_TO_LONGS(i32 %154)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %159 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 7
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %4, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %4, align 8
  br label %169

169:                                              ; preds = %157
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %152

172:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %190, %172
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @SW_CNT, align 4
  %176 = call i32 @BITS_TO_LONGS(i32 %175)
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load %struct.hid_input*, %struct.hid_input** %2, align 8
  %180 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 8
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %4, align 8
  %189 = or i64 %188, %187
  store i64 %189, i64* %4, align 8
  br label %190

190:                                              ; preds = %178
  %191 = load i32, i32* %3, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %3, align 4
  br label %173

193:                                              ; preds = %173
  %194 = load i64, i64* %4, align 8
  %195 = icmp ne i64 %194, 0
  %196 = xor i1 %195, true
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  ret i32 %198
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
