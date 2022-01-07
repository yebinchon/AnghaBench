; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_get_channel_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_get_channel_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i32)* @dispc_ovl_get_channel_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_get_channel_out(%struct.dispc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %11 [
    i32 131, label %9
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
  ]

9:                                                ; preds = %2
  store i32 8, i32* %6, align 4
  br label %13

10:                                               ; preds = %2, %2, %2
  store i32 16, i32* %6, align 4
  br label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %10, %9
  %14 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %15)
  %17 = call i32 @dispc_read_reg(%struct.dispc_device* %14, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @FLD_GET(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %13
  %26 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %27 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %28 = call i32 @dispc_has_feature(%struct.dispc_device* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FLD_GET(i32 %33, i32 31, i32 30)
  switch i32 %34, label %36 [
    i32 0, label %35
    i32 1, label %38
    i32 2, label %40
    i32 3, label %42
  ]

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %32, %35
  %37 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @OMAP_DSS_CHANNEL_WB, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %30, %23, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dispc_has_feature(%struct.dispc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
