; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }
%struct.ddc_service_init_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ddc_service* @dal_ddc_service_create(%struct.ddc_service_init_data* %0) #0 {
  %2 = alloca %struct.ddc_service*, align 8
  %3 = alloca %struct.ddc_service_init_data*, align 8
  %4 = alloca %struct.ddc_service*, align 8
  store %struct.ddc_service_init_data* %0, %struct.ddc_service_init_data** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ddc_service* @kzalloc(i32 4, i32 %5)
  store %struct.ddc_service* %6, %struct.ddc_service** %4, align 8
  %7 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %8 = icmp ne %struct.ddc_service* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ddc_service* null, %struct.ddc_service** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %12 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %3, align 8
  %13 = call i32 @construct(%struct.ddc_service* %11, %struct.ddc_service_init_data* %12)
  %14 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  store %struct.ddc_service* %14, %struct.ddc_service** %2, align 8
  br label %15

15:                                               ; preds = %10, %9
  %16 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  ret %struct.ddc_service* %16
}

declare dso_local %struct.ddc_service* @kzalloc(i32, i32) #1

declare dso_local i32 @construct(%struct.ddc_service*, %struct.ddc_service_init_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
