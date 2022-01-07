; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_init_panel_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_init_panel_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"disp-enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot get disp-enable-gpios %ld\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disp-te\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot get disp-te-gpios %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_host*, %struct.device*)* @dsi_host_init_panel_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_host_init_panel_gpios(%struct.msm_dsi_host* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.device*, %struct.device** %5, align 8
  %7 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %8 = call i8* @devm_gpiod_get_optional(%struct.device* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %10 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %18 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  %21 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %23 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32, i32* @GPIOD_IN, align 4
  %29 = call i8* @devm_gpiod_get_optional(%struct.device* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %31 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %33 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %39 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  %42 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %44 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %37, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
