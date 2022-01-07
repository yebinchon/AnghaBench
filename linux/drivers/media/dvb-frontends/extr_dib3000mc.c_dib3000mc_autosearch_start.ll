; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state*, %struct.dtv_frontend_properties }
%struct.dib3000mc_state = type { i32 }
%struct.dtv_frontend_properties = type { i64, i8*, i8*, i32, i32, i32 }

@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib3000mc_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_autosearch_start(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dib3000mc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dtv_frontend_properties, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  store %struct.dib3000mc_state* %11, %struct.dib3000mc_state** %4, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %13 = bitcast %struct.dtv_frontend_properties* %6 to i8*
  %14 = bitcast %struct.dtv_frontend_properties* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false)
  %15 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @QAM_64, align 4
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** @FEC_2_3, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** @FEC_2_3, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %27 = call i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state* %26, %struct.dtv_frontend_properties* %6, i32 11)
  %28 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %29 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 256
  %33 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %30, i32 0, i32 %32)
  %34 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %35 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %34, i32 511)
  %36 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %36, i32 0, i32 %37)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state*, %struct.dtv_frontend_properties*, i32) #2

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #2

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
