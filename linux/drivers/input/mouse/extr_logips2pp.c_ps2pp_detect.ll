; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i32, i32, %struct.ps2dev }
%struct.ps2dev = type { i32 }
%struct.ps2pp_info = type { i64 }

@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PS2PP_KIND_TP3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Detected unknown Logitech mouse model %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Logitech\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2pp_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca %struct.ps2pp_info*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 3
  store %struct.ps2dev* %14, %struct.ps2dev** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %15, align 16
  %16 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %19 = call i32 @ps2_command(%struct.ps2dev* %16, i32* %17, i32 %18)
  %20 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %21 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %22 = call i32 @ps2_command(%struct.ps2dev* %20, i32* null, i32 %21)
  %23 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %24 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %25 = call i32 @ps2_command(%struct.ps2dev* %23, i32* null, i32 %24)
  %26 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %27 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %28 = call i32 @ps2_command(%struct.ps2dev* %26, i32* null, i32 %27)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %33 = call i32 @ps2_command(%struct.ps2dev* %30, i32* %31, i32 %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = ashr i32 %35, 4
  %37 = and i32 %36, 7
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = shl i32 %39, 3
  %41 = and i32 %40, 120
  %42 = or i32 %37, %41
  store i32 %42, i32* %9, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %2
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %187

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.ps2pp_info* @get_model_info(i32 %54)
  store %struct.ps2pp_info* %55, %struct.ps2pp_info** %7, align 8
  %56 = load %struct.ps2pp_info*, %struct.ps2pp_info** %7, align 8
  %57 = icmp ne %struct.ps2pp_info* %56, null
  br i1 %57, label %58, label %135

58:                                               ; preds = %53
  %59 = load %struct.ps2pp_info*, %struct.ps2pp_info** %7, align 8
  %60 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PS2PP_KIND_TP3, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %58
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 17, i32* %65, align 16
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 4, i32* %66, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 104, i32* %67, align 8
  %68 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %70 = call i32 @ps2_command(%struct.ps2dev* %68, i32* %69, i32 12497)
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 17, i32* %71, align 16
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 5, i32* %72, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 11, i32* %73, align 8
  %74 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %76 = call i32 @ps2_command(%struct.ps2dev* %74, i32* %75, i32 12497)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 17, i32* %77, align 16
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 9, i32* %78, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 195, i32* %79, align 8
  %80 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %82 = call i32 @ps2_command(%struct.ps2dev* %80, i32* %81, i32 12497)
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %83, align 16
  %84 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %86 = call i32 @ps2_command(%struct.ps2dev* %84, i32* %85, i32 5073)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %64
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = icmp eq i32 %90, 6
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 20
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %96, %92, %88, %64
  br label %134

102:                                              ; preds = %58
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %105, align 16
  %106 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %108 = call i32 @ps2pp_cmd(%struct.psmouse* %106, i32* %107, i32 57)
  %109 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %111 = call i32 @ps2pp_cmd(%struct.psmouse* %109, i32* %110, i32 219)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = and i32 %113, 120
  %115 = icmp eq i32 %114, 72
  br i1 %115, label %116, label %133

116:                                              ; preds = %102
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 243
  %120 = icmp eq i32 %119, 194
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 3
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 2
  %128 = and i32 %127, 3
  %129 = icmp eq i32 %124, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %132 = call i32 @ps2pp_set_smartscroll(%struct.psmouse* %131, i32 0)
  store i32 1, i32* %11, align 4
  br label %133

133:                                              ; preds = %130, %121, %116, %102
  br label %134

134:                                              ; preds = %133, %101
  br label %139

135:                                              ; preds = %53
  %136 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @psmouse_warn(%struct.psmouse* %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %134
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %178

142:                                              ; preds = %139
  %143 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %144 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %147 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %152 = load %struct.ps2pp_info*, %struct.ps2pp_info** %7, align 8
  %153 = call i32 @ps2pp_setup_protocol(%struct.psmouse* %151, %struct.ps2pp_info* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  br label %187

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %142
  %160 = load i32, i32* %10, align 4
  %161 = icmp sge i32 %160, 3
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %164 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @EV_KEY, align 4
  %167 = load i32, i32* @BTN_MIDDLE, align 4
  %168 = call i32 @input_set_capability(i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %162, %159
  %170 = load %struct.ps2pp_info*, %struct.ps2pp_info** %7, align 8
  %171 = icmp ne %struct.ps2pp_info* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %174 = load %struct.ps2pp_info*, %struct.ps2pp_info** %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @ps2pp_set_model_properties(%struct.psmouse* %173, %struct.ps2pp_info* %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %169
  br label %178

178:                                              ; preds = %177, %139
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %185

182:                                              ; preds = %178
  %183 = load i32, i32* @ENXIO, align 4
  %184 = sub nsw i32 0, %183
  br label %185

185:                                              ; preds = %182, %181
  %186 = phi i32 [ 0, %181 ], [ %184, %182 ]
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %156, %50
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local %struct.ps2pp_info* @get_model_info(i32) #1

declare dso_local i32 @ps2pp_cmd(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @ps2pp_set_smartscroll(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @ps2pp_setup_protocol(%struct.psmouse*, %struct.ps2pp_info*) #1

declare dso_local i32 @input_set_capability(i32, i32, i32) #1

declare dso_local i32 @ps2pp_set_model_properties(%struct.psmouse*, %struct.ps2pp_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
