; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.mxl* }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.mxl = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }

@HYDRA_DMD_DVBS_1ST_CORR_RS_ERRORS_ADDR_OFFSET = common dso_local global i64 0, align 8
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@HYDRA_DMD_DVBS2_CRC_ERRORS_ADDR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ber(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca [8 x i8*], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.mxl*, %struct.mxl** %7, align 8
  store %struct.mxl* %8, %struct.mxl** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.mxl*, %struct.mxl** %3, align 8
  %12 = getelementptr inbounds %struct.mxl, %struct.mxl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.mxl*, %struct.mxl** %3, align 8
  %17 = load %struct.mxl*, %struct.mxl** %3, align 8
  %18 = getelementptr inbounds %struct.mxl, %struct.mxl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @HYDRA_DEMOD_STATUS_LOCK(%struct.mxl* %16, i32 %19)
  %21 = load %struct.mxl*, %struct.mxl** %3, align 8
  %22 = load i64, i64* @HYDRA_DMD_DVBS_1ST_CORR_RS_ERRORS_ADDR_OFFSET, align 8
  %23 = load %struct.mxl*, %struct.mxl** %3, align 8
  %24 = getelementptr inbounds %struct.mxl, %struct.mxl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @HYDRA_DMD_STATUS_OFFSET(i32 %25)
  %27 = add nsw i64 %22, %26
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %29 = bitcast i8** %28 to i32*
  %30 = call i32 @read_register_block(%struct.mxl* %21, i64 %27, i32 32, i32* %29)
  %31 = load %struct.mxl*, %struct.mxl** %3, align 8
  %32 = load %struct.mxl*, %struct.mxl** %3, align 8
  %33 = getelementptr inbounds %struct.mxl, %struct.mxl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @HYDRA_DEMOD_STATUS_UNLOCK(%struct.mxl* %31, i32 %34)
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %70 [
    i32 130, label %39
    i32 129, label %39
  ]

39:                                               ; preds = %1, %1
  %40 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* %40, i8** %46, align 8
  %47 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 2
  %48 = load i8*, i8** %47, align 16
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i8* %55, i8** %61, align 8
  %62 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i8* %63, i8** %69, align 8
  br label %71

70:                                               ; preds = %1
  br label %71

71:                                               ; preds = %70, %39
  %72 = load %struct.mxl*, %struct.mxl** %3, align 8
  %73 = load i64, i64* @HYDRA_DMD_DVBS2_CRC_ERRORS_ADDR_OFFSET, align 8
  %74 = load %struct.mxl*, %struct.mxl** %3, align 8
  %75 = getelementptr inbounds %struct.mxl, %struct.mxl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @HYDRA_DMD_STATUS_OFFSET(i32 %76)
  %78 = add nsw i64 %73, %77
  %79 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %80 = bitcast i8** %79 to i32*
  %81 = call i32 @read_register_block(%struct.mxl* %72, i64 %78, i32 56, i32* %80)
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %147 [
    i32 130, label %85
    i32 129, label %85
    i32 128, label %116
  ]

85:                                               ; preds = %71, %71
  %86 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i8* %86, i8** %92, align 8
  %93 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 5
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i8* %94, i8** %100, align 8
  %101 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i8* %101, i8** %107, align 8
  %108 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 6
  %109 = load i8*, i8** %108, align 16
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  store i8* %109, i8** %115, align 8
  br label %148

116:                                              ; preds = %71
  %117 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i8* %117, i8** %123, align 8
  %124 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i8* %125, i8** %131, align 8
  %132 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  store i8* %132, i8** %138, align 8
  %139 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 2
  %140 = load i8*, i8** %139, align 16
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i8* %140, i8** %146, align 8
  br label %148

147:                                              ; preds = %71
  br label %148

148:                                              ; preds = %147, %116, %85
  %149 = load %struct.mxl*, %struct.mxl** %3, align 8
  %150 = getelementptr inbounds %struct.mxl, %struct.mxl* %149, i32 0, i32 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @HYDRA_DEMOD_STATUS_LOCK(%struct.mxl*, i32) #1

declare dso_local i32 @read_register_block(%struct.mxl*, i64, i32, i32*) #1

declare dso_local i64 @HYDRA_DMD_STATUS_OFFSET(i32) #1

declare dso_local i32 @HYDRA_DEMOD_STATUS_UNLOCK(%struct.mxl*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
