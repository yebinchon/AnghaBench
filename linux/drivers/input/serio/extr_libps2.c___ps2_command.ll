; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c___ps2_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c___ps2_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32, i32*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PS2_CMD_GETID = common dso_local global i32 0, align 4
@PS2_FLAG_WAITID = common dso_local global i32 0, align 4
@PS2_FLAG_ACK_CMD = common dso_local global i32 0, align 4
@PS2_CMD_RESET_BAT = common dso_local global i32 0, align 4
@PS2_FLAG_CMD1 = common dso_local global i32 0, align 4
@PS2_FLAG_CMD = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%02x [%*ph] - %x/%08lx [%*ph]\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ps2_command(%struct.ps2dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  store %struct.ps2dev* %0, %struct.ps2dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = lshr i32 %14, 12
  %16 = and i32 %15, 15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 15
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = call i32 @WARN_ON(i32 1)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %276

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = call i32 @WARN_ON(i32 1)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %276

37:                                               ; preds = %30, %27
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %43 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @serio_pause_rx(%struct.TYPE_3__* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PS2_CMD_GETID, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @PS2_FLAG_WAITID, align 4
  br label %52

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %55 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %58 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %52
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %76 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sub i32 %78, 1
  %80 = load i32, i32* %12, align 4
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  store i32 %74, i32* %83, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %65

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %61, %52
  %89 = load i32, i32* @PS2_FLAG_ACK_CMD, align 4
  %90 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %91 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @PS2_CMD_RESET_BAT, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1000, i32 200
  store i32 %98, i32* %8, align 4
  %99 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 255
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ps2_do_sendbyte(%struct.ps2dev* %99, i32 %101, i32 %102, i32 2)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %235

107:                                              ; preds = %88
  %108 = load i32, i32* @PS2_FLAG_ACK_CMD, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %111 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %130, %107
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ps2_do_sendbyte(%struct.ps2dev* %119, i32 %124, i32 200, i32 2)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %235

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %114

133:                                              ; preds = %114
  %134 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %135 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %134, i32 0, i32 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = call i32 @serio_continue_rx(%struct.TYPE_3__* %136)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @PS2_CMD_RESET_BAT, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 4000, i32 500
  %143 = call i32 @msecs_to_jiffies(i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %145 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %148 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @wait_event_timeout(i32 %146, i32 %154, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %158 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %133
  %162 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %163 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %186, label %168

168:                                              ; preds = %161
  %169 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @ps2_adjust_timeout(%struct.ps2dev* %169, i32 %170, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %174 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %177 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @PS2_FLAG_CMD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @wait_event_timeout(i32 %175, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %168, %161, %133
  %187 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %188 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %187, i32 0, i32 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = call i32 @serio_pause_rx(%struct.TYPE_3__* %189)
  %191 = load i32*, i32** %6, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %217

193:                                              ; preds = %186
  store i32 0, i32* %12, align 4
  br label %194

194:                                              ; preds = %213, %193
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %194
  %199 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %200 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sub i32 %202, 1
  %204 = load i32, i32* %12, align 4
  %205 = sub i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %198
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %194

216:                                              ; preds = %194
  br label %217

217:                                              ; preds = %216, %186
  %218 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %219 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @PS2_CMD_RESET_BAT, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %228 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 1
  br i1 %230, label %231, label %234

231:                                              ; preds = %226, %222
  %232 = load i32, i32* @EPROTO, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %11, align 4
  br label %235

234:                                              ; preds = %226, %217
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %234, %231, %128, %106
  %236 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %237 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %236, i32 0, i32 0
  store i32 0, i32* %237, align 8
  %238 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %239 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %238, i32 0, i32 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = call i32 @serio_continue_rx(%struct.TYPE_3__* %240)
  %242 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %243 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %242, i32 0, i32 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %7, align 4
  %247 = and i32 %246, 255
  %248 = load i32, i32* %9, align 4
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %250 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %251 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %254 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = load i32*, i32** %6, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %235
  br label %262

260:                                              ; preds = %235
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  br label %262

262:                                              ; preds = %260, %259
  %263 = phi i32* [ %257, %259 ], [ %261, %260 ]
  %264 = call i32 @dev_dbg(i32* %245, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %247, i32 %248, i32* %249, i32 %252, i32 %255, i32 %256, i32* %263)
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @EAGAIN, align 4
  %267 = sub nsw i32 0, %266
  %268 = icmp ne i32 %265, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load i32, i32* %11, align 4
  br label %274

271:                                              ; preds = %262
  %272 = load i32, i32* @EPROTO, align 4
  %273 = sub nsw i32 0, %272
  br label %274

274:                                              ; preds = %271, %269
  %275 = phi i32 [ %270, %269 ], [ %273, %271 ]
  store i32 %275, i32* %4, align 4
  br label %276

276:                                              ; preds = %274, %33, %23
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @serio_pause_rx(%struct.TYPE_3__*) #1

declare dso_local i32 @ps2_do_sendbyte(%struct.ps2dev*, i32, i32, i32) #1

declare dso_local i32 @serio_continue_rx(%struct.TYPE_3__*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @ps2_adjust_timeout(%struct.ps2dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
