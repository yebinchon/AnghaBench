; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i64, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, %struct.dtv_frontend_properties*)*, i32 (%struct.TYPE_7__*, i32*)* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"TPS lock on the slave%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @dib9000_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib9000_state*, %struct.dib9000_state** %12, align 8
  store %struct.dib9000_state* %13, %struct.dib9000_state** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %20 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %19, i32 0, i32 1
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINTR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %373

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  store i64 1, i64* %7, align 8
  br label %29

29:                                               ; preds = %245, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %35 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br label %41

41:                                               ; preds = %33, %29
  %42 = phi i1 [ false, %29 ], [ %40, %33 ]
  br i1 %42, label %43, label %248

43:                                               ; preds = %41
  %44 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %45 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %46, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %51, align 8
  %53 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %54 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 %52(%struct.TYPE_7__* %58, i32* %9)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @FE_HAS_SYNC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %244

64:                                               ; preds = %43
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %68 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_7__*, %struct.dtv_frontend_properties*)*, i32 (%struct.TYPE_7__*, %struct.dtv_frontend_properties*)** %74, align 8
  %76 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %77 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %83 = call i32 %75(%struct.TYPE_7__* %81, %struct.dtv_frontend_properties* %82)
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %240, %64
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %90 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = icmp ne %struct.TYPE_7__* %94, null
  br label %96

96:                                               ; preds = %88, %84
  %97 = phi i1 [ false, %84 ], [ %95, %88 ]
  br i1 %97, label %98, label %243

98:                                               ; preds = %96
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %239

102:                                              ; preds = %98
  %103 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %104 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %105, i64 %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %113 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %114, i64 %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  store i32 %111, i32* %119, align 8
  %120 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %121 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %120, i32 0, i32 2
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %122, i64 %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %130 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %131, i64 %132
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 7
  store i32 %128, i32* %136, align 4
  %137 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %138 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %137, i32 0, i32 2
  %139 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %139, i64 %140
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %147 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %148, i64 %149
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 6
  store i32 %145, i32* %153, align 8
  %154 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %155 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %154, i32 0, i32 2
  %156 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %156, i64 %157
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %164 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %163, i32 0, i32 2
  %165 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %165, i64 %166
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 5
  store i32 %162, i32* %170, align 4
  %171 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %172 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %171, i32 0, i32 2
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %173, i64 %174
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %181 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %180, i32 0, i32 2
  %182 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %181, align 8
  %183 = load i64, i64* %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %182, i64 %183
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  store i32 %179, i32* %187, align 4
  %188 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %189 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %188, i32 0, i32 2
  %190 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %190, i64 %191
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %198 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %199, i64 %200
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  store i32 %196, i32* %204, align 8
  %205 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %206 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %205, i32 0, i32 2
  %207 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %206, align 8
  %208 = load i64, i64* %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %207, i64 %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %215 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %214, i32 0, i32 2
  %216 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %215, align 8
  %217 = load i64, i64* %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %216, i64 %217
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i32 %213, i32* %221, align 4
  %222 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %223 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %222, i32 0, i32 2
  %224 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %223, align 8
  %225 = load i64, i64* %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %224, i64 %225
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %232 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %231, i32 0, i32 2
  %233 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %232, align 8
  %234 = load i64, i64* %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %233, i64 %234
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32 %230, i32* %238, align 8
  br label %239

239:                                              ; preds = %102, %98
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %8, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %8, align 8
  br label %84

243:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %362

244:                                              ; preds = %43
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %7, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %7, align 8
  br label %29

248:                                              ; preds = %41
  %249 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %250 = call i32 @dib9000_fw_get_channel(%struct.dvb_frontend* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %362

254:                                              ; preds = %248
  store i64 1, i64* %7, align 8
  br label %255

255:                                              ; preds = %358, %254
  %256 = load i64, i64* %7, align 8
  %257 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %255
  %260 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %261 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %260, i32 0, i32 2
  %262 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %261, align 8
  %263 = load i64, i64* %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %262, i64 %263
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = icmp ne %struct.TYPE_7__* %265, null
  br label %267

267:                                              ; preds = %259, %255
  %268 = phi i1 [ false, %255 ], [ %266, %259 ]
  br i1 %268, label %269, label %361

269:                                              ; preds = %267
  %270 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %271 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %274 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %273, i32 0, i32 2
  %275 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %274, align 8
  %276 = load i64, i64* %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %275, i64 %276
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 7
  store i32 %272, i32* %280, align 4
  %281 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %282 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %285 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %284, i32 0, i32 2
  %286 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %285, align 8
  %287 = load i64, i64* %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %286, i64 %287
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 6
  store i32 %283, i32* %291, align 8
  %292 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %293 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %296 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %295, i32 0, i32 2
  %297 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %296, align 8
  %298 = load i64, i64* %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %297, i64 %298
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 5
  store i32 %294, i32* %302, align 4
  %303 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %304 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %307 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %306, i32 0, i32 2
  %308 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %307, align 8
  %309 = load i64, i64* %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %308, i64 %309
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 4
  store i32 %305, i32* %313, align 8
  %314 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %315 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %318 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %317, i32 0, i32 2
  %319 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %318, align 8
  %320 = load i64, i64* %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %319, i64 %320
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 3
  store i32 %316, i32* %324, align 4
  %325 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %326 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %329 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %328, i32 0, i32 2
  %330 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %329, align 8
  %331 = load i64, i64* %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %330, i64 %331
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  store i32 %327, i32* %335, align 8
  %336 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %337 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %340 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %339, i32 0, i32 2
  %341 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %340, align 8
  %342 = load i64, i64* %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %341, i64 %342
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 1
  store i32 %338, i32* %346, align 4
  %347 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %348 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %351 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %350, i32 0, i32 2
  %352 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %351, align 8
  %353 = load i64, i64* %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %352, i64 %353
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  store i32 %349, i32* %357, align 8
  br label %358

358:                                              ; preds = %269
  %359 = load i64, i64* %7, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %7, align 8
  br label %255

361:                                              ; preds = %267
  store i32 0, i32* %10, align 4
  br label %362

362:                                              ; preds = %361, %253, %243
  %363 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %364 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %362
  %368 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %369 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %368, i32 0, i32 1
  %370 = call i32 @mutex_unlock(i32* %369)
  br label %371

371:                                              ; preds = %367, %362
  %372 = load i32, i32* %10, align 4
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %371, %23
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib9000_fw_get_channel(%struct.dvb_frontend*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
