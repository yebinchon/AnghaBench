; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state*, %struct.dtv_frontend_properties }
%struct.dib7000m_state = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32, i64, i32, i32, i32, i32, i32 }

@QAM_64 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000m_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_autosearch_start(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %12, align 8
  store %struct.dib7000m_state* %13, %struct.dib7000m_state** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %15 = bitcast %struct.dtv_frontend_properties* %5 to i8*
  %16 = bitcast %struct.dtv_frontend_properties* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 40, i1 false)
  %17 = load i32, i32* @QAM_64, align 4
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 6
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @FEC_2_3, align 4
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @FEC_3_4, align 4
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %29 = call i32 @dib7000m_set_channel(%struct.dib7000m_state* %28, %struct.dtv_frontend_properties* %5, i32 7)
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BANDWIDTH_TO_KHZ(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 5000
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %37

36:                                               ; preds = %1
  store i32 6, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %39 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 30, %40
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 65535
  %48 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %44, i32 6, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 65535
  %54 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %51, i32 7, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %58 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 100, %59
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 65535
  %67 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %63, i32 8, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 65535
  %73 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %70, i32 9, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %77 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 500, %78
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 65535
  %86 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %82, i32 10, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 65535
  %92 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %89, i32 11, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %96 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %95, i32 0)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 512
  %100 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %97, i32 0, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %104 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 16384
  br i1 %106, label %107, label %110

107:                                              ; preds = %37
  %108 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %109 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %108, i32 1793, i32 0)
  br label %113

110:                                              ; preds = %37
  %111 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %112 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %111, i32 537)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %114, i32 0, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dib7000m_set_channel(%struct.dib7000m_state*, %struct.dtv_frontend_properties*, i32) #2

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #2

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #2

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
