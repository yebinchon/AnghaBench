; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_get_number_of_dram_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_get_number_of_dram_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@MC_SHARED_CHMAP = common dso_local global i32 0, align 4
@NOOFCHAN_MASK = common dso_local global i32 0, align 4
@NOOFCHAN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_get_number_of_dram_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_get_number_of_dram_channels(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NOOFCHAN_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @NOOFCHAN_SHIFT, align 4
  %11 = ashr i32 %9, %10
  switch i32 %11, label %13 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
    i32 5, label %18
    i32 6, label %19
    i32 7, label %20
    i32 8, label %21
  ]

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %1, %12
  store i32 1, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  store i32 3, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  store i32 10, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  store i32 12, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 16, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
