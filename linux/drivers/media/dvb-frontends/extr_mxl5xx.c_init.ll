; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  store %struct.dtv_frontend_properties* %5, %struct.dtv_frontend_properties** %3, align 8
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %7 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i8* %9, i8** %15, align 8
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i8* %19, i8** %25, align 8
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i8* %29, i8** %35, align 8
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  store i8* %49, i8** %55, align 8
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i8* %59, i8** %65, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
