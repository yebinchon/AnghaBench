; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_crtc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipu_client_platformdata = type { i32, i32 }
%struct.ipu_soc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_crtc*, %struct.ipu_client_platformdata*)* @ipu_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_get_resources(%struct.ipu_crtc* %0, %struct.ipu_client_platformdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_crtc*, align 8
  %5 = alloca %struct.ipu_client_platformdata*, align 8
  %6 = alloca %struct.ipu_soc*, align 8
  %7 = alloca i32, align 4
  store %struct.ipu_crtc* %0, %struct.ipu_crtc** %4, align 8
  store %struct.ipu_client_platformdata* %1, %struct.ipu_client_platformdata** %5, align 8
  %8 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %9 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ipu_soc* @dev_get_drvdata(i32 %12)
  store %struct.ipu_soc* %13, %struct.ipu_soc** %6, align 8
  %14 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %15 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %5, align 8
  %16 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipu_dc_get(%struct.ipu_soc* %14, i32 %17)
  %19 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %22 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %28 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %33 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipu_di_get(%struct.ipu_soc* %32, i32 %35)
  %37 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %38 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %40 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %46 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %7, align 4
  br label %50

49:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %44, %26
  %51 = load %struct.ipu_crtc*, %struct.ipu_crtc** %4, align 8
  %52 = call i32 @ipu_put_resources(%struct.ipu_crtc* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ipu_soc* @dev_get_drvdata(i32) #1

declare dso_local i32 @ipu_dc_get(%struct.ipu_soc*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ipu_di_get(%struct.ipu_soc*, i32) #1

declare dso_local i32 @ipu_put_resources(%struct.ipu_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
