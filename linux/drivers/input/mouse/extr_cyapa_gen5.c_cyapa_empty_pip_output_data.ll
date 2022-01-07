; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_empty_pip_output_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_empty_pip_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i64 }
%struct.input_dev = type { i64 }
%struct.cyapa_pip_report_data = type { i32 }

@CYAPA_REG_MAP_SIZE = common dso_local global i32 0, align 4
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CYAPA_PM_RUNTIME_RESUME = common dso_local global i32 0, align 4
@CYAPA_PM_RUNTIME_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa* %0, i32* %1, i32* %2, i64 (%struct.cyapa*, i64, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyapa*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64 (%struct.cyapa*, i64, i32)*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 (%struct.cyapa*, i64, i32)* %3, i64 (%struct.cyapa*, i64, i32)** %9, align 8
  %18 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %19 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %18, i32 0, i32 2
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %10, align 8
  %21 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %22 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %23, %struct.cyapa_pip_cmd_states** %11, align 8
  %24 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %25 = call i32 @cyapa_get_pip_pm_state(%struct.cyapa* %24)
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CYAPA_REG_MAP_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @CYAPA_REG_MAP_SIZE, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %16, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %4
  store i32 8, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %199, %41
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %43, 5
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %204

46:                                               ; preds = %42
  %47 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %48 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %49 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %52 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %47, i64 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %5, align 4
  br label %204

57:                                               ; preds = %46
  %58 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %59 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @get_unaligned_le16(i64 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %199

68:                                               ; preds = %57
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @CYAPA_REG_MAP_SIZE, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %204

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %75
  %79 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %82
  %86 = load i64 (%struct.cyapa*, i64, i32)*, i64 (%struct.cyapa*, i64, i32)** %9, align 8
  %87 = icmp ne i64 (%struct.cyapa*, i64, i32)* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i64 (%struct.cyapa*, i64, i32)*, i64 (%struct.cyapa*, i64, i32)** %9, align 8
  %90 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %91 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %92 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i64 %89(%struct.cyapa* %90, i64 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @min(i32 %98, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %103 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @memcpy(i32* %101, i64 %104, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %204

109:                                              ; preds = %88, %85, %82, %78
  br label %199

110:                                              ; preds = %75
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %114 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %115 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %113, i64 %116, i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %5, align 4
  br label %204

123:                                              ; preds = %112
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %126 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %127 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @get_unaligned_le16(i64 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %196

136:                                              ; preds = %123
  %137 = load i32*, i32** %7, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %166

139:                                              ; preds = %136
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %139
  %143 = load i64 (%struct.cyapa*, i64, i32)*, i64 (%struct.cyapa*, i64, i32)** %9, align 8
  %144 = icmp ne i64 (%struct.cyapa*, i64, i32)* %143, null
  br i1 %144, label %145, label %166

145:                                              ; preds = %142
  %146 = load i64 (%struct.cyapa*, i64, i32)*, i64 (%struct.cyapa*, i64, i32)** %9, align 8
  %147 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %148 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %149 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i64 %146(%struct.cyapa* %147, i64 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %145
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @min(i32 %155, i32 %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %160 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @memcpy(i32* %158, i64 %161, i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = load i32*, i32** %8, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %5, align 4
  br label %204

166:                                              ; preds = %145, %142, %139, %136
  %167 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %168 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %173 = icmp ne %struct.input_dev* %172, null
  br i1 %173, label %174, label %194

174:                                              ; preds = %171
  %175 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %174
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* @CYAPA_PM_RUNTIME_RESUME, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @CYAPA_PM_RUNTIME_SUSPEND, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %183, %179
  %188 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %189 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %11, align 8
  %190 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.cyapa_pip_report_data*
  %193 = call i32 @cyapa_pip_event_process(%struct.cyapa* %188, %struct.cyapa_pip_report_data* %192)
  br label %194

194:                                              ; preds = %187, %183, %174, %171, %166
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195, %133
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %196, %109, %65
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %42, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %154, %121, %97, %72, %55, %45
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @cyapa_get_pip_pm_state(%struct.cyapa*) #1

declare dso_local i32 @cyapa_i2c_pip_read(%struct.cyapa*, i64, i32) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @cyapa_pip_event_process(%struct.cyapa*, %struct.cyapa_pip_report_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
