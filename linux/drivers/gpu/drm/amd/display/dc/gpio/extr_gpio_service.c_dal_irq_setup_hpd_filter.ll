; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_irq_setup_hpd_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_irq_setup_hpd_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32 }
%struct.gpio_hpd_config = type { i32 }
%struct.gpio_config_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.gpio_hpd_config }

@GPIO_RESULT_INVALID_DATA = common dso_local global i32 0, align 4
@GPIO_CONFIG_TYPE_HPD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_irq_setup_hpd_filter(%struct.gpio* %0, %struct.gpio_hpd_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio*, align 8
  %5 = alloca %struct.gpio_hpd_config*, align 8
  %6 = alloca %struct.gpio_config_data, align 4
  store %struct.gpio* %0, %struct.gpio** %4, align 8
  store %struct.gpio_hpd_config* %1, %struct.gpio_hpd_config** %5, align 8
  %7 = load %struct.gpio_hpd_config*, %struct.gpio_hpd_config** %5, align 8
  %8 = icmp ne %struct.gpio_hpd_config* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @GPIO_RESULT_INVALID_DATA, align 4
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load i32, i32* @GPIO_CONFIG_TYPE_HPD, align 4
  %13 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %6, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gpio_hpd_config*, %struct.gpio_hpd_config** %5, align 8
  %17 = bitcast %struct.gpio_hpd_config* %15 to i8*
  %18 = bitcast %struct.gpio_hpd_config* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.gpio*, %struct.gpio** %4, align 8
  %20 = call i32 @dal_gpio_set_config(%struct.gpio* %19, %struct.gpio_config_data* %6)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dal_gpio_set_config(%struct.gpio*, %struct.gpio_config_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
