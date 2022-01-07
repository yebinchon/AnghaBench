; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_stv0910_init_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_stv0910_init_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv*)* @stv0910_init_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0910_init_stats(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.stv* %0, %struct.stv** %2, align 8
  %4 = load %struct.stv*, %struct.stv** %2, align 8
  %5 = getelementptr inbounds %struct.stv, %struct.stv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store %struct.dtv_frontend_properties* %6, %struct.dtv_frontend_properties** %3, align 8
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i8* %10, i8** %16, align 8
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i8* %20, i8** %26, align 8
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i8* %30, i8** %36, align 8
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i8* %40, i8** %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
