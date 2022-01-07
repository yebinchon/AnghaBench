; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)* }
%struct.wiimote_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@handler_ext.invalid = internal constant [21 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_PLUGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MP hotplug: 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MP hotplug: 0\0A\00", align 1
@WIIPROTO_FLAG_EXT_ACTIVE = common dso_local global i32 0, align 4
@wiimod_ext_table = common dso_local global %struct.wiimod_ops** null, align 8
@wiimod_mp = common dso_local global %struct.wiimod_ops zeroinitializer, align 8
@wiimote_devtype_mods = common dso_local global i32** null, align 8
@WIIMOD_NULL = common dso_local global i32 0, align 4
@wiimod_table = common dso_local global %struct.wiimod_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*, i64)* @handler_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_ext(%struct.wiimote_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wiimod_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 21
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 21, i64* %6, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 6
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @memcmp(i32* %18, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @handler_ext.invalid, i64 0, i64 0), i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %14
  br label %238

23:                                               ; preds = %17
  %24 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %25 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %238

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %46 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %44
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %54 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hid_dbg(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %58 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %59 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %64 = call i32 @__wiimote_schedule(%struct.wiimote_data* %63)
  br label %65

65:                                               ; preds = %52, %44
  br label %96

66:                                               ; preds = %38
  %67 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %68 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %66
  %75 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %76 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @hid_dbg(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %82 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %89 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %94 = call i32 @__wiimote_schedule(%struct.wiimote_data* %93)
  br label %95

95:                                               ; preds = %74, %66
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 2
  store i32 %100, i32* %10, align 4
  br label %102

101:                                              ; preds = %23
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %104 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %238

114:                                              ; preds = %110, %102
  %115 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_ext_table, align 8
  %116 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %117 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %115, i64 %119
  %121 = load %struct.wiimod_ops*, %struct.wiimod_ops** %120, align 8
  store %struct.wiimod_ops* %121, %struct.wiimod_ops** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %114
  %125 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %126 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %125, i32 0, i32 1
  %127 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %126, align 8
  %128 = icmp ne i32 (%struct.wiimote_data*, i32*)* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %131 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %130, i32 0, i32 1
  %132 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %131, align 8
  %133 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 %132(%struct.wiimote_data* %133, i32* %134)
  br label %238

136:                                              ; preds = %124, %114
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %136
  %140 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %141 = load i64, i64* %6, align 8
  %142 = call i64 @valid_ext_handler(%struct.wiimod_ops* %140, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %146 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %145, i32 0, i32 0
  %147 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %146, align 8
  %148 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 %147(%struct.wiimote_data* %148, i32* %149)
  br label %238

151:                                              ; preds = %139, %136
  br label %152

152:                                              ; preds = %151
  store %struct.wiimod_ops* @wiimod_mp, %struct.wiimod_ops** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %157 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %156, i32 0, i32 1
  %158 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %157, align 8
  %159 = icmp ne i32 (%struct.wiimote_data*, i32*)* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %162 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %161, i32 0, i32 1
  %163 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %162, align 8
  %164 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 %163(%struct.wiimote_data* %164, i32* %165)
  br label %238

167:                                              ; preds = %155, %152
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %167
  %171 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i64 @valid_ext_handler(%struct.wiimod_ops* %171, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %177 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %176, i32 0, i32 0
  %178 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %177, align 8
  %179 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 %178(%struct.wiimote_data* %179, i32* %180)
  br label %238

182:                                              ; preds = %170, %167
  br label %183

183:                                              ; preds = %182
  %184 = load i32**, i32*** @wiimote_devtype_mods, align 8
  %185 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %186 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32*, i32** %184, i64 %188
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %8, align 8
  %191 = load i32*, i32** %8, align 8
  store i32* %191, i32** %7, align 8
  br label %192

192:                                              ; preds = %235, %183
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @WIIMOD_NULL, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %238

197:                                              ; preds = %192
  %198 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %198, i64 %201
  %203 = load %struct.wiimod_ops*, %struct.wiimod_ops** %202, align 8
  store %struct.wiimod_ops* %203, %struct.wiimod_ops** %9, align 8
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %197
  %207 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %208 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %207, i32 0, i32 1
  %209 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %208, align 8
  %210 = icmp ne i32 (%struct.wiimote_data*, i32*)* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %213 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %212, i32 0, i32 1
  %214 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %213, align 8
  %215 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 %214(%struct.wiimote_data* %215, i32* %216)
  br label %238

218:                                              ; preds = %206, %197
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %223 = load i64, i64* %6, align 8
  %224 = call i64 @valid_ext_handler(%struct.wiimod_ops* %222, i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = load %struct.wiimod_ops*, %struct.wiimod_ops** %9, align 8
  %228 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %227, i32 0, i32 0
  %229 = load i32 (%struct.wiimote_data*, i32*)*, i32 (%struct.wiimote_data*, i32*)** %228, align 8
  %230 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 %229(%struct.wiimote_data* %230, i32* %231)
  br label %238

233:                                              ; preds = %221, %218
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %7, align 8
  br label %192

238:                                              ; preds = %22, %37, %113, %129, %144, %160, %175, %211, %226, %192
  ret void
}

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @hid_dbg(i32, i8*) #1

declare dso_local i32 @__wiimote_schedule(%struct.wiimote_data*) #1

declare dso_local i64 @valid_ext_handler(%struct.wiimod_ops*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
