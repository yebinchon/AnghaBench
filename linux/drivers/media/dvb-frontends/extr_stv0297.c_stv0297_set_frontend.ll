; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.stv0297_state*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.stv0297_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0297_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0297_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.stv0297_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 2
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.stv0297_state*, %struct.stv0297_state** %17, align 8
  store %struct.stv0297_state* %18, %struct.stv0297_state** %5, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %24 [
    i32 131, label %22
    i32 129, label %22
    i32 128, label %22
    i32 132, label %23
    i32 130, label %23
  ]

22:                                               ; preds = %1, %1, %1
  store i32 100, i32* %9, align 4
  store i32 1000, i32* %10, align 4
  br label %27

23:                                               ; preds = %1, %1
  store i32 200, i32* %9, align 4
  store i32 500, i32* %10, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %340

27:                                               ; preds = %23, %22
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %32 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 133
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 134, i32 133
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %37, %27
  store i32 -330, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %50 [
    i32 134, label %44
    i32 133, label %45
  ]

44:                                               ; preds = %42
  br label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %340

53:                                               ; preds = %45, %44
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %55 = call i32 @stv0297_init(%struct.dvb_frontend* %54)
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %59, align 8
  %61 = icmp ne i32 (%struct.dvb_frontend.1*)* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %53
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %66, align 8
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %69 = bitcast %struct.dvb_frontend* %68 to %struct.dvb_frontend.1*
  %70 = call i32 %67(%struct.dvb_frontend.1* %69)
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %62
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %79, align 8
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %82 = bitcast %struct.dvb_frontend* %81 to %struct.dvb_frontend.0*
  %83 = call i32 %80(%struct.dvb_frontend.0* %82, i32 0)
  br label %84

84:                                               ; preds = %76, %62
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %87 = call i32 @stv0297_writereg(%struct.stv0297_state* %86, i32 130, i32 0)
  %88 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %89 = call i32 @stv0297_set_initialdemodfreq(%struct.stv0297_state* %88, i32 7250)
  %90 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %91 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %90, i32 67, i32 16, i32 0)
  %92 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %93 = call i32 @stv0297_writereg(%struct.stv0297_state* %92, i32 65, i32 0)
  %94 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %95 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %94, i32 66, i32 3, i32 1)
  %96 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %97 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %96, i32 54, i32 96, i32 0)
  %98 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %99 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %98, i32 54, i32 24, i32 0)
  %100 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %101 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %100, i32 113, i32 128, i32 128)
  %102 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %103 = call i32 @stv0297_writereg(%struct.stv0297_state* %102, i32 114, i32 0)
  %104 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %105 = call i32 @stv0297_writereg(%struct.stv0297_state* %104, i32 115, i32 0)
  %106 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %107 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %106, i32 116, i32 15, i32 0)
  %108 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %109 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %108, i32 67, i32 8, i32 0)
  %110 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %111 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %110, i32 113, i32 128, i32 0)
  %112 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %113 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %112, i32 90, i32 32, i32 32)
  %114 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %115 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %114, i32 91, i32 2, i32 2)
  %116 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %117 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %116, i32 91, i32 2, i32 0)
  %118 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %119 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %118, i32 91, i32 1, i32 0)
  %120 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %121 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %120, i32 90, i32 64, i32 64)
  %122 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %123 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %122, i32 106, i32 1, i32 0)
  %124 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %125 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %124, i32 129, i32 1, i32 1)
  %126 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %127 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %126, i32 129, i32 1, i32 0)
  %128 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %129 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %128, i32 131, i32 32, i32 32)
  %130 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %131 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %130, i32 131, i32 32, i32 0)
  %132 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %133 = call i32 @stv0297_readreg(%struct.stv0297_state* %132, i32 0)
  %134 = and i32 %133, 15
  store i32 %134, i32* %6, align 4
  %135 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %136 = call i32 @stv0297_readreg(%struct.stv0297_state* %135, i32 1)
  %137 = ashr i32 %136, 4
  store i32 %137, i32* %7, align 4
  %138 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %139 = call i32 @stv0297_readreg(%struct.stv0297_state* %138, i32 1)
  %140 = and i32 %139, 15
  store i32 %140, i32* %8, align 4
  %141 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %142 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %141, i32 132, i32 1, i32 1)
  %143 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %144 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %143, i32 132, i32 1, i32 0)
  %145 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %145, i32 0, i32 15, i32 %146)
  %148 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = shl i32 %149, 4
  %151 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %148, i32 1, i32 240, i32 %150)
  %152 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %152, i32 1, i32 15, i32 %153)
  %155 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %156 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %155, i32 135, i32 128, i32 0)
  %157 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %158 = call i32 @stv0297_writereg(%struct.stv0297_state* %157, i32 99, i32 0)
  %159 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %160 = call i32 @stv0297_writereg(%struct.stv0297_state* %159, i32 100, i32 0)
  %161 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %162 = call i32 @stv0297_writereg(%struct.stv0297_state* %161, i32 101, i32 0)
  %163 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %164 = call i32 @stv0297_writereg(%struct.stv0297_state* %163, i32 102, i32 0)
  %165 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %166 = call i32 @stv0297_writereg(%struct.stv0297_state* %165, i32 103, i32 0)
  %167 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %168 = call i32 @stv0297_writereg(%struct.stv0297_state* %167, i32 104, i32 0)
  %169 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %170 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %169, i32 105, i32 15, i32 0)
  %171 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %172 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @stv0297_set_qam(%struct.stv0297_state* %171, i32 %174)
  %176 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %177 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %178 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 1000
  %181 = call i32 @stv0297_set_symbolrate(%struct.stv0297_state* %176, i32 %180)
  %182 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %185 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 1000
  %188 = call i32 @stv0297_set_sweeprate(%struct.stv0297_state* %182, i32 %183, i32 %187)
  %189 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @stv0297_set_carrieroffset(%struct.stv0297_state* %189, i32 %190)
  %192 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @stv0297_set_inversion(%struct.stv0297_state* %192, i32 %193)
  %195 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %196 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 132
  br i1 %198, label %204, label %199

199:                                              ; preds = %85
  %200 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %201 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 130
  br i1 %203, label %204, label %207

204:                                              ; preds = %199, %85
  %205 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %206 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %205, i32 136, i32 8, i32 0)
  br label %210

207:                                              ; preds = %199
  %208 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %209 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %208, i32 136, i32 8, i32 8)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %212 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %211, i32 90, i32 32, i32 0)
  %213 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %214 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %213, i32 106, i32 1, i32 1)
  %215 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %216 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %215, i32 67, i32 64, i32 64)
  %217 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %218 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %217, i32 91, i32 48, i32 0)
  %219 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %220 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %219, i32 3, i32 12, i32 12)
  %221 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %222 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %221, i32 3, i32 3, i32 3)
  %223 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %224 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %223, i32 67, i32 16, i32 16)
  %225 = load i64, i64* @jiffies, align 8
  %226 = call i64 @msecs_to_jiffies(i32 2000)
  %227 = add i64 %225, %226
  store i64 %227, i64* %12, align 8
  br label %228

228:                                              ; preds = %240, %210
  %229 = load i64, i64* @jiffies, align 8
  %230 = load i64, i64* %12, align 8
  %231 = call i64 @time_before(i64 %229, i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  %234 = call i32 @msleep(i32 10)
  %235 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %236 = call i32 @stv0297_readreg(%struct.stv0297_state* %235, i32 67)
  %237 = and i32 %236, 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  br label %241

240:                                              ; preds = %233
  br label %228

241:                                              ; preds = %239, %228
  %242 = load i64, i64* @jiffies, align 8
  %243 = load i64, i64* %12, align 8
  %244 = call i64 @time_after(i64 %242, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %337

247:                                              ; preds = %241
  %248 = call i32 @msleep(i32 20)
  %249 = load i64, i64* @jiffies, align 8
  %250 = call i64 @msecs_to_jiffies(i32 500)
  %251 = add i64 %249, %250
  store i64 %251, i64* %12, align 8
  br label %252

252:                                              ; preds = %264, %247
  %253 = load i64, i64* @jiffies, align 8
  %254 = load i64, i64* %12, align 8
  %255 = call i64 @time_before(i64 %253, i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = call i32 @msleep(i32 10)
  %259 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %260 = call i32 @stv0297_readreg(%struct.stv0297_state* %259, i32 130)
  %261 = and i32 %260, 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %265

264:                                              ; preds = %257
  br label %252

265:                                              ; preds = %263, %252
  %266 = load i64, i64* @jiffies, align 8
  %267 = load i64, i64* %12, align 8
  %268 = call i64 @time_after(i64 %266, i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %337

271:                                              ; preds = %265
  %272 = load i64, i64* @jiffies, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i64 @msecs_to_jiffies(i32 %273)
  %275 = add i64 %272, %274
  store i64 %275, i64* %12, align 8
  br label %276

276:                                              ; preds = %288, %271
  %277 = load i64, i64* @jiffies, align 8
  %278 = load i64, i64* %12, align 8
  %279 = call i64 @time_before(i64 %277, i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = call i32 @msleep(i32 10)
  %283 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %284 = call i32 @stv0297_readreg(%struct.stv0297_state* %283, i32 130)
  %285 = and i32 %284, 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  br label %289

288:                                              ; preds = %281
  br label %276

289:                                              ; preds = %287, %276
  %290 = load i64, i64* @jiffies, align 8
  %291 = load i64, i64* %12, align 8
  %292 = call i64 @time_after(i64 %290, i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %337

295:                                              ; preds = %289
  %296 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %297 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %296, i32 106, i32 1, i32 0)
  %298 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %299 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %298, i32 136, i32 8, i32 0)
  %300 = load i64, i64* @jiffies, align 8
  %301 = call i64 @msecs_to_jiffies(i32 20)
  %302 = add i64 %300, %301
  store i64 %302, i64* %12, align 8
  br label %303

303:                                              ; preds = %315, %295
  %304 = load i64, i64* @jiffies, align 8
  %305 = load i64, i64* %12, align 8
  %306 = call i64 @time_before(i64 %304, i64 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %303
  %309 = call i32 @msleep(i32 10)
  %310 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %311 = call i32 @stv0297_readreg(%struct.stv0297_state* %310, i32 223)
  %312 = and i32 %311, 128
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %308
  br label %316

315:                                              ; preds = %308
  br label %303

316:                                              ; preds = %314, %303
  %317 = load i64, i64* @jiffies, align 8
  %318 = load i64, i64* %12, align 8
  %319 = call i64 @time_after(i64 %317, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %337

322:                                              ; preds = %316
  %323 = call i32 @msleep(i32 100)
  %324 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %325 = call i32 @stv0297_readreg(%struct.stv0297_state* %324, i32 223)
  %326 = and i32 %325, 128
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %322
  br label %337

329:                                              ; preds = %322
  %330 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %331 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %330, i32 90, i32 64, i32 0)
  %332 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %333 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %336 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  store i32 0, i32* %2, align 4
  br label %340

337:                                              ; preds = %328, %321, %294, %270, %246
  %338 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %339 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %338, i32 106, i32 1, i32 0)
  store i32 0, i32* %2, align 4
  br label %340

340:                                              ; preds = %337, %329, %50, %24
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local i32 @stv0297_init(%struct.dvb_frontend*) #1

declare dso_local i32 @stv0297_writereg(%struct.stv0297_state*, i32, i32) #1

declare dso_local i32 @stv0297_set_initialdemodfreq(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_writereg_mask(%struct.stv0297_state*, i32, i32, i32) #1

declare dso_local i32 @stv0297_readreg(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_qam(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_symbolrate(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_sweeprate(%struct.stv0297_state*, i32, i32) #1

declare dso_local i32 @stv0297_set_carrieroffset(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_inversion(%struct.stv0297_state*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
