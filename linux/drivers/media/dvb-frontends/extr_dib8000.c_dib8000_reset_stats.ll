; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { %struct.TYPE_10__, i64, i64, i32, %struct.TYPE_6__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_6__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @dib8000_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_reset_stats(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  store %struct.dib8000_state* %8, %struct.dib8000_state** %3, align 8
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %10 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %11, i64 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %4, align 8
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 5
  %17 = call i32 @memset(%struct.TYPE_10__* %16, i32 0, i32 16)
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 4
  %20 = call i32 @memset(%struct.TYPE_10__* %19, i32 0, i32 16)
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 1
  %23 = call i32 @memset(%struct.TYPE_10__* %22, i32 0, i32 16)
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  %26 = call i32 @memset(%struct.TYPE_10__* %25, i32 0, i32 16)
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 3
  %29 = call i32 @memset(%struct.TYPE_10__* %28, i32 0, i32 16)
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i8* %61, i8** %67, align 8
  %68 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i8* %68, i8** %74, align 8
  %75 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i8* %75, i8** %81, align 8
  %82 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i8* %82, i8** %88, align 8
  %89 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i8* %89, i8** %95, align 8
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %97 = call i32 @dib8000_read_unc_blocks(%struct.dvb_frontend* %96, i32* %5)
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 0, %98
  %100 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %101 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %103 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %105 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %107 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %106, i32 0, i32 0
  %108 = call i32 @memset(%struct.TYPE_10__* %107, i32 0, i32 16)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dib8000_read_unc_blocks(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
