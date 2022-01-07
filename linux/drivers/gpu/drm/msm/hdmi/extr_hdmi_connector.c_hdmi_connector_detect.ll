; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_hdmi_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_hdmi_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.hdmi_connector = type { %struct.hdmi* }
%struct.hdmi = type { %struct.hdmi_platform_config* }
%struct.hdmi_platform_config = type { %struct.hdmi_gpio_data* }
%struct.hdmi_gpio_data = type { i32 }

@HPD_GPIO_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"HDMI_HPD_INT_STATUS tells us: %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hpd gpio tells us: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @hdmi_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_connector*, align 8
  %7 = alloca %struct.hdmi*, align 8
  %8 = alloca %struct.hdmi_platform_config*, align 8
  %9 = alloca %struct.hdmi_gpio_data, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector* %13)
  store %struct.hdmi_connector* %14, %struct.hdmi_connector** %6, align 8
  %15 = load %struct.hdmi_connector*, %struct.hdmi_connector** %6, align 8
  %16 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %15, i32 0, i32 0
  %17 = load %struct.hdmi*, %struct.hdmi** %16, align 8
  store %struct.hdmi* %17, %struct.hdmi** %7, align 8
  %18 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  %19 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %18, i32 0, i32 0
  %20 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %19, align 8
  store %struct.hdmi_platform_config* %20, %struct.hdmi_platform_config** %8, align 8
  %21 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %8, align 8
  %22 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %21, i32 0, i32 0
  %23 = load %struct.hdmi_gpio_data*, %struct.hdmi_gpio_data** %22, align 8
  %24 = load i64, i64* @HPD_GPIO_INDEX, align 8
  %25 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %23, i64 %24
  %26 = bitcast %struct.hdmi_gpio_data* %9 to i8*
  %27 = bitcast %struct.hdmi_gpio_data* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  store i32 20, i32* %12, align 4
  %28 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  %33 = call i32 @detect_reg(%struct.hdmi* %32)
  store i32 %33, i32* %3, align 4
  br label %61

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %46, %34
  %36 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  %37 = call i32 @detect_gpio(%struct.hdmi* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  %39 = call i32 @detect_reg(%struct.hdmi* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %50

44:                                               ; preds = %35
  %45 = call i32 @mdelay(i32 10)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %35, label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %31
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @detect_reg(%struct.hdmi*) #1

declare dso_local i32 @detect_gpio(%struct.hdmi*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
