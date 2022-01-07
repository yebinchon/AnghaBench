; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_per_slices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_per_slices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i64, i32, i32, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.RECEPTION_STATISTICS_PER_SLICES_S = type { i32, i32, i64, i64, i64, i64, i32, i32, i32 }

@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_client_t*, %struct.RECEPTION_STATISTICS_PER_SLICES_S*)* @smsdvb_update_per_slices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_update_per_slices(%struct.smsdvb_client_t* %0, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %1) #0 {
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca %struct.RECEPTION_STATISTICS_PER_SLICES_S*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i64, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  store %struct.RECEPTION_STATISTICS_PER_SLICES_S* %1, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %8 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %9 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %8, i32 0, i32 3
  store %struct.dvb_frontend* %9, %struct.dvb_frontend** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %6, align 8
  %12 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %13 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %16 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sms_to_status(i32 %14, i32 %17)
  %19 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %20 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %22 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sms_to_modulation(i32 %23)
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %28 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 1000
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i32 %30, i32* %36, align 4
  %37 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %38 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 4
  %47 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %48 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %2
  br label %172

52:                                               ; preds = %2
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %61 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  store i8* %62, i8** %68, align 8
  %69 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  store i8* %69, i8** %75, align 8
  %76 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %77 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %78
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 8
  %89 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %90 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %93 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %91, %94
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %95
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  store i8* %106, i8** %112, align 8
  %113 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  store i8* %113, i8** %119, align 8
  %120 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %121 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %122
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 8
  %133 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %134 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %135
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 8
  %146 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %147 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = mul i64 %148, 65535
  store i64 %149, i64* %7, align 8
  %150 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %151 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %154 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %152, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %52
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %161 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.RECEPTION_STATISTICS_PER_SLICES_S*, %struct.RECEPTION_STATISTICS_PER_SLICES_S** %4, align 8
  %164 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, %struct.RECEPTION_STATISTICS_PER_SLICES_S* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %162, %165
  %167 = call i32 @do_div(i64 %159, i64 %166)
  br label %168

168:                                              ; preds = %158, %52
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %171 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %51
  ret void
}

declare dso_local i32 @sms_to_status(i32, i32) #1

declare dso_local i32 @sms_to_modulation(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
