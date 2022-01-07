; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_set_operational_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_set_operational_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CY_OPERATE_MODE = common dso_local global i32 0, align 4
@CY_REG_BASE = common dso_local global i32 0, align 4
@CY_ACT_DIST_DFLT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*)* @cyttsp_set_operational_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_set_operational_mode(%struct.cyttsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyttsp*, align 8
  %4 = alloca i32, align 4
  store %struct.cyttsp* %0, %struct.cyttsp** %3, align 8
  %5 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %6 = load i32, i32* @CY_OPERATE_MODE, align 4
  %7 = call i32 @ttsp_send_command(%struct.cyttsp* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %14 = load i32, i32* @CY_REG_BASE, align 4
  %15 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %16 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %15, i32 0, i32 0
  %17 = call i32 @ttsp_read_block_data(%struct.cyttsp* %13, i32 %14, i32 8, %struct.TYPE_2__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %12
  %23 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %24 = call i32 @cyttsp_handshake(%struct.cyttsp* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %22
  %30 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %31 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CY_ACT_DIST_DFLT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %27, %20, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ttsp_send_command(%struct.cyttsp*, i32) #1

declare dso_local i32 @ttsp_read_block_data(%struct.cyttsp*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @cyttsp_handshake(%struct.cyttsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
