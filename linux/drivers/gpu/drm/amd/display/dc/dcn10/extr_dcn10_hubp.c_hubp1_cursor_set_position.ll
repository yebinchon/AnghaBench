; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_cursor_set_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_cursor_set_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.hubp*, %struct.TYPE_9__*)* }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i64 }
%struct.dc_cursor_mi_param = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.dcn10_hubp = type { i32 }

@ROTATION_ANGLE_90 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_270 = common dso_local global i64 0, align 8
@CURSOR_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4
@CURSOR_POSITION = common dso_local global i32 0, align 4
@CURSOR_X_POSITION = common dso_local global i32 0, align 4
@CURSOR_Y_POSITION = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT_X = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT_Y = common dso_local global i32 0, align 4
@CURSOR_DST_OFFSET = common dso_local global i32 0, align 4
@CURSOR_DST_X_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_cursor_set_position(%struct.hubp* %0, %struct.dc_cursor_position* %1, %struct.dc_cursor_mi_param* %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.dc_cursor_position*, align 8
  %6 = alloca %struct.dc_cursor_mi_param*, align 8
  %7 = alloca %struct.dcn10_hubp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct.dc_cursor_position* %1, %struct.dc_cursor_position** %5, align 8
  store %struct.dc_cursor_mi_param* %2, %struct.dc_cursor_mi_param** %6, align 8
  %14 = load %struct.hubp*, %struct.hubp** %4, align 8
  %15 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %14)
  store %struct.dcn10_hubp* %15, %struct.dcn10_hubp** %7, align 8
  %16 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %17 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %20 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %24 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %22, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %29 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %32 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %36 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %34, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %41 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %44 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %47 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %13, align 4
  %52 = load %struct.hubp*, %struct.hubp** %4, align 8
  %53 = getelementptr inbounds %struct.hubp, %struct.hubp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %3
  br label %229

59:                                               ; preds = %3
  %60 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %61 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %67 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ROTATION_ANGLE_270, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65, %59
  %72 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %73 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %76 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %80 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %78, %82
  store i32 %83, i32* %8, align 4
  %84 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %85 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %88 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %71, %65
  %91 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %92 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  %96 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %97 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %103 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %107 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %105, %109
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %95, %90
  %114 = load i32, i32* %8, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  br label %119

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  store i32 %120, i32* %12, align 4
  %121 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %122 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %127 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = sdiv i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %132 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @ASSERT(i64 %134)
  %136 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %137 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %119
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @dc_fixpt_from_int(i32 %142)
  %144 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %145 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @dc_fixpt_div(i32 %143, i64 %147)
  %149 = call i32 @dc_fixpt_floor(i32 %148)
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %141, %119
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %153 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %158

158:                                              ; preds = %157, %150
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.hubp*, %struct.hubp** %4, align 8
  %161 = getelementptr inbounds %struct.hubp, %struct.hubp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = add nsw i32 %159, %164
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %158
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %171 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = icmp sge i32 %169, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %176, %168
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.hubp*, %struct.hubp** %4, align 8
  %180 = getelementptr inbounds %struct.hubp, %struct.hubp* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = add nsw i32 %178, %183
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %186, %177
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load i32, i32* @CURSOR_SURFACE_ADDRESS, align 4
  %192 = call i64 @REG_READ(i32 %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load %struct.hubp*, %struct.hubp** %4, align 8
  %196 = getelementptr inbounds %struct.hubp, %struct.hubp* %195, i32 0, i32 1
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32 (%struct.hubp*, %struct.TYPE_9__*)*, i32 (%struct.hubp*, %struct.TYPE_9__*)** %198, align 8
  %200 = load %struct.hubp*, %struct.hubp** %4, align 8
  %201 = load %struct.hubp*, %struct.hubp** %4, align 8
  %202 = getelementptr inbounds %struct.hubp, %struct.hubp* %201, i32 0, i32 0
  %203 = call i32 %199(%struct.hubp* %200, %struct.TYPE_9__* %202)
  br label %204

204:                                              ; preds = %194, %190, %187
  %205 = load i32, i32* @CURSOR_CONTROL, align 4
  %206 = load i32, i32* @CURSOR_ENABLE, align 4
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @REG_UPDATE(i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* @CURSOR_POSITION, align 4
  %210 = load i32, i32* @CURSOR_X_POSITION, align 4
  %211 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %212 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CURSOR_Y_POSITION, align 4
  %215 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %216 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @REG_SET_2(i32 %209, i32 0, i32 %210, i32 %213, i32 %214, i32 %217)
  %219 = load i32, i32* @CURSOR_HOT_SPOT, align 4
  %220 = load i32, i32* @CURSOR_HOT_SPOT_X, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @CURSOR_HOT_SPOT_Y, align 4
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @REG_SET_2(i32 %219, i32 0, i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* @CURSOR_DST_OFFSET, align 4
  %226 = load i32, i32* @CURSOR_DST_X_OFFSET, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @REG_SET(i32 %225, i32 0, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %204, %58
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_div(i32, i64) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
