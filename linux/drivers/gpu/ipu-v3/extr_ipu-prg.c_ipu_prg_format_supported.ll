; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_format_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_format_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { i32 }
%struct.drm_format_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_prg_format_supported(%struct.ipu_soc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_format_info*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.drm_format_info* @drm_format_info(i32 %9)
  store %struct.drm_format_info* %10, %struct.drm_format_info** %8, align 8
  %11 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %12 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %19 [
    i32 130, label %18
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %16, %16, %16
  store i32 1, i32* %4, align 4
  br label %20

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18, %15
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
