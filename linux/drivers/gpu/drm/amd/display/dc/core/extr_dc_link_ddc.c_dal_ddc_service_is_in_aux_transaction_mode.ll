; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_is_in_aux_transaction_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_is_in_aux_transaction_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_ddc_service_is_in_aux_transaction_mode(%struct.ddc_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddc_service*, align 8
  store %struct.ddc_service* %0, %struct.ddc_service** %3, align 8
  %4 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %5 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 130, label %7
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %10

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
