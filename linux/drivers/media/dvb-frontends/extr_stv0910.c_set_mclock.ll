; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_mclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_mclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RSTV0910_NCOARSE = common dso_local global i32 0, align 4
@RSTV0910_NCOARSE2 = common dso_local global i32 0, align 4
@RSTV0910_NCOARSE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32)* @set_mclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mclock(%struct.stv* %0, i32 %1) #0 {
  %3 = alloca %struct.stv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %12 = load %struct.stv*, %struct.stv** %3, align 8
  %13 = getelementptr inbounds %struct.stv, %struct.stv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 1000000
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, 1000000
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %9, align 4
  store i32 7, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 7
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 71
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 7, i32* %10, align 4
  br label %193

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 72
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 79
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 8, i32* %10, align 4
  br label %192

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 80
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %44, 87
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 9, i32* %10, align 4
  br label %191

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 88
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %51, 95
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 10, i32* %10, align 4
  br label %190

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 96
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 103
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 11, i32* %10, align 4
  br label %189

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %9, align 4
  %63 = icmp sge i32 %62, 104
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp sle i32 %65, 111
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 12, i32* %10, align 4
  br label %188

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp sge i32 %69, 112
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp sle i32 %72, 119
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 13, i32* %10, align 4
  br label %187

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %76, 120
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp sle i32 %79, 127
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 14, i32* %10, align 4
  br label %186

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 128
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp sle i32 %86, 135
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 15, i32* %10, align 4
  br label %185

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 136
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp sle i32 %93, 143
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 16, i32* %10, align 4
  br label %184

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 144
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp sle i32 %100, 151
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 17, i32* %10, align 4
  br label %183

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %9, align 4
  %105 = icmp sge i32 %104, 152
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = icmp sle i32 %107, 159
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 18, i32* %10, align 4
  br label %182

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %111, 160
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = icmp sle i32 %114, 167
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 19, i32* %10, align 4
  br label %181

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %9, align 4
  %119 = icmp sge i32 %118, 168
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = icmp sle i32 %121, 175
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 20, i32* %10, align 4
  br label %180

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %9, align 4
  %126 = icmp sge i32 %125, 176
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = icmp sle i32 %128, 183
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 21, i32* %10, align 4
  br label %179

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %9, align 4
  %133 = icmp sge i32 %132, 184
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = icmp sle i32 %135, 191
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 22, i32* %10, align 4
  br label %178

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %9, align 4
  %140 = icmp sge i32 %139, 192
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = icmp sle i32 %142, 199
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 23, i32* %10, align 4
  br label %177

145:                                              ; preds = %141, %138
  %146 = load i32, i32* %9, align 4
  %147 = icmp sge i32 %146, 200
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  %150 = icmp sle i32 %149, 207
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 24, i32* %10, align 4
  br label %176

152:                                              ; preds = %148, %145
  %153 = load i32, i32* %9, align 4
  %154 = icmp sge i32 %153, 208
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = icmp sle i32 %156, 215
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 25, i32* %10, align 4
  br label %175

159:                                              ; preds = %155, %152
  %160 = load i32, i32* %9, align 4
  %161 = icmp sge i32 %160, 216
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = icmp sle i32 %163, 223
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 26, i32* %10, align 4
  br label %174

166:                                              ; preds = %162, %159
  %167 = load i32, i32* %9, align 4
  %168 = icmp sge i32 %167, 224
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = icmp sle i32 %170, 225
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 27, i32* %10, align 4
  br label %173

173:                                              ; preds = %172, %169, %166
  br label %174

174:                                              ; preds = %173, %165
  br label %175

175:                                              ; preds = %174, %158
  br label %176

176:                                              ; preds = %175, %151
  br label %177

177:                                              ; preds = %176, %144
  br label %178

178:                                              ; preds = %177, %137
  br label %179

179:                                              ; preds = %178, %130
  br label %180

180:                                              ; preds = %179, %123
  br label %181

181:                                              ; preds = %180, %116
  br label %182

182:                                              ; preds = %181, %109
  br label %183

183:                                              ; preds = %182, %102
  br label %184

184:                                              ; preds = %183, %95
  br label %185

185:                                              ; preds = %184, %88
  br label %186

186:                                              ; preds = %185, %81
  br label %187

187:                                              ; preds = %186, %74
  br label %188

188:                                              ; preds = %187, %67
  br label %189

189:                                              ; preds = %188, %60
  br label %190

190:                                              ; preds = %189, %53
  br label %191

191:                                              ; preds = %190, %46
  br label %192

192:                                              ; preds = %191, %39
  br label %193

193:                                              ; preds = %192, %32
  %194 = load %struct.stv*, %struct.stv** %3, align 8
  %195 = load i32, i32* @RSTV0910_NCOARSE, align 4
  %196 = load i32, i32* %10, align 4
  %197 = shl i32 %196, 3
  %198 = load i32, i32* %5, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @write_reg(%struct.stv* %194, i32 %195, i32 %199)
  %201 = load %struct.stv*, %struct.stv** %3, align 8
  %202 = load i32, i32* @RSTV0910_NCOARSE2, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @write_reg(%struct.stv* %201, i32 %202, i32 %203)
  %205 = load %struct.stv*, %struct.stv** %3, align 8
  %206 = load i32, i32* @RSTV0910_NCOARSE1, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @write_reg(%struct.stv* %205, i32 %206, i32 %207)
  %209 = load i32, i32* %7, align 4
  %210 = mul nsw i32 %209, 2
  %211 = load i32, i32* %9, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* %5, align 4
  %214 = sdiv i32 %212, %213
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %6, align 4
  %217 = mul nsw i32 2, %216
  %218 = sdiv i32 %215, %217
  %219 = mul nsw i32 %218, 1000000
  %220 = load %struct.stv*, %struct.stv** %3, align 8
  %221 = getelementptr inbounds %struct.stv, %struct.stv* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  store i32 %219, i32* %223, align 4
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.stv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
