; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.cyapa*, i8**, i32)* }
%struct.cyapa = type { i64, i64, i8**, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.cyapa*, i8**, i32)* }

@BL_STATUS_SIZE = common dso_local global i32 0, align 4
@CYAPA_STATE_NO_DEVICE = common dso_local global i64 0, align 8
@BL_HEAD_OFFSET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CYAPA_CMD_BL_STATUS = common dso_local global i32 0, align 4
@REG_OP_STATUS = common dso_local global i64 0, align 8
@REG_BL_STATUS = common dso_local global i64 0, align 8
@REG_BL_ERROR = common dso_local global i64 0, align 8
@CYAPA_GEN_UNKNOWN = common dso_local global i64 0, align 8
@CYAPA_GEN3 = common dso_local global i64 0, align 8
@cyapa_gen3_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CYAPA_GEN6 = common dso_local global i64 0, align 8
@CYAPA_GEN5 = common dso_local global i64 0, align 8
@cyapa_gen5_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CYAPA_STATE_BL_BUSY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_get_state(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %12 = load i32, i32* @BL_STATUS_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %17 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %24 = load i64, i64* @CYAPA_STATE_NO_DEVICE, align 8
  %25 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %26 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %28 = load i32, i32* @BL_HEAD_OFFSET, align 4
  %29 = load i32, i32* @BL_STATUS_SIZE, align 4
  %30 = call i32 @cyapa_i2c_reg_read_block(%struct.cyapa* %27, i32 %28, i32 %29, i8** %15)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %32 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %50 = load i32, i32* @CYAPA_CMD_BL_STATUS, align 4
  %51 = call i32 @cyapa_read_block(%struct.cyapa* %49, i32 %50, i8** %15)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %45
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %40, %1
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @BL_STATUS_SIZE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %201

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %188, %58
  %60 = load i64, i64* @REG_OP_STATUS, align 8
  %61 = getelementptr inbounds i8*, i8** %15, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %64 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @REG_OP_STATUS, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %62, i8** %67, align 8
  %68 = load i64, i64* @REG_BL_STATUS, align 8
  %69 = getelementptr inbounds i8*, i8** %15, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %72 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* @REG_BL_STATUS, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %70, i8** %75, align 8
  %76 = load i64, i64* @REG_BL_ERROR, align 8
  %77 = getelementptr inbounds i8*, i8** %15, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %80 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %79, i32 0, i32 2
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* @REG_BL_ERROR, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %85 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CYAPA_GEN_UNKNOWN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %59
  %90 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %91 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CYAPA_GEN3, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89, %59
  %96 = load i32 (%struct.cyapa*, i8**, i32)*, i32 (%struct.cyapa*, i8**, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cyapa_gen3_ops, i32 0, i32 0), align 8
  %97 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %98 = load i32, i32* @BL_STATUS_SIZE, align 4
  %99 = call i32 %96(%struct.cyapa* %97, i8** %15, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  br label %191

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %106 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CYAPA_GEN_UNKNOWN, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %112 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CYAPA_GEN6, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %118 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CYAPA_GEN5, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116, %110, %104
  %123 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %124 = load i32, i32* @BL_STATUS_SIZE, align 4
  %125 = call i32 @cyapa_pip_state_parse(%struct.cyapa* %123, i8** %15, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %191

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %132 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CYAPA_GEN_UNKNOWN, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %138 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CYAPA_GEN5, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136, %130
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32 (%struct.cyapa*, i8**, i32)*, i32 (%struct.cyapa*, i8**, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cyapa_gen5_ops, i32 0, i32 0), align 8
  %150 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %151 = load i32, i32* @BL_STATUS_SIZE, align 4
  %152 = call i32 %149(%struct.cyapa* %150, i8** %15, i32 %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  br label %191

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %145, %142, %136
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %179, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 0
  store i8* null, i8** %161, align 16
  %162 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 1
  store i8* null, i8** %162, align 8
  %163 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %164 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 0
  %165 = call i32 @cyapa_i2c_write(%struct.cyapa* %163, i32 0, i32 2, i8** %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %201

169:                                              ; preds = %160
  %170 = call i32 @msleep(i32 50)
  %171 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %172 = load i32, i32* @BL_HEAD_OFFSET, align 4
  %173 = load i32, i32* @BL_STATUS_SIZE, align 4
  %174 = call i32 @cyapa_i2c_read(%struct.cyapa* %171, i32 %172, i32 %173, i8** %15)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %201

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %157
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %9, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  br label %188

188:                                              ; preds = %184, %180
  %189 = phi i1 [ false, %180 ], [ %187, %184 ]
  br i1 %189, label %59, label %190

190:                                              ; preds = %188
  br label %201

191:                                              ; preds = %155, %128, %102
  %192 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %193 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CYAPA_STATE_BL_BUSY, align 8
  %196 = icmp sle i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* @EAGAIN, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %211

200:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %211

201:                                              ; preds = %190, %177, %168, %57
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* %10, align 4
  br label %209

206:                                              ; preds = %201
  %207 = load i32, i32* @EAGAIN, align 4
  %208 = sub nsw i32 0, %207
  br label %209

209:                                              ; preds = %206, %204
  %210 = phi i32 [ %205, %204 ], [ %208, %206 ]
  store i32 %210, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %211

211:                                              ; preds = %209, %200, %197
  %212 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cyapa_i2c_reg_read_block(%struct.cyapa*, i32, i32, i8**) #2

declare dso_local i32 @cyapa_read_block(%struct.cyapa*, i32, i8**) #2

declare dso_local i32 @cyapa_pip_state_parse(%struct.cyapa*, i8**, i32) #2

declare dso_local i32 @cyapa_i2c_write(%struct.cyapa*, i32, i32, i8**) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @cyapa_i2c_read(%struct.cyapa*, i32, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
