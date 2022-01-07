; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv0903_set_tspath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv0903_set_tspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@STV090x_TSGENERAL = common dso_local global i32 0, align 4
@STV090x_TSGENERAL1X = common dso_local global i32 0, align 4
@STV090x_P1_TSCFGH = common dso_local global i32 0, align 4
@TSFIFO_SERIAL_FIELD = common dso_local global i32 0, align 4
@TSFIFO_DVBCI_FIELD = common dso_local global i32 0, align 4
@STV090x_P1_TSCFGM = common dso_local global i32 0, align 4
@TSFIFO_MANSPEED_FIELD = common dso_local global i32 0, align 4
@STV090x_P1_TSSPEED = common dso_local global i32 0, align 4
@RST_HWARE_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv0903_set_tspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0903_set_tspath(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %6 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %7 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %14 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %23 [
    i32 130, label %18
    i32 131, label %18
    i32 128, label %22
    i32 129, label %22
  ]

18:                                               ; preds = %12, %12
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %20 = load i32, i32* @STV090x_TSGENERAL, align 4
  %21 = call i64 @stv090x_write_reg(%struct.stv090x_state* %19, i32 %20, i32 0)
  br label %27

22:                                               ; preds = %12, %12
  br label %23

23:                                               ; preds = %12, %22
  %24 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %25 = load i32, i32* @STV090x_TSGENERAL, align 4
  %26 = call i64 @stv090x_write_reg(%struct.stv090x_state* %24, i32 %25, i32 12)
  br label %27

27:                                               ; preds = %23, %18
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %30 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %39 [
    i32 130, label %34
    i32 131, label %34
    i32 128, label %38
    i32 129, label %38
  ]

34:                                               ; preds = %28, %28
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %36 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %37 = call i64 @stv090x_write_reg(%struct.stv090x_state* %35, i32 %36, i32 16)
  br label %43

38:                                               ; preds = %28, %28
  br label %39

39:                                               ; preds = %28, %38
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %41 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %42 = call i64 @stv090x_write_reg(%struct.stv090x_state* %40, i32 %41, i32 20)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %46 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %118 [
    i32 130, label %50
    i32 131, label %67
    i32 128, label %84
    i32 129, label %101
  ]

50:                                               ; preds = %44
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %52 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %53 = call i32 @stv090x_read_reg(%struct.stv090x_state* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %56 = call i32 @STV090x_SETFIELD_Px(i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %59 = call i32 @STV090x_SETFIELD_Px(i32 %57, i32 %58, i32 0)
  %60 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %61 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @stv090x_write_reg(%struct.stv090x_state* %60, i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %224

66:                                               ; preds = %50
  br label %119

67:                                               ; preds = %44
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %69 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %70 = call i32 @stv090x_read_reg(%struct.stv090x_state* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %73 = call i32 @STV090x_SETFIELD_Px(i32 %71, i32 %72, i32 0)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %76 = call i32 @STV090x_SETFIELD_Px(i32 %74, i32 %75, i32 1)
  %77 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %78 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @stv090x_write_reg(%struct.stv090x_state* %77, i32 %78, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %224

83:                                               ; preds = %67
  br label %119

84:                                               ; preds = %44
  %85 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %86 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %87 = call i32 @stv090x_read_reg(%struct.stv090x_state* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %90 = call i32 @STV090x_SETFIELD_Px(i32 %88, i32 %89, i32 1)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %93 = call i32 @STV090x_SETFIELD_Px(i32 %91, i32 %92, i32 0)
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %95 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @stv090x_write_reg(%struct.stv090x_state* %94, i32 %95, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %224

100:                                              ; preds = %84
  br label %119

101:                                              ; preds = %44
  %102 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %103 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %104 = call i32 @stv090x_read_reg(%struct.stv090x_state* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %107 = call i32 @STV090x_SETFIELD_Px(i32 %105, i32 %106, i32 1)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %110 = call i32 @STV090x_SETFIELD_Px(i32 %108, i32 %109, i32 1)
  %111 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %112 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @stv090x_write_reg(%struct.stv090x_state* %111, i32 %112, i32 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  br label %224

117:                                              ; preds = %101
  br label %119

118:                                              ; preds = %44
  br label %119

119:                                              ; preds = %118, %117, %100, %83, %66
  %120 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %121 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %200

126:                                              ; preds = %119
  %127 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %128 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %133 [
    i32 130, label %132
    i32 131, label %132
    i32 128, label %156
    i32 129, label %156
  ]

132:                                              ; preds = %126, %126
  br label %133

133:                                              ; preds = %126, %132
  %134 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %135 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %141 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sdiv i64 %144, 4
  %146 = sdiv i64 %139, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  store i32 8, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %133
  %152 = load i32, i32* %5, align 4
  %153 = icmp sgt i32 %152, 255
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 255, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %151
  br label %179

156:                                              ; preds = %126, %126
  %157 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %158 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %164 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sdiv i64 %167, 32
  %169 = sdiv i64 %162, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %171, 32
  br i1 %172, label %173, label %174

173:                                              ; preds = %156
  store i32 32, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %156
  %175 = load i32, i32* %5, align 4
  %176 = icmp sgt i32 %175, 255
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 255, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %174
  br label %179

179:                                              ; preds = %178, %155
  %180 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %181 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %182 = call i32 @stv090x_read_reg(%struct.stv090x_state* %180, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %185 = call i32 @STV090x_SETFIELD_Px(i32 %183, i32 %184, i32 3)
  %186 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %187 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i64 @stv090x_write_reg(%struct.stv090x_state* %186, i32 %187, i32 %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %224

192:                                              ; preds = %179
  %193 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %194 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i64 @stv090x_write_reg(%struct.stv090x_state* %193, i32 %194, i32 %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %224

199:                                              ; preds = %192
  br label %200

200:                                              ; preds = %199, %119
  %201 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %202 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %203 = call i32 @stv090x_read_reg(%struct.stv090x_state* %201, i32 %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @RST_HWARE_FIELD, align 4
  %206 = call i32 @STV090x_SETFIELD_Px(i32 %204, i32 %205, i32 1)
  %207 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %208 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %209 = load i32, i32* %4, align 4
  %210 = call i64 @stv090x_write_reg(%struct.stv090x_state* %207, i32 %208, i32 %209)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  br label %224

213:                                              ; preds = %200
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @RST_HWARE_FIELD, align 4
  %216 = call i32 @STV090x_SETFIELD_Px(i32 %214, i32 %215, i32 0)
  %217 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %218 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i64 @stv090x_write_reg(%struct.stv090x_state* %217, i32 %218, i32 %219)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %224

223:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %227

224:                                              ; preds = %222, %212, %198, %191, %116, %99, %82, %65
  %225 = load i32, i32* @FE_ERROR, align 4
  %226 = call i32 @dprintk(i32 %225, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %227

227:                                              ; preds = %224, %223
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
