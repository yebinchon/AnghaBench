; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.serio_driver = type { i32 }
%struct.psmouse = type { i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, %struct.TYPE_6__*, i32 (%struct.psmouse*)*, %struct.input_dev*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.input_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@psmouse_mutex = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@psmouse_resync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@psmouse_rate = common dso_local global i32 0, align 4
@psmouse_resolution = common dso_local global i32 0, align 4
@psmouse_resetafter = common dso_local global i32 0, align 4
@psmouse_resync_time = common dso_local global i32 0, align 4
@psmouse_smartscroll = common dso_local global i32 0, align 4
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@psmouse_attribute_group = common dso_local global i32 0, align 4
@PSMOUSE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @psmouse_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.serio_driver*, align 8
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %4, align 8
  store %struct.psmouse* null, %struct.psmouse** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %13 = load %struct.serio*, %struct.serio** %3, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.serio*, %struct.serio** %3, align 8
  %19 = getelementptr inbounds %struct.serio, %struct.serio* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.serio*, %struct.serio** %3, align 8
  %26 = getelementptr inbounds %struct.serio, %struct.serio* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.psmouse* @serio_get_drvdata(i64 %27)
  store %struct.psmouse* %28, %struct.psmouse** %6, align 8
  %29 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %30 = call i32 @psmouse_deactivate(%struct.psmouse* %29)
  br label %31

31:                                               ; preds = %24, %17, %2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.psmouse* @kzalloc(i32 72, i32 %32)
  store %struct.psmouse* %33, %struct.psmouse** %5, align 8
  %34 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %34, %struct.input_dev** %7, align 8
  %35 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %36 = icmp ne %struct.psmouse* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %39 = icmp ne %struct.input_dev* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %31
  br label %219

41:                                               ; preds = %37
  %42 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 12
  %44 = load %struct.serio*, %struct.serio** %3, align 8
  %45 = call i32 @ps2_init(i32* %43, %struct.serio* %44)
  %46 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %47 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %46, i32 0, i32 11
  %48 = load i32, i32* @psmouse_resync, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %52 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %51, i32 0, i32 4
  store %struct.input_dev* %50, %struct.input_dev** %52, align 8
  %53 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.serio*, %struct.serio** %3, align 8
  %57 = getelementptr inbounds %struct.serio, %struct.serio* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @snprintf(i32 %55, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %61 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %62 = call i32 @psmouse_set_state(%struct.psmouse* %60, i32 %61)
  %63 = load %struct.serio*, %struct.serio** %3, align 8
  %64 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %65 = call i32 @serio_set_drvdata(%struct.serio* %63, %struct.psmouse* %64)
  %66 = load %struct.serio*, %struct.serio** %3, align 8
  %67 = load %struct.serio_driver*, %struct.serio_driver** %4, align 8
  %68 = call i32 @serio_open(%struct.serio* %66, %struct.serio_driver* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %216

72:                                               ; preds = %41
  %73 = load %struct.serio*, %struct.serio** %3, align 8
  %74 = getelementptr inbounds %struct.serio, %struct.serio* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @usleep_range(i32 10000, i32 15000)
  br label %81

81:                                               ; preds = %79, %72
  %82 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %83 = call i64 @psmouse_probe(%struct.psmouse* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %213

88:                                               ; preds = %81
  %89 = load i32, i32* @psmouse_rate, align 4
  %90 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %91 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @psmouse_resolution, align 4
  %93 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %94 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @psmouse_resetafter, align 4
  %96 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %97 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  %98 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %99 = icmp ne %struct.psmouse* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %103

101:                                              ; preds = %88
  %102 = load i32, i32* @psmouse_resync_time, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i32 [ 0, %100 ], [ %102, %101 ]
  %105 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %106 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @psmouse_smartscroll, align 4
  %108 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %109 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %111 = call i32 @psmouse_switch_protocol(%struct.psmouse* %110, i32* null)
  %112 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %113 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %103
  %119 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %120 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %121 = call i32 @psmouse_set_state(%struct.psmouse* %119, i32 %120)
  %122 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %123 = call i32 @psmouse_initialize(%struct.psmouse* %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %125 = call i32 @input_register_device(%struct.input_dev* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %198

129:                                              ; preds = %118
  br label %135

130:                                              ; preds = %103
  %131 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %132 = call i32 @input_free_device(%struct.input_dev* %131)
  store %struct.input_dev* null, %struct.input_dev** %7, align 8
  %133 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %134 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %133, i32 0, i32 4
  store %struct.input_dev* null, %struct.input_dev** %134, align 8
  br label %135

135:                                              ; preds = %130, %129
  %136 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %137 = icmp ne %struct.psmouse* %136, null
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %140 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %139, i32 0, i32 3
  %141 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %140, align 8
  %142 = icmp ne i32 (%struct.psmouse*)* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %145 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %144, i32 0, i32 3
  %146 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %145, align 8
  %147 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %148 = call i32 %146(%struct.psmouse* %147)
  br label %149

149:                                              ; preds = %143, %138, %135
  %150 = load %struct.serio*, %struct.serio** %3, align 8
  %151 = getelementptr inbounds %struct.serio, %struct.serio* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = call i32 @sysfs_create_group(i32* %152, i32* @psmouse_attribute_group)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %177

157:                                              ; preds = %149
  %158 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %159 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %158, i32 0, i32 2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %157
  %165 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %166 = call i32 @psmouse_activate(%struct.psmouse* %165)
  br label %167

167:                                              ; preds = %164, %157
  br label %168

168:                                              ; preds = %219, %167
  %169 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %170 = icmp ne %struct.psmouse* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %173 = call i32 @psmouse_activate(%struct.psmouse* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  %176 = load i32, i32* %8, align 4
  ret i32 %176

177:                                              ; preds = %156
  %178 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %179 = icmp ne %struct.psmouse* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %182 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %181, i32 0, i32 1
  %183 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %182, align 8
  %184 = icmp ne i32 (%struct.psmouse*)* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %187 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %186, i32 0, i32 1
  %188 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %187, align 8
  %189 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %190 = call i32 %188(%struct.psmouse* %189)
  br label %191

191:                                              ; preds = %185, %180, %177
  %192 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %193 = icmp ne %struct.input_dev* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %196 = call i32 @input_unregister_device(%struct.input_dev* %195)
  store %struct.input_dev* null, %struct.input_dev** %7, align 8
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %128
  %199 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %200 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %199, i32 0, i32 0
  %201 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %200, align 8
  %202 = icmp ne i32 (%struct.psmouse*)* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %205 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %204, i32 0, i32 0
  %206 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %205, align 8
  %207 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %208 = call i32 %206(%struct.psmouse* %207)
  br label %209

209:                                              ; preds = %203, %198
  %210 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %211 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %212 = call i32 @psmouse_set_state(%struct.psmouse* %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %85
  %214 = load %struct.serio*, %struct.serio** %3, align 8
  %215 = call i32 @serio_close(%struct.serio* %214)
  br label %216

216:                                              ; preds = %213, %71
  %217 = load %struct.serio*, %struct.serio** %3, align 8
  %218 = call i32 @serio_set_drvdata(%struct.serio* %217, %struct.psmouse* null)
  br label %219

219:                                              ; preds = %216, %40
  %220 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %221 = call i32 @input_free_device(%struct.input_dev* %220)
  %222 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %223 = call i32 @kfree(%struct.psmouse* %222)
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %8, align 4
  br label %168
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.psmouse* @serio_get_drvdata(i64) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local %struct.psmouse* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @ps2_init(i32*, %struct.serio*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.psmouse*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @psmouse_probe(%struct.psmouse*) #1

declare dso_local i32 @psmouse_switch_protocol(%struct.psmouse*, i32*) #1

declare dso_local i32 @psmouse_initialize(%struct.psmouse*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
