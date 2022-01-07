; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_hpd_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_hpd_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@R_007D04_DC_HOT_PLUG_DETECT1_INT_STATUS = common dso_local global i32 0, align 4
@R_007D14_DC_HOT_PLUG_DETECT2_INT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs600_hpd_sense(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %24 [
    i32 129, label %8
    i32 128, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @R_007D04_DC_HOT_PLUG_DETECT1_INT_STATUS, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @G_007D04_DC_HOT_PLUG_DETECT1_SENSE(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %8
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @R_007D14_DC_HOT_PLUG_DETECT2_INT_STATUS, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @G_007D14_DC_HOT_PLUG_DETECT2_SENSE(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %23, %15
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @G_007D04_DC_HOT_PLUG_DETECT1_SENSE(i32) #1

declare dso_local i32 @G_007D14_DC_HOT_PLUG_DETECT2_SENSE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
