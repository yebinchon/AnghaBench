; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state*, %struct.dtv_frontend_properties }
%struct.dib7000p_state = type { i64 }
%struct.dtv_frontend_properties = type { i32, i64, i32, i32, i32, i32, i32 }

@QAM_64 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@SOC7090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_autosearch_start(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dib7000p_state*, align 8
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
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %12, align 8
  store %struct.dib7000p_state* %13, %struct.dib7000p_state** %4, align 8
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %15 = call i32 @dib7000p_get_internal_freq(%struct.dib7000p_state* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %17 = bitcast %struct.dtv_frontend_properties* %5 to i8*
  %18 = bitcast %struct.dtv_frontend_properties* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 40, i1 false)
  %19 = load i32, i32* @QAM_64, align 4
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 6
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @FEC_2_3, align 4
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @FEC_3_4, align 4
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %31 = call i32 @dib7000p_set_channel(%struct.dib7000p_state* %30, %struct.dtv_frontend_properties* %5, i32 7)
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BANDWIDTH_TO_KHZ(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 5000
  br i1 %37, label %38, label %47

38:                                               ; preds = %1
  %39 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %40 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SOC7090, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 2, i32* %7, align 4
  br label %46

45:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %48

47:                                               ; preds = %1
  store i32 6, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 30, %49
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 65535
  %57 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %53, i32 6, i32 %56)
  %58 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 65535
  %61 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %58, i32 7, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 100, %62
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 16
  %69 = and i32 %68, 65535
  %70 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %66, i32 8, i32 %69)
  %71 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 65535
  %74 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %71, i32 9, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 500, %75
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 65535
  %83 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %79, i32 10, i32 %82)
  %84 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 65535
  %87 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %84, i32 11, i32 %86)
  %88 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %89 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %88, i32 0)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = or i32 512, %91
  %93 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %90, i32 0, i32 %92)
  %94 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %95 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %94, i32 1284)
  %96 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %96, i32 0, i32 %97)
  ret i32 0
}

declare dso_local i32 @dib7000p_get_internal_freq(%struct.dib7000p_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dib7000p_set_channel(%struct.dib7000p_state*, %struct.dtv_frontend_properties*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
