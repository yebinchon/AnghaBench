; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { i32, i32, i32, i64, i32, %struct.adxl34x_platform_data }
%struct.adxl34x_platform_data = type { i32, i32, i64, i32*, i32*, i64, i32 }

@TAP_X_EN = common dso_local global i32 0, align 4
@TAP_Y_EN = common dso_local global i32 0, align 4
@TAP_Z_EN = common dso_local global i32 0, align 4
@ACT_TAP_STATUS = common dso_local global i32 0, align 4
@INT_SOURCE = common dso_local global i32 0, align 4
@FREE_FALL = common dso_local global i32 0, align 4
@OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"OVERRUN\0A\00", align 1
@SINGLE_TAP = common dso_local global i32 0, align 4
@DOUBLE_TAP = common dso_local global i32 0, align 4
@ACTIVITY = common dso_local global i32 0, align 4
@INACTIVITY = common dso_local global i32 0, align 4
@ORIENT = common dso_local global i32 0, align 4
@ADXL_EN_ORIENTATION_2D = common dso_local global i32 0, align 4
@ADXL346_2D_VALID = common dso_local global i32 0, align 4
@ADXL_EN_ORIENTATION_3D = common dso_local global i32 0, align 4
@ADXL346_3D_VALID = common dso_local global i32 0, align 4
@DATA_READY = common dso_local global i32 0, align 4
@WATERMARK = common dso_local global i32 0, align 4
@FIFO_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adxl34x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl34x_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adxl34x*, align 8
  %6 = alloca %struct.adxl34x_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.adxl34x*
  store %struct.adxl34x* %13, %struct.adxl34x** %5, align 8
  %14 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %15 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %14, i32 0, i32 5
  store %struct.adxl34x_platform_data* %15, %struct.adxl34x_platform_data** %6, align 8
  %16 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %17 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TAP_X_EN, align 4
  %20 = load i32, i32* @TAP_Y_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TAP_Z_EN, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %28 = load i32, i32* @ACT_TAP_STATUS, align 4
  %29 = call i32 @AC_READ(%struct.adxl34x* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %33 = load i32, i32* @INT_SOURCE, align 4
  %34 = call i32 @AC_READ(%struct.adxl34x* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FREE_FALL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %41 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %44 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @adxl34x_report_key_single(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @OVERRUN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %54 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SINGLE_TAP, align 4
  %60 = load i32, i32* @DOUBLE_TAP, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %66 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @adxl34x_do_tap(%struct.adxl34x* %65, %struct.adxl34x_platform_data* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @DOUBLE_TAP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %75 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @adxl34x_do_tap(%struct.adxl34x* %74, %struct.adxl34x_platform_data* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %64
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %81 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ACTIVITY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %91 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %94 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @input_report_key(i32 %92, i64 %95, i32 1)
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @INACTIVITY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %104 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %107 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @input_report_key(i32 %105, i64 %108, i32 0)
  br label %110

110:                                              ; preds = %102, %97
  br label %111

111:                                              ; preds = %110, %79
  %112 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %113 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %193

116:                                              ; preds = %111
  %117 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %118 = load i32, i32* @ORIENT, align 4
  %119 = call i32 @AC_READ(%struct.adxl34x* %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %121 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ADXL_EN_ORIENTATION_2D, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %116
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @ADXL346_2D_VALID, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %126
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ADXL346_2D_ORIENT(i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %135 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %131
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %142 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %144 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %147 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @adxl34x_report_key_single(i32 %145, i32 %152)
  br label %154

154:                                              ; preds = %139, %131
  br label %155

155:                                              ; preds = %154, %126, %116
  %156 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %157 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ADXL_EN_ORIENTATION_3D, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @ADXL346_3D_VALID, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %162
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @ADXL346_3D_ORIENT(i32 %168)
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  %171 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %172 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %167
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %179 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %181 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %184 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @adxl34x_report_key_single(i32 %182, i32 %189)
  br label %191

191:                                              ; preds = %176, %167
  br label %192

192:                                              ; preds = %191, %162, %155
  br label %193

193:                                              ; preds = %192, %111
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @DATA_READY, align 4
  %196 = load i32, i32* @WATERMARK, align 4
  %197 = or i32 %195, %196
  %198 = and i32 %194, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %233

200:                                              ; preds = %193
  %201 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %202 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %207 = load i32, i32* @FIFO_STATUS, align 4
  %208 = call i32 @AC_READ(%struct.adxl34x* %206, i32 %207)
  %209 = call i32 @ENTRIES(i32 %208)
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %212

211:                                              ; preds = %200
  store i32 1, i32* %9, align 4
  br label %212

212:                                              ; preds = %211, %205
  br label %213

213:                                              ; preds = %229, %212
  %214 = load i32, i32* %9, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %213
  %217 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %218 = call i32 @adxl34x_service_ev_fifo(%struct.adxl34x* %217)
  %219 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %220 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %216
  %224 = load i32, i32* %9, align 4
  %225 = icmp sgt i32 %224, 1
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = call i32 @udelay(i32 3)
  br label %228

228:                                              ; preds = %226, %223, %216
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %9, align 4
  br label %213

232:                                              ; preds = %213
  br label %233

233:                                              ; preds = %232, %193
  %234 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %235 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @input_sync(i32 %236)
  %238 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %238
}

declare dso_local i32 @AC_READ(%struct.adxl34x*, i32) #1

declare dso_local i32 @adxl34x_report_key_single(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @adxl34x_do_tap(%struct.adxl34x*, %struct.adxl34x_platform_data*, i32) #1

declare dso_local i32 @input_report_key(i32, i64, i32) #1

declare dso_local i32 @ADXL346_2D_ORIENT(i32) #1

declare dso_local i32 @ADXL346_3D_ORIENT(i32) #1

declare dso_local i32 @ENTRIES(i32) #1

declare dso_local i32 @adxl34x_service_ev_fifo(%struct.adxl34x*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
