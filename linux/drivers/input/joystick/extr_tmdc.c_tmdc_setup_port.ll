; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_tmdc.c_tmdc_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_tmdc.c_tmdc_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmdc_model = type { i8, i64*, i8, i32*, i8*, i32, i32*, i32* }
%struct.tmdc = type { %struct.TYPE_6__*, %struct.tmdc_port** }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.tmdc_port = type { i8, i64*, i8, i32*, %struct.input_dev*, i32*, i32, i32, i32* }
%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i8, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TMDC_BYTE_ID = common dso_local global i64 0, align 8
@tmdc_models = common dso_local global %struct.tmdc_model* null, align 8
@TMDC_BYTE_DEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s/input%d\00", align 1
@BUS_GAMEPORT = common dso_local global i32 0, align 4
@GAMEPORT_ID_VENDOR_THRUSTMASTER = common dso_local global i32 0, align 4
@tmdc_open = common dso_local global i32 0, align 4
@tmdc_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@TMDC_ABS = common dso_local global i32 0, align 4
@TMDC_ABS_HAT = common dso_local global i32 0, align 4
@tmdc_abs_hat = common dso_local global i64* null, align 8
@TMDC_BTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmdc*, i32, i8*)* @tmdc_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmdc_setup_port(%struct.tmdc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmdc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tmdc_model*, align 8
  %9 = alloca %struct.tmdc_port*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tmdc* %0, %struct.tmdc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tmdc_port* @kzalloc(i32 64, i32 %15)
  store %struct.tmdc_port* %16, %struct.tmdc_port** %9, align 8
  %17 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %18 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %17, i32 0, i32 1
  %19 = load %struct.tmdc_port**, %struct.tmdc_port*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tmdc_port*, %struct.tmdc_port** %19, i64 %21
  store %struct.tmdc_port* %16, %struct.tmdc_port** %22, align 8
  %23 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %23, %struct.input_dev** %10, align 8
  %24 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %25 = icmp ne %struct.tmdc_port* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %28 = icmp ne %struct.input_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %367

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* @TMDC_BYTE_ID, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %38 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 8
  %39 = load %struct.tmdc_model*, %struct.tmdc_model** @tmdc_models, align 8
  store %struct.tmdc_model* %39, %struct.tmdc_model** %8, align 8
  br label %40

40:                                               ; preds = %59, %32
  %41 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %42 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %48 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %52 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %50, %54
  br label %56

56:                                               ; preds = %46, %40
  %57 = phi i1 [ false, %40 ], [ %55, %46 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %61 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %60, i32 1
  store %struct.tmdc_model* %61, %struct.tmdc_model** %8, align 8
  br label %40

62:                                               ; preds = %56
  %63 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %64 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %67 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %66, i32 0, i32 1
  store i64* %65, i64** %67, align 8
  %68 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %69 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %72 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %71, i32 0, i32 5
  store i32* %70, i32** %72, align 8
  %73 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %74 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 8
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %62
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* @TMDC_BYTE_DEF, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = ashr i32 %82, 4
  %84 = trunc i32 %83 to i8
  %85 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %86 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %85, i32 0, i32 2
  store i8 %84, i8* %86, align 8
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %107, %77
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* @TMDC_BYTE_DEF, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 15
  %98 = icmp slt i32 %91, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 8, i32 0
  %101 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %102 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %87

110:                                              ; preds = %87
  br label %138

111:                                              ; preds = %62
  %112 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %113 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %112, i32 0, i32 2
  %114 = load i8, i8* %113, align 8
  %115 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %116 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %115, i32 0, i32 2
  store i8 %114, i8* %116, align 8
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %134, %111
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %122 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %129 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %117

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %110
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %156, %138
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %159

142:                                              ; preds = %139
  %143 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %144 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %151 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %139

159:                                              ; preds = %139
  %160 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %161 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %164 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %167 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %166, i32 0, i32 2
  %168 = load i8, i8* %167, align 8
  %169 = zext i8 %168 to i32
  %170 = load i8*, i8** %7, align 8
  %171 = load i64, i64* @TMDC_BYTE_DEF, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = and i32 %174, 15
  %176 = shl i32 %175, 3
  %177 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %178 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %177, i32 0, i32 0
  %179 = load i8, i8* %178, align 8
  %180 = zext i8 %179 to i32
  %181 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %162, i32 4, i8* %165, i32 %169, i32 %176, i32 %180)
  %182 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %183 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %186 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %184, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %189, i32 %190)
  %192 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %193 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %194 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %193, i32 0, i32 4
  store %struct.input_dev* %192, %struct.input_dev** %194, align 8
  %195 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %196 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %199 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  %200 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %201 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %204 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @BUS_GAMEPORT, align 4
  %206 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %207 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* @GAMEPORT_ID_VENDOR_THRUSTMASTER, align 4
  %210 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %211 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 8
  %213 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %214 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %213, i32 0, i32 0
  %215 = load i8, i8* %214, align 8
  %216 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %217 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i8 %215, i8* %218, align 8
  %219 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %220 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  store i32 256, i32* %221, align 4
  %222 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %223 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %227 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i32* %225, i32** %228, align 8
  %229 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %230 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %231 = call i32 @input_set_drvdata(%struct.input_dev* %229, %struct.tmdc* %230)
  %232 = load i32, i32* @tmdc_open, align 4
  %233 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %234 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @tmdc_close, align 4
  %236 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %237 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @EV_KEY, align 4
  %239 = call i32 @BIT_MASK(i32 %238)
  %240 = load i32, i32* @EV_ABS, align 4
  %241 = call i32 @BIT_MASK(i32 %240)
  %242 = or i32 %239, %241
  %243 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %244 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %242, i32* %246, align 4
  store i32 0, i32* %11, align 4
  br label %247

247:                                              ; preds = %280, %159
  %248 = load i32, i32* %11, align 4
  %249 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %250 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %249, i32 0, i32 2
  %251 = load i8, i8* %250, align 8
  %252 = zext i8 %251 to i32
  %253 = icmp slt i32 %248, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %247
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @TMDC_ABS, align 4
  %257 = icmp slt i32 %255, %256
  br label %258

258:                                              ; preds = %254, %247
  %259 = phi i1 [ false, %247 ], [ %257, %254 ]
  br i1 %259, label %260, label %283

260:                                              ; preds = %258
  %261 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %262 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %261, i32 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = icmp sge i64 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %260
  %270 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %271 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %272 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %271, i32 0, i32 1
  %273 = load i64*, i64** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @input_set_abs_params(%struct.input_dev* %270, i64 %277, i32 8, i32 248, i32 2, i32 4)
  br label %279

279:                                              ; preds = %269, %260
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %11, align 4
  br label %247

283:                                              ; preds = %258
  store i32 0, i32* %11, align 4
  br label %284

284:                                              ; preds = %304, %283
  %285 = load i32, i32* %11, align 4
  %286 = load %struct.tmdc_model*, %struct.tmdc_model** %8, align 8
  %287 = getelementptr inbounds %struct.tmdc_model, %struct.tmdc_model* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* @TMDC_ABS_HAT, align 4
  %293 = icmp slt i32 %291, %292
  br label %294

294:                                              ; preds = %290, %284
  %295 = phi i1 [ false, %284 ], [ %293, %290 ]
  br i1 %295, label %296, label %307

296:                                              ; preds = %294
  %297 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %298 = load i64*, i64** @tmdc_abs_hat, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @input_set_abs_params(%struct.input_dev* %297, i64 %302, i32 -1, i32 1, i32 0, i32 0)
  br label %304

304:                                              ; preds = %296
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %11, align 4
  br label %284

307:                                              ; preds = %294
  store i32 0, i32* %11, align 4
  br label %308

308:                                              ; preds = %355, %307
  %309 = load i32, i32* %11, align 4
  %310 = icmp slt i32 %309, 4
  br i1 %310, label %311, label %358

311:                                              ; preds = %308
  store i32 0, i32* %12, align 4
  br label %312

312:                                              ; preds = %342, %311
  %313 = load i32, i32* %12, align 4
  %314 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %315 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %313, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %312
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* @TMDC_BTN, align 4
  %325 = icmp slt i32 %323, %324
  br label %326

326:                                              ; preds = %322, %312
  %327 = phi i1 [ false, %312 ], [ %325, %322 ]
  br i1 %327, label %328, label %345

328:                                              ; preds = %326
  %329 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %330 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %329, i32 0, i32 5
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %331, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %339 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @set_bit(i32 %337, i32 %340)
  br label %342

342:                                              ; preds = %328
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %12, align 4
  br label %312

345:                                              ; preds = %326
  %346 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %347 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %346, i32 0, i32 3
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %11, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %353, %352
  store i32 %354, i32* %13, align 4
  br label %355

355:                                              ; preds = %345
  %356 = load i32, i32* %11, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %11, align 4
  br label %308

358:                                              ; preds = %308
  %359 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %360 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %359, i32 0, i32 4
  %361 = load %struct.input_dev*, %struct.input_dev** %360, align 8
  %362 = call i32 @input_register_device(%struct.input_dev* %361)
  store i32 %362, i32* %14, align 4
  %363 = load i32, i32* %14, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %358
  br label %367

366:                                              ; preds = %358
  store i32 0, i32* %4, align 4
  br label %373

367:                                              ; preds = %365, %29
  %368 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %369 = call i32 @input_free_device(%struct.input_dev* %368)
  %370 = load %struct.tmdc_port*, %struct.tmdc_port** %9, align 8
  %371 = call i32 @kfree(%struct.tmdc_port* %370)
  %372 = load i32, i32* %14, align 4
  store i32 %372, i32* %4, align 4
  br label %373

373:                                              ; preds = %367, %366
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local %struct.tmdc_port* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.tmdc*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.tmdc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
