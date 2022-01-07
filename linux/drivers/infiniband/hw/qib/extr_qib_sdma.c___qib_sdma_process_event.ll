; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sdma.c___qib_sdma_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sdma.c___qib_sdma_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__*, %struct.qib_sdma_state }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*)* }
%struct.qib_sdma_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qib_sdma_process_event(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_sdma_state*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 1
  store %struct.qib_sdma_state* %7, %struct.qib_sdma_state** %5, align 8
  %8 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %9 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %199 [
    i32 134, label %11
    i32 133, label %34
    i32 132, label %64
    i32 131, label %86
    i32 130, label %110
    i32 129, label %136
    i32 128, label %167
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %33 [
    i32 145, label %13
    i32 142, label %14
    i32 144, label %17
    i32 143, label %23
    i32 141, label %24
    i32 140, label %27
    i32 139, label %28
    i32 138, label %29
    i32 137, label %30
    i32 136, label %31
    i32 135, label %32
  ]

13:                                               ; preds = %11
  br label %33

14:                                               ; preds = %11
  %15 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %16 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %14
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 1
  %20 = call i32 @sdma_get(%struct.qib_sdma_state* %19)
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %22 = call i32 @sdma_set_state(%struct.qib_pportdata* %21, i32 133)
  br label %33

23:                                               ; preds = %11
  br label %33

24:                                               ; preds = %11
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %26 = call i32 @sdma_sw_tear_down(%struct.qib_pportdata* %25)
  br label %33

27:                                               ; preds = %11
  br label %33

28:                                               ; preds = %11
  br label %33

29:                                               ; preds = %11
  br label %33

30:                                               ; preds = %11
  br label %33

31:                                               ; preds = %11
  br label %33

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %11, %32, %31, %30, %29, %28, %27, %24, %23, %17, %13
  br label %199

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %63 [
    i32 145, label %36
    i32 144, label %41
    i32 143, label %42
    i32 142, label %51
    i32 141, label %54
    i32 140, label %55
    i32 139, label %56
    i32 138, label %57
    i32 137, label %60
    i32 136, label %61
    i32 135, label %62
  ]

36:                                               ; preds = %34
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %38 = call i32 @sdma_set_state(%struct.qib_pportdata* %37, i32 134)
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %40 = call i32 @sdma_sw_tear_down(%struct.qib_pportdata* %39)
  br label %63

41:                                               ; preds = %34
  br label %63

42:                                               ; preds = %34
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %44 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %45 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 128, i32 132
  %50 = call i32 @sdma_set_state(%struct.qib_pportdata* %43, i32 %49)
  br label %63

51:                                               ; preds = %34
  %52 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %53 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %63

54:                                               ; preds = %34
  br label %63

55:                                               ; preds = %34
  br label %63

56:                                               ; preds = %34
  br label %63

57:                                               ; preds = %34
  %58 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %59 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %63

60:                                               ; preds = %34
  br label %63

61:                                               ; preds = %34
  br label %63

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %34, %62, %61, %60, %57, %56, %55, %54, %51, %42, %41, %36
  br label %199

64:                                               ; preds = %2
  %65 = load i32, i32* %4, align 4
  switch i32 %65, label %85 [
    i32 145, label %66
    i32 144, label %71
    i32 143, label %72
    i32 142, label %73
    i32 141, label %78
    i32 140, label %79
    i32 139, label %80
    i32 138, label %81
    i32 137, label %82
    i32 136, label %83
    i32 135, label %84
  ]

66:                                               ; preds = %64
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %68 = call i32 @sdma_set_state(%struct.qib_pportdata* %67, i32 134)
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %70 = call i32 @sdma_sw_tear_down(%struct.qib_pportdata* %69)
  br label %85

71:                                               ; preds = %64
  br label %85

72:                                               ; preds = %64
  br label %85

73:                                               ; preds = %64
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %75 = call i32 @sdma_set_state(%struct.qib_pportdata* %74, i32 128)
  %76 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %77 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  br label %85

78:                                               ; preds = %64
  br label %85

79:                                               ; preds = %64
  br label %85

80:                                               ; preds = %64
  br label %85

81:                                               ; preds = %64
  br label %85

82:                                               ; preds = %64
  br label %85

83:                                               ; preds = %64
  br label %85

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %64, %84, %83, %82, %81, %80, %79, %78, %73, %72, %71, %66
  br label %199

86:                                               ; preds = %2
  %87 = load i32, i32* %4, align 4
  switch i32 %87, label %109 [
    i32 145, label %88
    i32 144, label %91
    i32 143, label %92
    i32 142, label %93
    i32 141, label %96
    i32 140, label %101
    i32 139, label %102
    i32 138, label %103
    i32 137, label %106
    i32 136, label %107
    i32 135, label %108
  ]

88:                                               ; preds = %86
  %89 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %90 = call i32 @sdma_set_state(%struct.qib_pportdata* %89, i32 134)
  br label %109

91:                                               ; preds = %86
  br label %109

92:                                               ; preds = %86
  br label %109

93:                                               ; preds = %86
  %94 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %95 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %109

96:                                               ; preds = %86
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %98 = call i32 @sdma_set_state(%struct.qib_pportdata* %97, i32 133)
  %99 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %100 = call i32 @sdma_hw_start_up(%struct.qib_pportdata* %99)
  br label %109

101:                                              ; preds = %86
  br label %109

102:                                              ; preds = %86
  br label %109

103:                                              ; preds = %86
  %104 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %105 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  br label %109

106:                                              ; preds = %86
  br label %109

107:                                              ; preds = %86
  br label %109

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %86, %108, %107, %106, %103, %102, %101, %96, %93, %92, %91, %88
  br label %199

110:                                              ; preds = %2
  %111 = load i32, i32* %4, align 4
  switch i32 %111, label %135 [
    i32 145, label %112
    i32 144, label %117
    i32 143, label %118
    i32 142, label %119
    i32 141, label %122
    i32 140, label %123
    i32 139, label %128
    i32 138, label %129
    i32 137, label %132
    i32 136, label %133
    i32 135, label %134
  ]

112:                                              ; preds = %110
  %113 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %114 = call i32 @sdma_set_state(%struct.qib_pportdata* %113, i32 134)
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %116 = call i32 @sdma_start_sw_clean_up(%struct.qib_pportdata* %115)
  br label %135

117:                                              ; preds = %110
  br label %135

118:                                              ; preds = %110
  br label %135

119:                                              ; preds = %110
  %120 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %121 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %135

122:                                              ; preds = %110
  br label %135

123:                                              ; preds = %110
  %124 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %125 = call i32 @sdma_set_state(%struct.qib_pportdata* %124, i32 131)
  %126 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %127 = call i32 @sdma_start_sw_clean_up(%struct.qib_pportdata* %126)
  br label %135

128:                                              ; preds = %110
  br label %135

129:                                              ; preds = %110
  %130 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %131 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %135

132:                                              ; preds = %110
  br label %135

133:                                              ; preds = %110
  br label %135

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %110, %134, %133, %132, %129, %128, %123, %122, %119, %118, %117, %112
  br label %199

136:                                              ; preds = %2
  %137 = load i32, i32* %4, align 4
  switch i32 %137, label %166 [
    i32 145, label %138
    i32 144, label %143
    i32 143, label %144
    i32 142, label %145
    i32 141, label %148
    i32 140, label %149
    i32 139, label %150
    i32 138, label %160
    i32 137, label %163
    i32 136, label %164
    i32 135, label %165
  ]

138:                                              ; preds = %136
  %139 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %140 = call i32 @sdma_set_state(%struct.qib_pportdata* %139, i32 134)
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %142 = call i32 @sdma_start_sw_clean_up(%struct.qib_pportdata* %141)
  br label %166

143:                                              ; preds = %136
  br label %166

144:                                              ; preds = %136
  br label %166

145:                                              ; preds = %136
  %146 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %147 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  br label %166

148:                                              ; preds = %136
  br label %166

149:                                              ; preds = %136
  br label %166

150:                                              ; preds = %136
  %151 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %152 = call i32 @sdma_set_state(%struct.qib_pportdata* %151, i32 130)
  %153 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %154 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %156, align 8
  %158 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %159 = call i32 %157(%struct.qib_pportdata* %158)
  br label %166

160:                                              ; preds = %136
  %161 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %162 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  br label %166

163:                                              ; preds = %136
  br label %166

164:                                              ; preds = %136
  br label %166

165:                                              ; preds = %136
  br label %166

166:                                              ; preds = %136, %165, %164, %163, %160, %150, %149, %148, %145, %144, %143, %138
  br label %199

167:                                              ; preds = %2
  %168 = load i32, i32* %4, align 4
  switch i32 %168, label %198 [
    i32 145, label %169
    i32 144, label %174
    i32 143, label %175
    i32 142, label %176
    i32 141, label %177
    i32 140, label %178
    i32 139, label %179
    i32 138, label %184
    i32 137, label %189
    i32 136, label %194
    i32 135, label %197
  ]

169:                                              ; preds = %167
  %170 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %171 = call i32 @sdma_set_state(%struct.qib_pportdata* %170, i32 134)
  %172 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %173 = call i32 @sdma_start_sw_clean_up(%struct.qib_pportdata* %172)
  br label %198

174:                                              ; preds = %167
  br label %198

175:                                              ; preds = %167
  br label %198

176:                                              ; preds = %167
  br label %198

177:                                              ; preds = %167
  br label %198

178:                                              ; preds = %167
  br label %198

179:                                              ; preds = %167
  %180 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %181 = call i32 @sdma_set_state(%struct.qib_pportdata* %180, i32 131)
  %182 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %183 = call i32 @sdma_start_sw_clean_up(%struct.qib_pportdata* %182)
  br label %198

184:                                              ; preds = %167
  %185 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %186 = call i32 @sdma_set_state(%struct.qib_pportdata* %185, i32 129)
  %187 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %188 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  br label %198

189:                                              ; preds = %167
  %190 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %191 = call i32 @sdma_set_state(%struct.qib_pportdata* %190, i32 131)
  %192 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %193 = call i32 @sdma_start_sw_clean_up(%struct.qib_pportdata* %192)
  br label %198

194:                                              ; preds = %167
  %195 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %196 = call i32 @sdma_set_state(%struct.qib_pportdata* %195, i32 129)
  br label %198

197:                                              ; preds = %167
  br label %198

198:                                              ; preds = %167, %197, %194, %189, %184, %179, %178, %177, %176, %175, %174, %169
  br label %199

199:                                              ; preds = %2, %198, %166, %135, %109, %85, %63, %33
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %202 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  ret void
}

declare dso_local i32 @sdma_get(%struct.qib_sdma_state*) #1

declare dso_local i32 @sdma_set_state(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @sdma_sw_tear_down(%struct.qib_pportdata*) #1

declare dso_local i32 @sdma_hw_start_up(%struct.qib_pportdata*) #1

declare dso_local i32 @sdma_start_sw_clean_up(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
