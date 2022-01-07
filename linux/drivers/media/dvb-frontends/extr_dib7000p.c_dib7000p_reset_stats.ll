; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.dib7000p_state* }
%struct.dtv_frontend_properties = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.dib7000p_state = type { i64, i64, i32 }

@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @dib7000p_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_reset_stats(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  store %struct.dib7000p_state* %8, %struct.dib7000p_state** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 5
  %13 = call i32 @memset(%struct.TYPE_8__* %12, i32 0, i32 16)
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 4
  %16 = call i32 @memset(%struct.TYPE_8__* %15, i32 0, i32 16)
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 1
  %19 = call i32 @memset(%struct.TYPE_8__* %18, i32 0, i32 16)
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = call i32 @memset(%struct.TYPE_8__* %21, i32 0, i32 16)
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 3
  %25 = call i32 @memset(%struct.TYPE_8__* %24, i32 0, i32 16)
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i8* %44, i8** %50, align 8
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* %57, i8** %63, align 8
  %64 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i8* %64, i8** %70, align 8
  %71 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  %78 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %78, i8** %84, align 8
  %85 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i8* %85, i8** %91, align 8
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %93 = call i32 @dib7000p_read_unc_blocks(%struct.dvb_frontend* %92, i32* %5)
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %96 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %100 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dib7000p_read_unc_blocks(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
