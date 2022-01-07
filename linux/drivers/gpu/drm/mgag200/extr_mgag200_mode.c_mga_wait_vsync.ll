; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_wait_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_wait_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MGAREG_Status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mga_device*)* @mga_wait_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_wait_vsync(%struct.mga_device* %0) #0 {
  %2 = alloca %struct.mga_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.mga_device* %0, %struct.mga_device** %2, align 8
  %5 = load i32, i32* @jiffies, align 4
  %6 = load i32, i32* @HZ, align 4
  %7 = sdiv i32 %6, 10
  %8 = add nsw i32 %5, %7
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* @MGAREG_Status, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @time_before(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i1 [ false, %13 ], [ %21, %17 ]
  br i1 %23, label %10, label %24

24:                                               ; preds = %22
  %25 = load i32, i32* @jiffies, align 4
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 10
  %28 = add nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %42, %24
  %31 = load i32, i32* @MGAREG_Status, align 4
  %32 = call i32 @RREG32(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @jiffies, align 4
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @time_before(i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %30, label %44

44:                                               ; preds = %42
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
