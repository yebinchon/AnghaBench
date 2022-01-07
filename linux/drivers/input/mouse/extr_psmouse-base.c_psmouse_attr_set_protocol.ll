; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_set_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse_protocol = type { i64 }
%struct.psmouse = type { i32 (%struct.psmouse*)*, %struct.input_dev*, i32 (%struct.psmouse*)*, %struct.psmouse_protocol*, i32 (%struct.psmouse*)*, %struct.TYPE_3__ }
%struct.input_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.serio* }
%struct.serio = type { i64, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"failed to destroy children ports, protocol change aborted.\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@psmouse_mutex = common dso_local global i32 0, align 4
@psmouse_drv = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@PSMOUSE_IGNORE = common dso_local global i32 0, align 4
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@psmouse_protocols = common dso_local global %struct.psmouse_protocol* null, align 8
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @psmouse_attr_set_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psmouse_attr_set_protocol(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.serio*, align 8
  %11 = alloca %struct.psmouse*, align 8
  %12 = alloca %struct.input_dev*, align 8
  %13 = alloca %struct.input_dev*, align 8
  %14 = alloca %struct.psmouse_protocol*, align 8
  %15 = alloca %struct.psmouse_protocol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %19 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.serio*, %struct.serio** %20, align 8
  store %struct.serio* %21, %struct.serio** %10, align 8
  store %struct.psmouse* null, %struct.psmouse** %11, align 8
  store i32 0, i32* %17, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call %struct.psmouse_protocol* @psmouse_protocol_by_name(i8* %22, i64 %23)
  store %struct.psmouse_protocol* %24, %struct.psmouse_protocol** %14, align 8
  %25 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %14, align 8
  %26 = icmp ne %struct.psmouse_protocol* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %236

30:                                               ; preds = %4
  %31 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %32 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %31, i32 0, i32 3
  %33 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %32, align 8
  %34 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %14, align 8
  %35 = icmp eq %struct.psmouse_protocol* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %236

38:                                               ; preds = %30
  %39 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %39, %struct.input_dev** %13, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %41 = icmp ne %struct.input_dev* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @ENOMEM, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %236

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %87, %45
  %47 = load %struct.serio*, %struct.serio** %10, align 8
  %48 = getelementptr inbounds %struct.serio, %struct.serio* %47, i32 0, i32 3
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %88

52:                                               ; preds = %46
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %17, align 4
  %55 = icmp sgt i32 %54, 3
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %58 = call i32 @psmouse_warn(%struct.psmouse* %57, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %60 = call i32 @input_free_device(%struct.input_dev* %59)
  %61 = load i64, i64* @EIO, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %5, align 8
  br label %236

63:                                               ; preds = %52
  %64 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  %65 = load %struct.serio*, %struct.serio** %10, align 8
  %66 = call i32 @serio_unregister_child_port(%struct.serio* %65)
  %67 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %68 = load %struct.serio*, %struct.serio** %10, align 8
  %69 = getelementptr inbounds %struct.serio, %struct.serio* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, @psmouse_drv
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %74 = call i32 @input_free_device(%struct.input_dev* %73)
  %75 = load i64, i64* @ENODEV, align 8
  %76 = sub i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %236

77:                                               ; preds = %63
  %78 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 3
  %80 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %79, align 8
  %81 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %14, align 8
  %82 = icmp eq %struct.psmouse_protocol* %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %85 = call i32 @input_free_device(%struct.input_dev* %84)
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %5, align 8
  br label %236

87:                                               ; preds = %77
  br label %46

88:                                               ; preds = %46
  %89 = load %struct.serio*, %struct.serio** %10, align 8
  %90 = getelementptr inbounds %struct.serio, %struct.serio* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = load %struct.serio*, %struct.serio** %10, align 8
  %95 = getelementptr inbounds %struct.serio, %struct.serio* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %93
  %101 = load %struct.serio*, %struct.serio** %10, align 8
  %102 = getelementptr inbounds %struct.serio, %struct.serio* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.psmouse* @serio_get_drvdata(i64 %103)
  store %struct.psmouse* %104, %struct.psmouse** %11, align 8
  %105 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %106 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %105, i32 0, i32 4
  %107 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %106, align 8
  %108 = icmp ne i32 (%struct.psmouse*)* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %111 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %110, i32 0, i32 4
  %112 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %111, align 8
  %113 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %114 = call i32 %112(%struct.psmouse* %113)
  br label %115

115:                                              ; preds = %109, %100
  br label %116

116:                                              ; preds = %115, %93, %88
  %117 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %118 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %117, i32 0, i32 1
  %119 = load %struct.input_dev*, %struct.input_dev** %118, align 8
  store %struct.input_dev* %119, %struct.input_dev** %12, align 8
  %120 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %121 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %120, i32 0, i32 3
  %122 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %121, align 8
  store %struct.psmouse_protocol* %122, %struct.psmouse_protocol** %15, align 8
  %123 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %124 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %123, i32 0, i32 2
  %125 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %124, align 8
  %126 = icmp ne i32 (%struct.psmouse*)* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %129 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %128, i32 0, i32 2
  %130 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %129, align 8
  %131 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %132 = call i32 %130(%struct.psmouse* %131)
  br label %133

133:                                              ; preds = %127, %116
  %134 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %135 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %136 = call i32 @psmouse_set_state(%struct.psmouse* %134, i32 %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %138 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %139 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %138, i32 0, i32 1
  store %struct.input_dev* %137, %struct.input_dev** %139, align 8
  %140 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %141 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %142 = call i32 @psmouse_set_state(%struct.psmouse* %140, i32 %141)
  %143 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %144 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %14, align 8
  %145 = call i64 @psmouse_switch_protocol(%struct.psmouse* %143, %struct.psmouse_protocol* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %133
  %148 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %149 = call i32 @psmouse_reset(%struct.psmouse* %148)
  %150 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %151 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** @psmouse_protocols, align 8
  %152 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %151, i64 0
  %153 = call i64 @psmouse_switch_protocol(%struct.psmouse* %150, %struct.psmouse_protocol* %152)
  br label %154

154:                                              ; preds = %147, %133
  %155 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %156 = call i32 @psmouse_initialize(%struct.psmouse* %155)
  %157 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %158 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %159 = call i32 @psmouse_set_state(%struct.psmouse* %157, i32 %158)
  %160 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %161 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %160, i32 0, i32 3
  %162 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %161, align 8
  %163 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %154
  %167 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %168 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %167, i32 0, i32 1
  %169 = load %struct.input_dev*, %struct.input_dev** %168, align 8
  %170 = call i32 @input_free_device(%struct.input_dev* %169)
  %171 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %172 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %171, i32 0, i32 1
  store %struct.input_dev* null, %struct.input_dev** %172, align 8
  br label %214

173:                                              ; preds = %154
  %174 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %175 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %174, i32 0, i32 1
  %176 = load %struct.input_dev*, %struct.input_dev** %175, align 8
  %177 = call i32 @input_register_device(%struct.input_dev* %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %213

180:                                              ; preds = %173
  %181 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %182 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %181, i32 0, i32 2
  %183 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %182, align 8
  %184 = icmp ne i32 (%struct.psmouse*)* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %187 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %186, i32 0, i32 2
  %188 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %187, align 8
  %189 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %190 = call i32 %188(%struct.psmouse* %189)
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %193 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %194 = call i32 @psmouse_set_state(%struct.psmouse* %192, i32 %193)
  %195 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %196 = call i32 @input_free_device(%struct.input_dev* %195)
  %197 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %198 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %199 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %198, i32 0, i32 1
  store %struct.input_dev* %197, %struct.input_dev** %199, align 8
  %200 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %201 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %202 = call i32 @psmouse_set_state(%struct.psmouse* %200, i32 %201)
  %203 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %204 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %15, align 8
  %205 = call i64 @psmouse_switch_protocol(%struct.psmouse* %203, %struct.psmouse_protocol* %204)
  %206 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %207 = call i32 @psmouse_initialize(%struct.psmouse* %206)
  %208 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %209 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %210 = call i32 @psmouse_set_state(%struct.psmouse* %208, i32 %209)
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %5, align 8
  br label %236

213:                                              ; preds = %173
  br label %214

214:                                              ; preds = %213, %166
  %215 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %216 = icmp ne %struct.input_dev* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %219 = call i32 @input_unregister_device(%struct.input_dev* %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %222 = icmp ne %struct.psmouse* %221, null
  br i1 %222, label %223, label %234

223:                                              ; preds = %220
  %224 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %225 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %224, i32 0, i32 0
  %226 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %225, align 8
  %227 = icmp ne i32 (%struct.psmouse*)* %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %230 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %229, i32 0, i32 0
  %231 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %230, align 8
  %232 = load %struct.psmouse*, %struct.psmouse** %11, align 8
  %233 = call i32 %231(%struct.psmouse* %232)
  br label %234

234:                                              ; preds = %228, %223, %220
  %235 = load i64, i64* %9, align 8
  store i64 %235, i64* %5, align 8
  br label %236

236:                                              ; preds = %234, %191, %83, %72, %56, %42, %36, %27
  %237 = load i64, i64* %5, align 8
  ret i64 %237
}

declare dso_local %struct.psmouse_protocol* @psmouse_protocol_by_name(i8*, i64) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @serio_unregister_child_port(%struct.serio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.psmouse* @serio_get_drvdata(i64) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i64 @psmouse_switch_protocol(%struct.psmouse*, %struct.psmouse_protocol*) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @psmouse_initialize(%struct.psmouse*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
