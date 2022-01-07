; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }

@DIB7000M_POWER_COR4_DINTLV_ICIRM_EQUAL_CFROD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*, %struct.dtv_frontend_properties*, i32)* @dib7000m_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000m_set_channel(%struct.dib7000m_state* %0, %struct.dtv_frontend_properties* %1, i32 %2) #0 {
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BANDWIDTH_TO_KHZ(i32 %12)
  %14 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %9, i32 %13)
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
  %59 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %59, i32 0, i32 %60)
  %62 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 4
  %65 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %62, i32 5, i32 %64)
  store i32 0, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, 64
  store i32 %67, i32* %7, align 4
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, 16
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %56
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br i1 true, label %83, label %87

83:                                               ; preds = %82, %75
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  br label %91

87:                                               ; preds = %82
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i32 [ %86, %83 ], [ %90, %87 ]
  switch i32 %92, label %105 [
    i32 144, label %93
    i32 143, label %96
    i32 142, label %99
    i32 141, label %102
    i32 145, label %106
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, 4
  store i32 %95, i32* %7, align 4
  br label %109

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, 6
  store i32 %98, i32* %7, align 4
  br label %109

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, 10
  store i32 %101, i32* %7, align 4
  br label %109

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, 14
  store i32 %104, i32* %7, align 4
  br label %109

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %91, %105
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, 2
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %102, %99, %96, %93
  %110 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %111 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %112 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 267, %113
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %110, i32 %114, i32 %115)
  %117 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %118 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %117, i32 26, i32 26240)
  %119 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %120 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %119, i32 29, i32 4723)
  %121 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %122 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %121, i32 32, i32 3)
  %123 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %124 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %123, i32 33, i32 5)
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %131 [
    i32 128, label %128
    i32 129, label %129
    i32 130, label %130
  ]

128:                                              ; preds = %109
  store i32 256, i32* %7, align 4
  br label %132

129:                                              ; preds = %109
  store i32 128, i32* %7, align 4
  br label %132

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %109, %130
  store i32 64, i32* %7, align 4
  br label %132

132:                                              ; preds = %131, %129, %128
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %145 [
    i32 140, label %136
    i32 137, label %139
    i32 138, label %142
    i32 139, label %146
  ]

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 %137, 2
  store i32 %138, i32* %7, align 4
  br label %149

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %140, 4
  store i32 %141, i32* %7, align 4
  br label %149

142:                                              ; preds = %132
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 %143, 8
  store i32 %144, i32* %7, align 4
  br label %149

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %132, %145
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %146, %142, %139, %136
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 %150, 3
  %152 = sdiv i32 %151, 2
  %153 = add nsw i32 %152, 32
  %154 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %155 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %157 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %156, i32 0, i32 3
  store i32 0, i32* %157, align 4
  %158 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %159 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %158, i32 0, i32 5
  %160 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %161 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dib7000m_set_diversity_in(i32* %159, i32 %162)
  %164 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %165 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %177 [
    i32 132, label %167
    i32 133, label %172
  ]

167:                                              ; preds = %149
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 328, i32* %168, align 16
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65520, i32* %169, align 4
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %170, align 8
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %171, align 4
  br label %182

172:                                              ; preds = %149
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 573, i32* %173, align 16
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65503, i32* %174, align 4
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %175, align 8
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65520, i32* %176, align 4
  br label %182

177:                                              ; preds = %149
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 2458, i32* %178, align 16
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65454, i32* %179, align 4
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 819, i32* %180, align 8
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %172, %167
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %199, %182
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %186, label %202

186:                                              ; preds = %183
  %187 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 214, %188
  %190 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %191 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %187, i32 %193, i32 %197)
  br label %199

199:                                              ; preds = %186
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %183

202:                                              ; preds = %183
  %203 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %204 = load i32, i32* @DIB7000M_POWER_COR4_DINTLV_ICIRM_EQUAL_CFROD, align 4
  %205 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %203, i32 %204)
  ret void
}

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_set_diversity_in(i32*, i32) #1

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
