; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*, %struct.dtv_frontend_properties*, i32)* @dib7000p_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_set_channel(%struct.dib7000p_state* %0, %struct.dtv_frontend_properties* %1, i32 %2) #0 {
  %4 = alloca %struct.dib7000p_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BANDWIDTH_TO_KHZ(i32 %12)
  %14 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %9, i32 %13)
  store i32 0, i32* %7, align 4
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %23 [
    i32 130, label %18
    i32 129, label %20
    i32 128, label %24
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %7, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 256
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %3, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 128
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %20, %18
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %39 [
    i32 139, label %31
    i32 140, label %33
    i32 138, label %36
    i32 137, label %40
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %7, align 4
  br label %43

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 32
  store i32 %35, i32* %7, align 4
  br label %43

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 96
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %27, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 64
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %36, %33, %31
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %52 [
    i32 131, label %47
    i32 133, label %49
    i32 132, label %53
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %7, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, 8
  store i32 %51, i32* %7, align 4
  br label %56

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %43, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 16
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %49, %47
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %59, i32 0, i32 %60)
  %62 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 4
  %65 = or i32 %64, 1
  %66 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %62, i32 5, i32 %65)
  store i32 0, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, 64
  store i32 %68, i32* %7, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, 16
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %56
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br i1 true, label %84, label %88

84:                                               ; preds = %83, %76
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  br label %92

88:                                               ; preds = %83
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %87, %84 ], [ %91, %88 ]
  switch i32 %93, label %106 [
    i32 144, label %94
    i32 143, label %97
    i32 142, label %100
    i32 141, label %103
    i32 145, label %107
  ]

94:                                               ; preds = %92
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, 4
  store i32 %96, i32* %7, align 4
  br label %110

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 6
  store i32 %99, i32* %7, align 4
  br label %110

100:                                              ; preds = %92
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, 10
  store i32 %102, i32* %7, align 4
  br label %110

103:                                              ; preds = %92
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, 14
  store i32 %105, i32* %7, align 4
  br label %110

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %92, %106
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, 2
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %103, %100, %97, %94
  %111 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %111, i32 208, i32 %112)
  %114 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %115 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %114, i32 26, i32 26240)
  %116 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %117 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %116, i32 32, i32 3)
  %118 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %119 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %118, i32 29, i32 4723)
  %120 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %121 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %120, i32 33, i32 5)
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %128 [
    i32 128, label %125
    i32 129, label %126
    i32 130, label %127
  ]

125:                                              ; preds = %110
  store i32 256, i32* %7, align 4
  br label %129

126:                                              ; preds = %110
  store i32 128, i32* %7, align 4
  br label %129

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %110, %127
  store i32 64, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %126, %125
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %142 [
    i32 140, label %133
    i32 137, label %136
    i32 138, label %139
    i32 139, label %143
  ]

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = mul nsw i32 %134, 2
  store i32 %135, i32* %7, align 4
  br label %146

136:                                              ; preds = %129
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 %137, 4
  store i32 %138, i32* %7, align 4
  br label %146

139:                                              ; preds = %129
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %140, 8
  store i32 %141, i32* %7, align 4
  br label %146

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %129, %142
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %143, %139, %136, %133
  %147 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %148 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = mul nsw i32 %153, 3
  %155 = sdiv i32 %154, 2
  %156 = add nsw i32 %155, 48
  %157 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %158 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  br label %170

159:                                              ; preds = %146
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %160, 3
  %162 = sdiv i32 %161, 2
  %163 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %164 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %162, %166
  %168 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %169 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %159, %152
  %171 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %172 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  %173 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %174 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %173, i32 0, i32 3
  %175 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %176 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dib7000p_set_diversity_in(i32* %174, i32 %177)
  %179 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %180 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %192 [
    i32 132, label %182
    i32 133, label %187
  ]

182:                                              ; preds = %170
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 328, i32* %183, align 16
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65520, i32* %184, align 4
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %185, align 8
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %186, align 4
  br label %197

187:                                              ; preds = %170
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 573, i32* %188, align 16
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65503, i32* %189, align 4
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %190, align 8
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65520, i32* %191, align 4
  br label %197

192:                                              ; preds = %170
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 2458, i32* %193, align 16
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65454, i32* %194, align 4
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 819, i32* %195, align 8
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %196, align 4
  br label %197

197:                                              ; preds = %192, %187, %182
  store i32 0, i32* %7, align 4
  br label %198

198:                                              ; preds = %210, %197
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 187, %203
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %202, i32 %204, i32 %208)
  br label %210

210:                                              ; preds = %201
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %198

213:                                              ; preds = %198
  ret void
}

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_set_diversity_in(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
