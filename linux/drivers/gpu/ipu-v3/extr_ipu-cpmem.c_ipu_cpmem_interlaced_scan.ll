; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_interlaced_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_interlaced_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32 }

@IPU_FIELD_SO = common dso_local global i32 0, align 4
@IPU_FIELD_ILO = common dso_local global i32 0, align 4
@IPU_FIELD_SLY = common dso_local global i32 0, align 4
@IPU_FIELD_SLUV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_cpmem_interlaced_scan(%struct.ipuv3_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 8
  %17 = sub nsw i32 1048576, %16
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %40 [
    i32 130, label %26
    i32 128, label %26
    i32 132, label %30
    i32 129, label %33
    i32 131, label %36
  ]

26:                                               ; preds = %21, %21
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %41

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %41

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 2
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %41

40:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %36, %33, %30, %26
  %42 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %43 = load i32, i32* @IPU_FIELD_SO, align 4
  %44 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %42, i32 %43, i32 1)
  %45 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %46 = load i32, i32* @IPU_FIELD_ILO, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %45, i32 %46, i32 %47)
  %49 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %50 = load i32, i32* @IPU_FIELD_SLY, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %57 = load i32, i32* @IPU_FIELD_SLUV, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %41
  ret void
}

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
