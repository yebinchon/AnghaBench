; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_touchpad_check_second_peak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_touchpad_check_second_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_touchpad_drv* }
%struct.ad714x_touchpad_drv = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_touchpad_plat* }
%struct.ad714x_touchpad_plat = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i32)* @touchpad_check_second_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @touchpad_check_second_peak(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad714x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad714x_touchpad_plat*, align 8
  %7 = alloca %struct.ad714x_touchpad_drv*, align 8
  %8 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %10 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %13, i64 %15
  store %struct.ad714x_touchpad_plat* %16, %struct.ad714x_touchpad_plat** %6, align 8
  %17 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %18 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %21, i64 %23
  store %struct.ad714x_touchpad_drv* %24, %struct.ad714x_touchpad_drv** %7, align 8
  %25 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %6, align 8
  %26 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %63, %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %7, align 8
  %31 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %36 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %43 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %41, %49
  %51 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %52 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 10
  %60 = icmp sgt i32 %50, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %191

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %28

66:                                               ; preds = %28
  %67 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %7, align 8
  %68 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %104, %66
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %6, align 8
  %73 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %70
  %77 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %78 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %86 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %84, %91
  %93 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %94 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 10
  %101 = icmp sgt i32 %92, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %76
  store i32 1, i32* %3, align 4
  br label %191

103:                                              ; preds = %76
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %70

107:                                              ; preds = %70
  %108 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %6, align 8
  %109 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %146, %107
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %7, align 8
  %114 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %111
  %118 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %119 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %126 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %124, %132
  %134 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %135 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 10
  %143 = icmp sgt i32 %133, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %191

145:                                              ; preds = %117
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %111

149:                                              ; preds = %111
  %150 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %7, align 8
  %151 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %187, %149
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %6, align 8
  %156 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %153
  %160 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %161 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %169 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %167, %174
  %176 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %177 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %182, 10
  %184 = icmp sgt i32 %175, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %159
  store i32 1, i32* %3, align 4
  br label %191

186:                                              ; preds = %159
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %153

190:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %185, %144, %102, %61
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
