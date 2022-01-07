; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2880_priv* }
%struct.cxd2880_priv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.cxd2880_tnrdmd_create_param = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"invalid arg.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_TSOUT_IF_SPI = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_XTAL_SHARE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cxd2880 tnrdmd create failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cxd2880 integ init failed %d\0A\00", align 1
@CXD2880_TNRDMD_CFG_TSPIN_CURRENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cxd2880 set config failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OK.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2880_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_priv*, align 8
  %6 = alloca %struct.cxd2880_tnrdmd_create_param, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.cxd2880_priv* null, %struct.cxd2880_priv** %5, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = icmp ne %struct.dvb_frontend* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %15, align 8
  store %struct.cxd2880_priv* %16, %struct.cxd2880_priv** %5, align 8
  %17 = load i32, i32* @CXD2880_TNRDMD_TSOUT_IF_SPI, align 4
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %6, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @CXD2880_TNRDMD_XTAL_SHARE_NONE, align 4
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %6, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %6, i32 0, i32 1
  store i32 18, i32* %22, align 4
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %6, i32 0, i32 2
  store i32 8, i32* %23, align 4
  %24 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %6, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %26 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mutex_lock(i32 %27)
  %29 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %30 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %34 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %33, i32 0, i32 2
  %35 = icmp ne i32* %32, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %13
  %37 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %38 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %37, i32 0, i32 1
  %39 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %40 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %39, i32 0, i32 2
  %41 = call i32 @cxd2880_tnrdmd_create(%struct.TYPE_4__* %38, i32* %40, %struct.cxd2880_tnrdmd_create_param* %6)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %46 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mutex_unlock(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %89

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %13
  %54 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %55 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %54, i32 0, i32 1
  %56 = call i32 @cxd2880_integ_init(%struct.TYPE_4__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %61 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mutex_unlock(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %89

67:                                               ; preds = %53
  %68 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %69 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %68, i32 0, i32 1
  %70 = load i32, i32* @CXD2880_TNRDMD_CFG_TSPIN_CURRENT, align 4
  %71 = call i32 @cxd2880_tnrdmd_set_cfg(%struct.TYPE_4__* %69, i32 %70, i32 0)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %76 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mutex_unlock(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %89

82:                                               ; preds = %67
  %83 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %84 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mutex_unlock(i32 %85)
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %82, %74, %59, %44, %9
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_create(%struct.TYPE_4__*, i32*, %struct.cxd2880_tnrdmd_create_param*) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @cxd2880_integ_init(%struct.TYPE_4__*) #1

declare dso_local i32 @cxd2880_tnrdmd_set_cfg(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
