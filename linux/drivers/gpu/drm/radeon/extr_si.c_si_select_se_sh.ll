; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_select_se_sh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_select_se_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@INSTANCE_BROADCAST_WRITES = common dso_local global i32 0, align 4
@SH_BROADCAST_WRITES = common dso_local global i32 0, align 4
@SE_BROADCAST_WRITES = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @si_select_se_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_select_se_sh(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @INSTANCE_BROADCAST_WRITES, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @SH_BROADCAST_WRITES, align 4
  %16 = load i32, i32* @SE_BROADCAST_WRITES, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %50

20:                                               ; preds = %11, %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @SE_BROADCAST_WRITES, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SH_INDEX(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %49

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @SH_BROADCAST_WRITES, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @SE_INDEX(i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SH_INDEX(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @SE_INDEX(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %33
  br label %49

49:                                               ; preds = %48, %23
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WREG32(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @SH_INDEX(i32) #1

declare dso_local i32 @SE_INDEX(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
