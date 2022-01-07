; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_get_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_get_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32 }

@tpg_get_color.bars = internal constant [3 x [8 x i32]] [[8 x i32] [i32 150, i32 157, i32 161, i32 160, i32 159, i32 158, i32 162, i32 170], [8 x i32] [i32 164, i32 163, i32 168, i32 167, i32 166, i32 165, i32 169, i32 170], [8 x i32] [i32 150, i32 149, i32 154, i32 153, i32 152, i32 151, i32 155, i32 156]], align 16
@TPG_COLOR_RAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpg_data*, i32, i32)* @tpg_get_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg_get_color(%struct.tpg_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %9 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %174 [
    i32 145, label %11
    i32 148, label %11
    i32 132, label %11
    i32 147, label %27
    i32 146, label %40
    i32 142, label %45
    i32 128, label %46
    i32 129, label %47
    i32 130, label %48
    i32 141, label %49
    i32 140, label %50
    i32 139, label %60
    i32 137, label %69
    i32 138, label %78
    i32 136, label %88
    i32 144, label %98
    i32 143, label %103
    i32 134, label %109
    i32 133, label %125
    i32 135, label %143
    i32 131, label %161
  ]

11:                                               ; preds = %3, %3, %3
  %12 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %13 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* @tpg_get_color.bars, i64 0, i64 %15
  %17 = load i32, i32* %7, align 4
  %18 = mul i32 %17, 8
  %19 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %20 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = udiv i32 %18, %21
  %23 = urem i32 %22, 8
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %175

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul i32 %29, 8
  %31 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %32 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = udiv i32 %30, %33
  %35 = add i32 %28, %34
  %36 = urem i32 %35, 8
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([3 x [8 x i32]], [3 x [8 x i32]]* @tpg_get_color.bars, i64 0, i64 1), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %175

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([3 x [8 x i32]], [3 x [8 x i32]]* @tpg_get_color.bars, i64 0, i64 1), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %175

45:                                               ; preds = %3
  store i32 170, i32* %4, align 4
  br label %175

46:                                               ; preds = %3
  store i32 164, i32* %4, align 4
  br label %175

47:                                               ; preds = %3
  store i32 165, i32* %4, align 4
  br label %175

48:                                               ; preds = %3
  store i32 167, i32* %4, align 4
  br label %175

49:                                               ; preds = %3
  store i32 169, i32* %4, align 4
  br label %175

50:                                               ; preds = %3
  %51 = load i32, i32* %7, align 4
  %52 = lshr i32 %51, 4
  %53 = and i32 %52, 1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 1
  %56 = xor i32 %53, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 170, i32 164
  store i32 %59, i32* %4, align 4
  br label %175

60:                                               ; preds = %3
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 1
  %65 = xor i32 %62, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 164, i32 170
  store i32 %68, i32* %4, align 4
  br label %175

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 1
  %74 = xor i32 %71, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 165, i32 169
  store i32 %77, i32* %4, align 4
  br label %175

78:                                               ; preds = %3
  %79 = load i32, i32* %7, align 4
  %80 = lshr i32 %79, 1
  %81 = and i32 %80, 1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 1
  %84 = xor i32 %81, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 164, i32 170
  store i32 %87, i32* %4, align 4
  br label %175

88:                                               ; preds = %3
  %89 = load i32, i32* %7, align 4
  %90 = lshr i32 %89, 1
  %91 = and i32 %90, 1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 1
  %94 = xor i32 %91, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 165, i32 169
  store i32 %97, i32* %4, align 4
  br label %175

98:                                               ; preds = %3
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 164, i32 170
  store i32 %102, i32* %4, align 4
  br label %175

103:                                              ; preds = %3
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 164, i32 170
  store i32 %108, i32* %4, align 4
  br label %175

109:                                              ; preds = %3
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %115 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = urem i32 %113, %116
  %118 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %119 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = udiv i32 %120, 2
  %122 = icmp eq i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %112, %109
  store i32 170, i32* %4, align 4
  br label %175

124:                                              ; preds = %112
  store i32 164, i32* %4, align 4
  br label %175

125:                                              ; preds = %3
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %131 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = urem i32 %129, %132
  %134 = add i32 %133, 1
  %135 = udiv i32 %134, 2
  %136 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %137 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = udiv i32 %138, 4
  %140 = icmp eq i32 %135, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %128, %125
  store i32 170, i32* %4, align 4
  br label %175

142:                                              ; preds = %128
  store i32 164, i32* %4, align 4
  br label %175

143:                                              ; preds = %3
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %149 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = urem i32 %147, %150
  %152 = add i32 %151, 10
  %153 = udiv i32 %152, 20
  %154 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %155 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = udiv i32 %156, 40
  %158 = icmp eq i32 %153, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %146, %143
  store i32 170, i32* %4, align 4
  br label %175

160:                                              ; preds = %146
  store i32 164, i32* %4, align 4
  br label %175

161:                                              ; preds = %3
  %162 = load i32, i32* @TPG_COLOR_RAMP, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %165 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = urem i32 %163, %166
  %168 = mul i32 %167, 256
  %169 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %170 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = udiv i32 %168, %171
  %173 = add i32 %162, %172
  store i32 %173, i32* %4, align 4
  br label %175

174:                                              ; preds = %3
  store i32 165, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %161, %160, %159, %142, %141, %124, %123, %103, %98, %88, %78, %69, %60, %50, %49, %48, %47, %46, %45, %40, %27, %11
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
