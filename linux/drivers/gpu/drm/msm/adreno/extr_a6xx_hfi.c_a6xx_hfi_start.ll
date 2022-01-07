; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a6xx_hfi_start(%struct.a6xx_gmu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.a6xx_gmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @a6xx_hfi_send_gmu_init(%struct.a6xx_gmu* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %16 = call i32 @a6xx_hfi_get_fw_version(%struct.a6xx_gmu* %15, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %14
  %22 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %23 = call i32 @a6xx_hfi_send_perf_table(%struct.a6xx_gmu* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %30 = call i32 @a6xx_hfi_send_bw_table(%struct.a6xx_gmu* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %37 = call i32 @a6xx_hfi_send_test(%struct.a6xx_gmu* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %26, %19, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @a6xx_hfi_send_gmu_init(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @a6xx_hfi_get_fw_version(%struct.a6xx_gmu*, i32*) #1

declare dso_local i32 @a6xx_hfi_send_perf_table(%struct.a6xx_gmu*) #1

declare dso_local i32 @a6xx_hfi_send_bw_table(%struct.a6xx_gmu*) #1

declare dso_local i32 @a6xx_hfi_send_test(%struct.a6xx_gmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
