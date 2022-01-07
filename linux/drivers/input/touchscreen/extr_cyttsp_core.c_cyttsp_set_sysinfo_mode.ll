; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_set_sysinfo_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_set_sysinfo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CY_SYSINFO_MODE = common dso_local global i32 0, align 4
@CY_DELAY_DFLT = common dso_local global i32 0, align 4
@CY_REG_BASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*)* @cyttsp_set_sysinfo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_set_sysinfo_mode(%struct.cyttsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyttsp*, align 8
  %4 = alloca i32, align 4
  store %struct.cyttsp* %0, %struct.cyttsp** %3, align 8
  %5 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %6 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %5, i32 0, i32 0
  %7 = call i32 @memset(%struct.TYPE_3__* %6, i32 0, i32 8)
  %8 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %9 = load i32, i32* @CY_SYSINFO_MODE, align 4
  %10 = call i32 @ttsp_send_command(%struct.cyttsp* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load i32, i32* @CY_DELAY_DFLT, align 4
  %17 = call i32 @msleep(i32 %16)
  %18 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %19 = load i32, i32* @CY_REG_BASE, align 4
  %20 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %21 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %20, i32 0, i32 0
  %22 = call i32 @ttsp_read_block_data(%struct.cyttsp* %18, i32 %19, i32 8, %struct.TYPE_3__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %15
  %28 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %29 = call i32 @cyttsp_handshake(%struct.cyttsp* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %36 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %42 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %40, %34
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %32, %25, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ttsp_send_command(%struct.cyttsp*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ttsp_read_block_data(%struct.cyttsp*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cyttsp_handshake(%struct.cyttsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
