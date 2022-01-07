; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_mp_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_mp_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@IO_RETRY = common dso_local global i32 0, align 4
@IO_RESET = common dso_local global i32 0, align 4
@PACKET_FULL = common dso_local global i32 0, align 4
@PACKET_IO_FAST = common dso_local global i32 0, align 4
@PACKET_IO_SLOW = common dso_local global i32 0, align 4
@PACKET_MP_DONE = common dso_local global i32 0, align 4
@IO_GOT_PACKET = common dso_local global i32 0, align 4
@PACKET_MP_MORE = common dso_local global i32 0, align 4
@IO_MODE_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32, i32, i32*)* @mp_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_io(%struct.gameport* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gameport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.gameport*, %struct.gameport** %6, align 8
  %18 = call i32 @gameport_read(%struct.gameport* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @IO_RETRY, align 4
  store i32 %23, i32* %5, align 4
  br label %249

24:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.gameport*, %struct.gameport** %6, align 8
  %30 = call i32 @gameport_read(%struct.gameport* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 3
  %34 = shl i32 1, %33
  %35 = load i32, i32* %14, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %15, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load %struct.gameport*, %struct.gameport** %6, align 8
  %45 = call i32 @gameport_read(%struct.gameport* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 240
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 49
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @IO_RESET, align 4
  store i32 %52, i32* %5, align 4
  br label %249

53:                                               ; preds = %43
  %54 = load %struct.gameport*, %struct.gameport** %6, align 8
  %55 = call i32 @gameport_trigger(%struct.gameport* %54)
  %56 = load %struct.gameport*, %struct.gameport** %6, align 8
  %57 = call i32 @poll_until(i32 16, i32 0, i32 308, %struct.gameport* %56, i32* %10)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @IO_RESET, align 4
  store i32 %60, i32* %5, align 4
  br label %249

61:                                               ; preds = %53
  br label %64

62:                                               ; preds = %40
  %63 = load i32, i32* @IO_RETRY, align 4
  store i32 %63, i32* %5, align 4
  br label %249

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 11
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %249

76:                                               ; preds = %68
  store i32 7, i32* %11, align 4
  store i32 3, i32* %13, align 4
  %77 = load i32, i32* @PACKET_FULL, align 4
  %78 = load i32, i32* @PACKET_IO_FAST, align 4
  %79 = or i32 %77, %78
  %80 = ashr i32 %79, 28
  store i32 %80, i32* %12, align 4
  br label %86

81:                                               ; preds = %64
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %82 = load i32, i32* @PACKET_FULL, align 4
  %83 = load i32, i32* @PACKET_IO_SLOW, align 4
  %84 = or i32 %82, %83
  %85 = ashr i32 %84, 28
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %114
  %88 = load %struct.gameport*, %struct.gameport** %6, align 8
  %89 = call i32 @poll_until(i32 0, i32 16, i32 77, %struct.gameport* %88, i32* %10)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @IO_RESET, align 4
  store i32 %92, i32* %5, align 4
  br label %249

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = ashr i32 %94, 5
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @PACKET_FULL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %115

103:                                              ; preds = %93
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.gameport*, %struct.gameport** %6, align 8
  %110 = call i32 @poll_until(i32 16, i32 0, i32 77, %struct.gameport* %109, i32* %10)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @IO_RESET, align 4
  store i32 %113, i32* %5, align 4
  br label %249

114:                                              ; preds = %103
  br label %87

115:                                              ; preds = %102
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @IO_RESET, align 4
  store i32 %119, i32* %5, align 4
  br label %249

120:                                              ; preds = %115
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, -65536
  %126 = load i32, i32* %12, align 4
  %127 = shl i32 %126, 1
  %128 = and i32 %127, 65535
  %129 = or i32 %125, %128
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = ashr i32 %130, 2
  %132 = or i32 %131, -268435456
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %123, %120
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @bit_parity(i32 %134)
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @IO_RESET, align 4
  store i32 %138, i32* %5, align 4
  br label %249

139:                                              ; preds = %133
  %140 = load %struct.gameport*, %struct.gameport** %6, align 8
  %141 = call i32 @poll_until(i32 48, i32 0, i32 77, %struct.gameport* %140, i32* %10)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @IO_RESET, align 4
  store i32 %144, i32* %5, align 4
  br label %249

145:                                              ; preds = %139
  %146 = load %struct.gameport*, %struct.gameport** %6, align 8
  %147 = call i32 @gameport_read(%struct.gameport* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @IO_RESET, align 4
  store i32 %152, i32* %5, align 4
  br label %249

153:                                              ; preds = %145
  %154 = load %struct.gameport*, %struct.gameport** %6, align 8
  %155 = call i32 @gameport_trigger(%struct.gameport* %154)
  %156 = load %struct.gameport*, %struct.gameport** %6, align 8
  %157 = call i32 @poll_until(i32 0, i32 32, i32 77, %struct.gameport* %156, i32* %10)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* @IO_RESET, align 4
  store i32 %160, i32* %5, align 4
  br label %249

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @IO_RETRY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @PACKET_MP_DONE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171, %161
  %177 = load i32, i32* @IO_GOT_PACKET, align 4
  store i32 %177, i32* %5, align 4
  br label %249

178:                                              ; preds = %171, %166
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @PACKET_MP_MORE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @IO_GOT_PACKET, align 4
  %185 = load i32, i32* @IO_RETRY, align 4
  %186 = or i32 %184, %185
  store i32 %186, i32* %5, align 4
  br label %249

187:                                              ; preds = %178
  %188 = load %struct.gameport*, %struct.gameport** %6, align 8
  %189 = call i32 @poll_until(i32 32, i32 0, i32 77, %struct.gameport* %188, i32* %10)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* @IO_GOT_PACKET, align 4
  %193 = load i32, i32* @IO_RESET, align 4
  %194 = or i32 %192, %193
  store i32 %194, i32* %5, align 4
  br label %249

195:                                              ; preds = %187
  %196 = load %struct.gameport*, %struct.gameport** %6, align 8
  %197 = call i32 @gameport_read(%struct.gameport* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = and i32 %198, 1
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* @IO_GOT_PACKET, align 4
  %203 = load i32, i32* @IO_RESET, align 4
  %204 = or i32 %202, %203
  store i32 %204, i32* %5, align 4
  br label %249

205:                                              ; preds = %195
  %206 = load %struct.gameport*, %struct.gameport** %6, align 8
  %207 = call i32 @gameport_trigger(%struct.gameport* %206)
  br label %208

208:                                              ; preds = %242, %205
  %209 = load %struct.gameport*, %struct.gameport** %6, align 8
  %210 = call i32 @poll_until(i32 32, i32 16, i32 116, %struct.gameport* %209, i32* %10)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* @IO_GOT_PACKET, align 4
  %214 = load i32, i32* @IO_RESET, align 4
  %215 = or i32 %213, %214
  store i32 %215, i32* %5, align 4
  br label %249

216:                                              ; preds = %208
  %217 = load %struct.gameport*, %struct.gameport** %6, align 8
  %218 = call i32 @poll_until(i32 48, i32 0, i32 193, %struct.gameport* %217, i32* %10)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* @IO_GOT_PACKET, align 4
  %222 = load i32, i32* @IO_RESET, align 4
  %223 = or i32 %221, %222
  store i32 %223, i32* %5, align 4
  br label %249

224:                                              ; preds = %216
  %225 = load i32, i32* %10, align 4
  %226 = and i32 %225, 1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32, i32* @IO_GOT_PACKET, align 4
  %230 = load i32, i32* @IO_RESET, align 4
  %231 = or i32 %229, %230
  store i32 %231, i32* %5, align 4
  br label %249

232:                                              ; preds = %224
  %233 = load i32, i32* %8, align 4
  %234 = and i32 %233, 1
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load %struct.gameport*, %struct.gameport** %6, align 8
  %238 = call i32 @gameport_trigger(%struct.gameport* %237)
  br label %239

239:                                              ; preds = %236, %232
  %240 = load i32, i32* %8, align 4
  %241 = ashr i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %208, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* @IO_GOT_PACKET, align 4
  %247 = load i32, i32* @IO_MODE_FAST, align 4
  %248 = or i32 %246, %247
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %245, %228, %220, %212, %201, %191, %183, %176, %159, %151, %143, %137, %118, %112, %91, %75, %62, %59, %51, %22
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @poll_until(i32, i32, i32, %struct.gameport*, i32*) #1

declare dso_local i32 @bit_parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
