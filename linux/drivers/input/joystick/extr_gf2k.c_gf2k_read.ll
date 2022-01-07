; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gf2k.c_gf2k_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gf2k.c_gf2k_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf2k = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@gf2k_axes = common dso_local global i32* null, align 8
@gf2k_abs = common dso_local global i64* null, align 8
@gf2k_hats = common dso_local global i32* null, align 8
@ABS_HAT0X = common dso_local global i64 0, align 8
@gf2k_hat_to_axis = common dso_local global i32** null, align 8
@gf2k_joys = common dso_local global i32* null, align 8
@gf2k_btn_joy = common dso_local global i32* null, align 8
@gf2k_pads = common dso_local global i32* null, align 8
@gf2k_btn_pad = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf2k*, i8*)* @gf2k_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf2k_read(%struct.gf2k* %0, i8* %1) #0 {
  %3 = alloca %struct.gf2k*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gf2k* %0, %struct.gf2k** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %9 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** @gf2k_axes, align 8
  %17 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %18 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %15, %21
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi i1 [ false, %11 ], [ %22, %14 ]
  br i1 %24, label %25, label %47

25:                                               ; preds = %23
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = load i64*, i64** @gf2k_abs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 3
  %34 = call i32 @GB(i32 %33, i32 8, i32 0)
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 46
  %37 = call i32 @GB(i32 %36, i32 1, i32 8)
  %38 = or i32 %34, %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 50
  %41 = call i32 @GB(i32 %40, i32 1, i32 9)
  %42 = or i32 %38, %41
  %43 = call i32 @input_report_abs(%struct.input_dev* %26, i64 %31, i32 %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %11

47:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %79, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** @gf2k_axes, align 8
  %54 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %55 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 4
  %60 = icmp slt i32 %52, %59
  br label %61

61:                                               ; preds = %51, %48
  %62 = phi i1 [ false, %48 ], [ %60, %51 ]
  br i1 %62, label %63, label %82

63:                                               ; preds = %61
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = load i64*, i64** @gf2k_abs, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 9
  %72 = add nsw i32 %71, 60
  %73 = call i32 @GB(i32 %72, i32 8, i32 0)
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 54
  %76 = call i32 @GB(i32 %75, i32 1, i32 9)
  %77 = or i32 %73, %76
  %78 = call i32 @input_report_abs(%struct.input_dev* %64, i64 %69, i32 %77)
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %48

82:                                               ; preds = %61
  %83 = call i32 @GB(i32 40, i32 4, i32 0)
  store i32 %83, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %109, %82
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** @gf2k_hats, align 8
  %87 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %88 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %85, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %84
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = load i64, i64* @ABS_HAT0X, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load i32**, i32*** @gf2k_hat_to_axis, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @input_report_abs(%struct.input_dev* %94, i64 %98, i32 %107)
  br label %109

109:                                              ; preds = %93
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %84

112:                                              ; preds = %84
  %113 = call i32 @GB(i32 44, i32 2, i32 0)
  %114 = call i32 @GB(i32 32, i32 8, i32 2)
  %115 = or i32 %113, %114
  %116 = call i32 @GB(i32 78, i32 2, i32 10)
  %117 = or i32 %115, %116
  store i32 %117, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %139, %112
  %119 = load i32, i32* %6, align 4
  %120 = load i32*, i32** @gf2k_joys, align 8
  %121 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %122 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %119, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %118
  %128 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %129 = load i32*, i32** @gf2k_btn_joy, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %6, align 4
  %136 = ashr i32 %134, %135
  %137 = and i32 %136, 1
  %138 = call i32 @input_report_key(%struct.input_dev* %128, i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %118

142:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %164, %142
  %144 = load i32, i32* %6, align 4
  %145 = load i32*, i32** @gf2k_pads, align 8
  %146 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %147 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %144, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %143
  %153 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %154 = load i32*, i32** @gf2k_btn_pad, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %6, align 4
  %161 = ashr i32 %159, %160
  %162 = and i32 %161, 1
  %163 = call i32 @input_report_key(%struct.input_dev* %153, i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %152
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %143

167:                                              ; preds = %143
  %168 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %169 = call i32 @input_sync(%struct.input_dev* %168)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @GB(i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
