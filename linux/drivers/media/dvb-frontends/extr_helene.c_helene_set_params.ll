; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i64 }

@SYS_DVBT = common dso_local global i64 0, align 8
@SYS_DVBT2 = common dso_local global i64 0, align 8
@SYS_ISDBT = common dso_local global i64 0, align 8
@SYS_DVBC_ANNEX_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @helene_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helene_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  store %struct.dtv_frontend_properties* %6, %struct.dtv_frontend_properties** %4, align 8
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SYS_DVBT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYS_DVBT2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SYS_ISDBT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SYS_DVBC_ANNEX_A, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %18, %12, %1
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = call i32 @helene_set_params_t(%struct.dvb_frontend* %31)
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = call i32 @helene_set_params_s(%struct.dvb_frontend* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @helene_set_params_t(%struct.dvb_frontend*) #1

declare dso_local i32 @helene_set_params_s(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
