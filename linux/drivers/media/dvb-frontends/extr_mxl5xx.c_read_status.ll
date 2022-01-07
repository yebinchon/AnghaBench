; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.mxl* }
%struct.dtv_frontend_properties = type { %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.mxl = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@HYDRA_DMD_LOCK_STATUS_ADDR_OFFSET = common dso_local global i64 0, align 8
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mxl*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.mxl*, %struct.mxl** %9, align 8
  store %struct.mxl* %10, %struct.mxl** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.mxl*, %struct.mxl** %5, align 8
  %14 = getelementptr inbounds %struct.mxl, %struct.mxl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mxl*, %struct.mxl** %5, align 8
  %19 = load %struct.mxl*, %struct.mxl** %5, align 8
  %20 = getelementptr inbounds %struct.mxl, %struct.mxl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @HYDRA_DEMOD_STATUS_LOCK(%struct.mxl* %18, i32 %21)
  %23 = load %struct.mxl*, %struct.mxl** %5, align 8
  %24 = load i64, i64* @HYDRA_DMD_LOCK_STATUS_ADDR_OFFSET, align 8
  %25 = load %struct.mxl*, %struct.mxl** %5, align 8
  %26 = getelementptr inbounds %struct.mxl, %struct.mxl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @HYDRA_DMD_STATUS_OFFSET(i32 %27)
  %29 = add nsw i64 %24, %28
  %30 = call i32 @read_register(%struct.mxl* %23, i64 %29, i32* %7)
  %31 = load %struct.mxl*, %struct.mxl** %5, align 8
  %32 = load %struct.mxl*, %struct.mxl** %5, align 8
  %33 = getelementptr inbounds %struct.mxl, %struct.mxl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @HYDRA_DEMOD_STATUS_UNLOCK(%struct.mxl* %31, i32 %34)
  %36 = load %struct.mxl*, %struct.mxl** %5, align 8
  %37 = getelementptr inbounds %struct.mxl, %struct.mxl* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 31, i32 0
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = call i32 @read_signal_strength(%struct.dvb_frontend* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FE_HAS_CARRIER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %55 = call i32 @read_snr(%struct.dvb_frontend* %54)
  br label %64

56:                                               ; preds = %2
  %57 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  store i8* %57, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %53
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FE_HAS_SYNC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = call i32 @read_ber(%struct.dvb_frontend* %71)
  br label %102

73:                                               ; preds = %64
  %74 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i8* %74, i8** %80, align 8
  %81 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  store i8* %81, i8** %87, align 8
  %88 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  store i8* %88, i8** %94, align 8
  %95 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %73, %70
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @HYDRA_DEMOD_STATUS_LOCK(%struct.mxl*, i32) #1

declare dso_local i32 @read_register(%struct.mxl*, i64, i32*) #1

declare dso_local i64 @HYDRA_DMD_STATUS_OFFSET(i32) #1

declare dso_local i32 @HYDRA_DEMOD_STATUS_UNLOCK(%struct.mxl*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @read_signal_strength(%struct.dvb_frontend*) #1

declare dso_local i32 @read_snr(%struct.dvb_frontend*) #1

declare dso_local i32 @read_ber(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
