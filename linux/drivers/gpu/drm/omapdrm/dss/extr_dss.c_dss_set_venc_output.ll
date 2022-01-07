; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_set_venc_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_set_venc_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }

@OMAP_DSS_VENC_TYPE_COMPOSITE = common dso_local global i32 0, align 4
@OMAP_DSS_VENC_TYPE_SVIDEO = common dso_local global i32 0, align 4
@DSS_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_set_venc_output(%struct.dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @OMAP_DSS_VENC_TYPE_COMPOSITE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OMAP_DSS_VENC_TYPE_SVIDEO, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %5, align 4
  br label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %14
  br label %18

18:                                               ; preds = %17, %9
  %19 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %20 = load i32, i32* @DSS_CONTROL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @REG_FLD_MOD(%struct.dss_device* %19, i32 %20, i32 %21, i32 6, i32 6)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dss_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
