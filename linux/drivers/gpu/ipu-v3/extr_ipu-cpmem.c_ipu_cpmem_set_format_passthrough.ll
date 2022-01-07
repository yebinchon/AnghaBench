; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_format_passthrough.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_format_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPU_FIELD_BPP = common dso_local global i32 0, align 4
@IPU_FIELD_NPB = common dso_local global i32 0, align 4
@IPU_FIELD_PFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_cpmem_set_format_passthrough(%struct.ipuv3_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %13 [
    i32 32, label %9
    i32 24, label %10
    i32 16, label %11
    i32 8, label %12
  ]

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 15, i32* %7, align 4
  br label %16

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 19, i32* %7, align 4
  br label %16

11:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  store i32 31, i32* %7, align 4
  br label %16

12:                                               ; preds = %2
  store i32 5, i32* %6, align 4
  store i32 63, i32* %7, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %12, %11, %10, %9
  %17 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %18 = load i32, i32* @IPU_FIELD_BPP, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %17, i32 %18, i32 %19)
  %21 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %22 = load i32, i32* @IPU_FIELD_NPB, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %21, i32 %22, i32 %23)
  %25 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %26 = load i32, i32* @IPU_FIELD_PFS, align 4
  %27 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %25, i32 %26, i32 6)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
