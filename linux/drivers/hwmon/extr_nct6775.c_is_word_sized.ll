; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_is_word_sized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_is_word_sized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct6775_data*, i32)* @is_word_sized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_word_sized(%struct.nct6775_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nct6775_data*, align 8
  %5 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %7 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %251 [
    i32 139, label %9
    i32 138, label %39
    i32 137, label %87
    i32 136, label %140
    i32 135, label %193
    i32 134, label %193
    i32 133, label %193
    i32 132, label %193
    i32 131, label %193
    i32 130, label %193
    i32 129, label %193
    i32 128, label %193
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %36, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 36
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 224
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 226
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 228
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 273
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 289
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 305
  br label %36

36:                                               ; preds = %33, %30, %27, %24, %21, %18, %15, %12, %9
  %37 = phi i1 [ true, %30 ], [ true, %27 ], [ true, %24 ], [ true, %21 ], [ true, %18 ], [ true, %15 ], [ true, %12 ], [ true, %9 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %252

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %84, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %84, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 36
  br i1 %47, label %84, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 38
  br i1 %50, label %84, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 40
  br i1 %53, label %84, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 224
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 226
  br i1 %59, label %84, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 228
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 230
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 232
  br i1 %68, label %84, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 273
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 289
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 305
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 401
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 417
  br label %84

84:                                               ; preds = %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39
  %85 = phi i1 [ true, %78 ], [ true, %75 ], [ true, %72 ], [ true, %69 ], [ true, %66 ], [ true, %63 ], [ true, %60 ], [ true, %57 ], [ true, %54 ], [ true, %51 ], [ true, %48 ], [ true, %45 ], [ true, %42 ], [ true, %39 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %252

87:                                               ; preds = %2
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 65280
  %90 = icmp eq i32 %89, 256
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 65280
  %94 = icmp eq i32 %93, 512
  br i1 %94, label %95, label %107

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 80
  br i1 %98, label %137, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 83
  br i1 %102, label %137, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %105, 85
  br i1 %106, label %137, label %107

107:                                              ; preds = %103, %91
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 65520
  %110 = icmp eq i32 %109, 1584
  br i1 %110, label %137, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 1600
  br i1 %113, label %137, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 1602
  br i1 %116, label %137, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 1634
  br i1 %119, label %137, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 65520
  %123 = icmp eq i32 %122, 1616
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, 15
  %127 = icmp sge i32 %126, 6
  br i1 %127, label %137, label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %5, align 4
  %130 = icmp eq i32 %129, 115
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 117
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 119
  br label %137

137:                                              ; preds = %134, %131, %128, %124, %117, %114, %111, %107, %103, %99, %95
  %138 = phi i1 [ true, %131 ], [ true, %128 ], [ true, %124 ], [ true, %117 ], [ true, %114 ], [ true, %111 ], [ true, %107 ], [ true, %103 ], [ true, %99 ], [ true, %95 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %3, align 4
  br label %252

140:                                              ; preds = %2
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, 65280
  %143 = icmp eq i32 %142, 256
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, 65280
  %147 = icmp eq i32 %146, 512
  br i1 %147, label %148, label %160

148:                                              ; preds = %144, %140
  %149 = load i32, i32* %5, align 4
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 80
  br i1 %151, label %190, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 255
  %155 = icmp eq i32 %154, 83
  br i1 %155, label %190, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, 255
  %159 = icmp eq i32 %158, 85
  br i1 %159, label %190, label %160

160:                                              ; preds = %156, %144
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 65520
  %163 = icmp eq i32 %162, 1584
  br i1 %163, label %190, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %5, align 4
  %166 = icmp eq i32 %165, 1026
  br i1 %166, label %190, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, 1600
  br i1 %169, label %190, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %5, align 4
  %172 = icmp eq i32 %171, 1602
  br i1 %172, label %190, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 65520
  %176 = icmp eq i32 %175, 1616
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 15
  %180 = icmp sge i32 %179, 6
  br i1 %180, label %190, label %181

181:                                              ; preds = %177, %173
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, 115
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %5, align 4
  %186 = icmp eq i32 %185, 117
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %5, align 4
  %189 = icmp eq i32 %188, 119
  br label %190

190:                                              ; preds = %187, %184, %181, %177, %170, %167, %164, %160, %156, %152, %148
  %191 = phi i1 [ true, %184 ], [ true, %181 ], [ true, %177 ], [ true, %170 ], [ true, %167 ], [ true, %164 ], [ true, %160 ], [ true, %156 ], [ true, %152 ], [ true, %148 ], [ %189, %187 ]
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %3, align 4
  br label %252

193:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %194, 336
  br i1 %195, label %248, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %5, align 4
  %198 = icmp eq i32 %197, 339
  br i1 %198, label %248, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %5, align 4
  %201 = icmp eq i32 %200, 341
  br i1 %201, label %248, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %5, align 4
  %204 = and i32 %203, 65520
  %205 = icmp eq i32 %204, 1216
  br i1 %205, label %248, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* %5, align 4
  %208 = icmp eq i32 %207, 1026
  br i1 %208, label %248, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %5, align 4
  %211 = icmp eq i32 %210, 1594
  br i1 %211, label %248, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %5, align 4
  %214 = icmp eq i32 %213, 1596
  br i1 %214, label %248, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = icmp eq i32 %216, 1598
  br i1 %217, label %248, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %5, align 4
  %220 = icmp eq i32 %219, 1600
  br i1 %220, label %248, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %5, align 4
  %223 = icmp eq i32 %222, 1602
  br i1 %223, label %248, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %5, align 4
  %226 = icmp eq i32 %225, 1610
  br i1 %226, label %248, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %5, align 4
  %229 = icmp eq i32 %228, 1612
  br i1 %229, label %248, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %5, align 4
  %232 = icmp eq i32 %231, 115
  br i1 %232, label %248, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %5, align 4
  %235 = icmp eq i32 %234, 117
  br i1 %235, label %248, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %5, align 4
  %238 = icmp eq i32 %237, 119
  br i1 %238, label %248, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %5, align 4
  %241 = icmp eq i32 %240, 121
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %5, align 4
  %244 = icmp eq i32 %243, 123
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %5, align 4
  %247 = icmp eq i32 %246, 125
  br label %248

248:                                              ; preds = %245, %242, %239, %236, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %202, %199, %196, %193
  %249 = phi i1 [ true, %242 ], [ true, %239 ], [ true, %236 ], [ true, %233 ], [ true, %230 ], [ true, %227 ], [ true, %224 ], [ true, %221 ], [ true, %218 ], [ true, %215 ], [ true, %212 ], [ true, %209 ], [ true, %206 ], [ true, %202 ], [ true, %199 ], [ true, %196 ], [ true, %193 ], [ %247, %245 ]
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %3, align 4
  br label %252

251:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %251, %248, %190, %137, %84, %36
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
