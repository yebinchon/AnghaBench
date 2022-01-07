; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2880_priv* }
%struct.dtv_frontend_properties = type { i64 }
%struct.cxd2880_priv = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYS_DVBT = common dso_local global i64 0, align 8
@SYS_DVBT2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid system\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cxd2880_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_priv*, align 8
  %9 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.cxd2880_priv* null, %struct.cxd2880_priv** %8, align 8
  store %struct.dtv_frontend_properties* null, %struct.dtv_frontend_properties** %9, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = icmp ne %struct.dvb_frontend* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %2
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %12
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1
  %22 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %21, align 8
  store %struct.cxd2880_priv* %22, %struct.cxd2880_priv** %8, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 0
  store %struct.dtv_frontend_properties* %24, %struct.dtv_frontend_properties** %9, align 8
  %25 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %8, align 8
  %26 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mutex_lock(i32 %27)
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SYS_DVBT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %8, align 8
  %36 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %35, i32 0, i32 1
  %37 = call i32 @cxd2880_tnrdmd_dvbt_mon_snr(i32* %36, i32* %7)
  store i32 %37, i32* %6, align 4
  br label %57

38:                                               ; preds = %19
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SYS_DVBT2, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %8, align 8
  %46 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %45, i32 0, i32 1
  %47 = call i32 @cxd2880_tnrdmd_dvbt2_mon_snr(i32* %46, i32* %7)
  store i32 %47, i32* %6, align 4
  br label %56

48:                                               ; preds = %38
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %8, align 8
  %51 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mutex_unlock(i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %75

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %8, align 8
  %59 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mutex_unlock(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %48, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr(i32*, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
