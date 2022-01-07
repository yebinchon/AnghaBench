; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_check_l1post_plp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_check_l1post_plp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2880_priv* }
%struct.cxd2880_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DVBT2_TUNE_INFO_INVALID_PLP_ID = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DVBT2_TUNE_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2880_check_l1post_plp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_check_l1post_plp(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64 0, i64* %4, align 8
  store %struct.cxd2880_priv* null, %struct.cxd2880_priv** %7, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = icmp ne %struct.dvb_frontend* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %16, align 8
  store %struct.cxd2880_priv* %17, %struct.cxd2880_priv** %7, align 8
  %18 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %19 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %18, i32 0, i32 1
  %20 = call i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(i32* %19, i64* %4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %53

31:                                               ; preds = %25
  %32 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %33 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %32, i32 0, i32 1
  %34 = call i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(i32* %33, i64* %5)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @CXD2880_TNRDMD_DVBT2_TUNE_INFO_INVALID_PLP_ID, align 4
  %44 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %45 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @CXD2880_TNRDMD_DVBT2_TUNE_INFO_OK, align 4
  %49 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %50 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %37, %28, %23, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(i32*, i64*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
