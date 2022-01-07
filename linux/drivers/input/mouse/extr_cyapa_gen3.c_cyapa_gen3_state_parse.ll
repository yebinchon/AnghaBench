; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_state_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_state_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, i64 }

@CYAPA_STATE_NO_DEVICE = common dso_local global i64 0, align 8
@REG_BL_FILE = common dso_local global i64 0, align 8
@BL_FILE = common dso_local global i32 0, align 4
@REG_BL_ERROR = common dso_local global i64 0, align 8
@BL_ERROR_NO_ERR_IDLE = common dso_local global i32 0, align 4
@REG_BL_STATUS = common dso_local global i64 0, align 8
@BL_STATUS_RUNNING = common dso_local global i32 0, align 4
@BL_STATUS_CSUM_VALID = common dso_local global i32 0, align 4
@CYAPA_GEN3 = common dso_local global i64 0, align 8
@CYAPA_STATE_BL_IDLE = common dso_local global i64 0, align 8
@BL_STATUS_BUSY = common dso_local global i32 0, align 4
@CYAPA_STATE_BL_BUSY = common dso_local global i64 0, align 8
@BL_ERROR_BOOTLOADING = common dso_local global i32 0, align 4
@CYAPA_STATE_BL_ACTIVE = common dso_local global i64 0, align 8
@REG_OP_STATUS = common dso_local global i64 0, align 8
@OP_STATUS_SRC = common dso_local global i32 0, align 4
@REG_OP_DATA1 = common dso_local global i64 0, align 8
@OP_DATA_VALID = common dso_local global i32 0, align 4
@GEN3_MAX_FINGERS = common dso_local global i64 0, align 8
@CYAPA_STATE_OP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*, i32)* @cyapa_gen3_state_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_state_parse(%struct.cyapa* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @CYAPA_STATE_NO_DEVICE, align 8
  %9 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %10 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* @REG_BL_FILE, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BL_FILE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* @REG_BL_ERROR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BL_ERROR_NO_ERR_IDLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @REG_BL_STATUS, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BL_STATUS_RUNNING, align 4
  %30 = load i32, i32* @BL_STATUS_CSUM_VALID, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* @REG_BL_STATUS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BL_STATUS_RUNNING, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33, %24
  %41 = load i64, i64* @CYAPA_GEN3, align 8
  %42 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %43 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @CYAPA_STATE_BL_IDLE, align 8
  %45 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %46 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %169

47:                                               ; preds = %33, %17, %3
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @REG_BL_FILE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BL_FILE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* @REG_BL_STATUS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BL_STATUS_RUNNING, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @BL_STATUS_RUNNING, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %54
  %64 = load i64, i64* @CYAPA_GEN3, align 8
  %65 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %66 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* @REG_BL_STATUS, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BL_STATUS_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i64, i64* @CYAPA_STATE_BL_BUSY, align 8
  %76 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %77 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %96

78:                                               ; preds = %63
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* @REG_BL_ERROR, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BL_ERROR_BOOTLOADING, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @BL_ERROR_BOOTLOADING, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i64, i64* @CYAPA_STATE_BL_ACTIVE, align 8
  %89 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %90 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %95

91:                                               ; preds = %78
  %92 = load i64, i64* @CYAPA_STATE_BL_IDLE, align 8
  %93 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %94 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %74
  br label %168

97:                                               ; preds = %54, %47
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* @REG_OP_STATUS, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @OP_STATUS_SRC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %97
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* @REG_OP_DATA1, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @OP_DATA_VALID, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %105
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* @REG_OP_DATA1, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @GEN3_FINGER_NUM(i32 %117)
  %119 = load i64, i64* @GEN3_MAX_FINGERS, align 8
  %120 = icmp sle i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i64, i64* @CYAPA_GEN3, align 8
  %123 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %124 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* @CYAPA_STATE_OP, align 8
  %126 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %127 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %113
  br label %167

129:                                              ; preds = %105, %97
  %130 = load i32*, i32** %6, align 8
  %131 = load i64, i64* @REG_OP_STATUS, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 12
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load i32*, i32** %6, align 8
  %137 = load i64, i64* @REG_OP_DATA1, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 8
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i64, i64* @CYAPA_GEN3, align 8
  %143 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %144 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* @CYAPA_STATE_OP, align 8
  %146 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %147 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %166

148:                                              ; preds = %135, %129
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* @REG_BL_STATUS, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @BL_STATUS_RUNNING, align 4
  %154 = load i32, i32* @BL_STATUS_BUSY, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %148
  %159 = load i64, i64* @CYAPA_GEN3, align 8
  %160 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %161 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load i64, i64* @CYAPA_STATE_BL_BUSY, align 8
  %163 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %164 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %158, %148
  br label %166

166:                                              ; preds = %165, %141
  br label %167

167:                                              ; preds = %166, %128
  br label %168

168:                                              ; preds = %167, %96
  br label %169

169:                                              ; preds = %168, %40
  %170 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %171 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CYAPA_GEN3, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %169
  %176 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %177 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CYAPA_STATE_OP, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %199, label %181

181:                                              ; preds = %175
  %182 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %183 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @CYAPA_STATE_BL_IDLE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %189 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CYAPA_STATE_BL_ACTIVE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %195 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @CYAPA_STATE_BL_BUSY, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193, %187, %181, %175
  store i32 0, i32* %4, align 4
  br label %203

200:                                              ; preds = %193, %169
  %201 = load i32, i32* @EAGAIN, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %200, %199
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i64 @GEN3_FINGER_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
