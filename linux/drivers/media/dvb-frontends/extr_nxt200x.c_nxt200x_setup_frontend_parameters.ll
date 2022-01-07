; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_setup_frontend_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_setup_frontend_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.nxt200x_state*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.nxt200x_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend*, i32)* }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @nxt200x_setup_frontend_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt200x_setup_frontend_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.nxt200x_state*, align 8
  %6 = alloca [5 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 2
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %10, align 8
  store %struct.nxt200x_state* %11, %struct.nxt200x_state** %5, align 8
  %12 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %13 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %12)
  %14 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %15 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 131
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 4, i32* %19, align 16
  %20 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %22 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %20, i32 20, i32* %21, i32 1)
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %23, align 16
  %24 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %26 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %24, i32 23, i32* %25, i32 1)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %63 [
    i32 129, label %31
    i32 130, label %31
    i32 128, label %47
  ]

31:                                               ; preds = %27, %27
  %32 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %33 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.dvb_frontend*, i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %40 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %42, align 8
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %45 = call i32 %43(%struct.dvb_frontend* %44, i32 1)
  br label %46

46:                                               ; preds = %38, %31
  br label %66

47:                                               ; preds = %27
  %48 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %49 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.dvb_frontend*, i32)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %56 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %58, align 8
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = call i32 %59(%struct.dvb_frontend* %60, i32 0)
  br label %62

62:                                               ; preds = %54, %47
  br label %66

63:                                               ; preds = %27
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %327

66:                                               ; preds = %62, %46
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.dvb_frontend.0*, i32*, i32)* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %77, align 8
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = bitcast %struct.dvb_frontend* %79 to %struct.dvb_frontend.0*
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %82 = call i32 %78(%struct.dvb_frontend.0* %80, i32* %81, i32 5)
  %83 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %85 = call i32 @nxt200x_writetuner(%struct.nxt200x_state* %83, i32* %84)
  br label %86

86:                                               ; preds = %73, %66
  %87 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %88 = call i32 @nxt200x_agc_reset(%struct.nxt200x_state* %87)
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %96 [
    i32 129, label %92
    i32 130, label %92
    i32 128, label %94
  ]

92:                                               ; preds = %86, %86
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 116, i32* %93, align 16
  br label %99

94:                                               ; preds = %86
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 112, i32* %95, align 16
  br label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %327

99:                                               ; preds = %94, %92
  %100 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %102 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %100, i32 66, i32* %101, i32 1)
  %103 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %104 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %110 [
    i32 132, label %106
    i32 131, label %108
  ]

106:                                              ; preds = %99
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 135, i32* %107, align 16
  br label %113

108:                                              ; preds = %99
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 7, i32* %109, align 16
  br label %113

110:                                              ; preds = %99
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %327

113:                                              ; preds = %108, %106
  %114 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %116 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %114, i32 87, i32* %115, i32 1)
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 16, i32* %117, align 16
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %120 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %130 [
    i32 132, label %122
    i32 131, label %126
  ]

122:                                              ; preds = %113
  %123 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %125 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %123, i32 88, i32* %124, i32 2)
  br label %133

126:                                              ; preds = %113
  %127 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %129 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %127, i32 88, i32* %128, i32 2)
  br label %133

130:                                              ; preds = %113
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %327

133:                                              ; preds = %126, %122
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %143 [
    i32 129, label %137
    i32 130, label %139
    i32 128, label %141
  ]

137:                                              ; preds = %133
  %138 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 104, i32* %138, align 16
  br label %146

139:                                              ; preds = %133
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 100, i32* %140, align 16
  br label %146

141:                                              ; preds = %133
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 96, i32* %142, align 16
  br label %146

143:                                              ; preds = %133
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %327

146:                                              ; preds = %141, %139, %137
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %149 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %159 [
    i32 132, label %151
    i32 131, label %155
  ]

151:                                              ; preds = %146
  %152 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %154 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %152, i32 92, i32* %153, i32 2)
  br label %162

155:                                              ; preds = %146
  %156 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %158 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %156, i32 92, i32* %157, i32 2)
  br label %162

159:                                              ; preds = %146
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %327

162:                                              ; preds = %155, %151
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 5, i32* %163, align 16
  %164 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %166 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %164, i32 67, i32* %165, i32 1)
  %167 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %168 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 131
  br i1 %170, label %171, label %177

171:                                              ; preds = %162
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %172, align 16
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %173, align 4
  %174 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %176 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %174, i32 70, i32* %175, i32 2)
  br label %177

177:                                              ; preds = %171, %162
  %178 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 128, i32* %178, align 16
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %181 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %191 [
    i32 132, label %183
    i32 131, label %187
  ]

183:                                              ; preds = %177
  %184 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %185 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %186 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %184, i32 75, i32* %185, i32 2)
  br label %194

187:                                              ; preds = %177
  %188 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %189 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %190 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %188, i32 75, i32* %189, i32 2)
  br label %194

191:                                              ; preds = %177
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %327

194:                                              ; preds = %187, %183
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %195, align 16
  %196 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %198 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %196, i32 77, i32* %197, i32 1)
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 68, i32* %199, align 16
  %200 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %201 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %202 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %200, i32 85, i32* %201, i32 1)
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 4, i32* %203, align 16
  %204 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %205 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %206 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %204, i32 65, i32* %205, i32 1)
  %207 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %208 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 131
  br i1 %210, label %211, label %264

211:                                              ; preds = %194
  %212 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %213 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %214 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %212, i32 128, i32* %213, i32 1)
  %215 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 36, i32* %215, align 16
  %216 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %217 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %218 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %216, i32 128, i32* %217, i32 1)
  %219 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %221 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %219, i32 8, i32* %220, i32 1)
  %222 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 16, i32* %222, align 16
  %223 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %224 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %225 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %223, i32 8, i32* %224, i32 1)
  %226 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %228 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %226, i32 8, i32* %227, i32 1)
  %229 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %229, align 16
  %230 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %231 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %232 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %230, i32 8, i32* %231, i32 1)
  %233 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %234 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %235 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %233, i32 128, i32* %234, i32 1)
  %236 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 4, i32* %236, align 16
  %237 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %238 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %239 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %237, i32 128, i32* %238, i32 1)
  %240 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %240, align 16
  %241 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %242 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %243 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %241, i32 129, i32* %242, i32 1)
  %244 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 128, i32* %244, align 16
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %245, align 4
  %246 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %246, align 8
  %247 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %248 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %249 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %247, i32 130, i32* %248, i32 3)
  %250 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %251 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %252 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %250, i32 136, i32* %251, i32 1)
  %253 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 17, i32* %253, align 16
  %254 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %255 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %256 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %254, i32 136, i32* %255, i32 1)
  %257 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %258 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %259 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %257, i32 128, i32* %258, i32 1)
  %260 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 68, i32* %260, align 16
  %261 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %262 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %263 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %261, i32 128, i32* %262, i32 1)
  br label %264

264:                                              ; preds = %211, %194
  %265 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %266 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  switch i32 %267, label %274 [
    i32 129, label %268
    i32 130, label %270
    i32 128, label %272
  ]

268:                                              ; preds = %264
  %269 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 2, i32* %269, align 16
  br label %277

270:                                              ; preds = %264
  %271 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 3, i32* %271, align 16
  br label %277

272:                                              ; preds = %264
  %273 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %273, align 16
  br label %277

274:                                              ; preds = %264
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %2, align 4
  br label %327

277:                                              ; preds = %272, %270, %268
  %278 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %279 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %280 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %278, i32 48, i32* %279, i32 1)
  %281 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %281, align 16
  %282 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %283 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %284 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %282, i32 65, i32* %283, i32 1)
  %285 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 128, i32* %285, align 16
  %286 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %286, align 4
  %287 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %288 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  switch i32 %289, label %304 [
    i32 132, label %290
    i32 131, label %297
  ]

290:                                              ; preds = %277
  %291 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %292 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %293 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %291, i32 73, i32* %292, i32 2)
  %294 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %295 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %296 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %294, i32 75, i32* %295, i32 2)
  br label %307

297:                                              ; preds = %277
  %298 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %299 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %300 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %298, i32 73, i32* %299, i32 2)
  %301 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %302 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %303 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %301, i32 75, i32* %302, i32 2)
  br label %307

304:                                              ; preds = %277
  %305 = load i32, i32* @EINVAL, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %2, align 4
  br label %327

307:                                              ; preds = %297, %290
  %308 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 4, i32* %308, align 16
  %309 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %310 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %311 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %309, i32 65, i32* %310, i32 1)
  %312 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %313 = call i32 @nxt200x_microcontroller_start(%struct.nxt200x_state* %312)
  %314 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %315 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp eq i32 %316, 131
  br i1 %317, label %318, label %326

318:                                              ; preds = %307
  %319 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %320 = call i32 @nxt2004_microcontroller_init(%struct.nxt200x_state* %319)
  %321 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 240, i32* %321, align 16
  %322 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %322, align 4
  %323 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %324 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %325 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %323, i32 92, i32* %324, i32 2)
  br label %326

326:                                              ; preds = %318, %307
  store i32 0, i32* %2, align 4
  br label %327

327:                                              ; preds = %326, %304, %274, %191, %159, %143, %130, %110, %96, %63
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_writebytes(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_writetuner(%struct.nxt200x_state*, i32*) #1

declare dso_local i32 @nxt200x_agc_reset(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_microcontroller_start(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt2004_microcontroller_init(%struct.nxt200x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
