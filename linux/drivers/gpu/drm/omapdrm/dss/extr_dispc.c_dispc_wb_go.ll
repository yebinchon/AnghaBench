; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_wb_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_wb_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@DISPC_CONTROL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GO bit not down for WB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_wb_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_wb_go(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %6 = load i32, i32* @OMAP_DSS_WB, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %8)
  %10 = call i32 @REG_GET(%struct.dispc_device* %7, i32 %9, i32 0, i32 0)
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %18 = load i32, i32* @DISPC_CONTROL2, align 4
  %19 = call i32 @REG_GET(%struct.dispc_device* %17, i32 %18, i32 6, i32 6)
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @DSSERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %28 = load i32, i32* @DISPC_CONTROL2, align 4
  %29 = call i32 @REG_FLD_MOD(%struct.dispc_device* %27, i32 %28, i32 1, i32 6, i32 6)
  br label %30

30:                                               ; preds = %26, %24, %15
  ret void
}

declare dso_local i32 @REG_GET(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
