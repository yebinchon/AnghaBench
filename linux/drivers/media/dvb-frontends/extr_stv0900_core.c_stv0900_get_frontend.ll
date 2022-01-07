; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0900_state* }
%struct.stv0900_state = type { i32, %struct.stv0900_internal* }
%struct.stv0900_internal = type { %struct.stv0900_signal_info* }
%struct.stv0900_signal_info = type { i32, i64, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @stv0900_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.stv0900_state*, align 8
  %6 = alloca %struct.stv0900_internal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stv0900_signal_info, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stv0900_state*, %struct.stv0900_state** %10, align 8
  store %struct.stv0900_state* %11, %struct.stv0900_state** %5, align 8
  %12 = load %struct.stv0900_state*, %struct.stv0900_state** %5, align 8
  %13 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %12, i32 0, i32 1
  %14 = load %struct.stv0900_internal*, %struct.stv0900_internal** %13, align 8
  store %struct.stv0900_internal* %14, %struct.stv0900_internal** %6, align 8
  %15 = load %struct.stv0900_state*, %struct.stv0900_state** %5, align 8
  %16 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %19 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %18, i32 0, i32 0
  %20 = load %struct.stv0900_signal_info*, %struct.stv0900_signal_info** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stv0900_signal_info, %struct.stv0900_signal_info* %20, i64 %22
  %24 = bitcast %struct.stv0900_signal_info* %8 to i8*
  %25 = bitcast %struct.stv0900_signal_info* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = getelementptr inbounds %struct.stv0900_signal_info, %struct.stv0900_signal_info* %8, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.stv0900_signal_info, %struct.stv0900_signal_info* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.stv0900_signal_info, %struct.stv0900_signal_info* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.stv0900_signal_info, %struct.stv0900_signal_info* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
