; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_pclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_pclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dispc_device*, i32)* @dispc_mgr_pclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dispc_mgr_pclk_rate(%struct.dispc_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @dss_mgr_is_lcd(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DISPC_DIVISORo(i32 %14)
  %16 = call i32 @dispc_read_reg(%struct.dispc_device* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @FLD_GET(i32 %17, i32 7, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @dispc_mgr_lclk_rate(%struct.dispc_device* %19, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %22, %24
  store i64 %25, i64* %3, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %28 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %26, %12
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @dss_mgr_is_lcd(i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_DIVISORo(i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i64 @dispc_mgr_lclk_rate(%struct.dispc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
