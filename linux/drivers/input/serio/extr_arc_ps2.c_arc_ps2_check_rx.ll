; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_arc_ps2.c_arc_ps2_check_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_arc_ps2.c_arc_ps2_check_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_ps2_data = type { i32, i32, i32 }
%struct.arc_ps2_port = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PS2_STAT_RX_VAL = common dso_local global i32 0, align 4
@PS2_STAT_RX_FRM_ERR = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@PS2_STAT_RX_BUF_OVER = common dso_local global i32 0, align 4
@SERIO_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PS/2 hardware stuck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arc_ps2_data*, %struct.arc_ps2_port*)* @arc_ps2_check_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_ps2_check_rx(%struct.arc_ps2_data* %0, %struct.arc_ps2_port* %1) #0 {
  %3 = alloca %struct.arc_ps2_data*, align 8
  %4 = alloca %struct.arc_ps2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.arc_ps2_data* %0, %struct.arc_ps2_data** %3, align 8
  store %struct.arc_ps2_port* %1, %struct.arc_ps2_port** %4, align 8
  store i32 1000, i32* %5, align 4
  br label %9

9:                                                ; preds = %63, %2
  %10 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %4, align 8
  %11 = getelementptr inbounds %struct.arc_ps2_port, %struct.arc_ps2_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ioread32(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PS2_STAT_RX_VAL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %73

19:                                               ; preds = %9
  %20 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %4, align 8
  %21 = getelementptr inbounds %struct.arc_ps2_port, %struct.arc_ps2_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ioread32(i32 %22)
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %8, align 1
  store i32 0, i32* %6, align 4
  %26 = load %struct.arc_ps2_data*, %struct.arc_ps2_data** %3, align 8
  %27 = getelementptr inbounds %struct.arc_ps2_data, %struct.arc_ps2_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PS2_STAT_RX_FRM_ERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = load %struct.arc_ps2_data*, %struct.arc_ps2_data** %3, align 8
  %36 = getelementptr inbounds %struct.arc_ps2_data, %struct.arc_ps2_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @SERIO_PARITY, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %19
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PS2_STAT_RX_BUF_OVER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.arc_ps2_data*, %struct.arc_ps2_data** %3, align 8
  %49 = getelementptr inbounds %struct.arc_ps2_data, %struct.arc_ps2_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @SERIO_FRAME, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %4, align 8
  %58 = getelementptr inbounds %struct.arc_ps2_port, %struct.arc_ps2_port* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i8, i8* %8, align 1
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @serio_interrupt(%struct.TYPE_2__* %59, i8 zeroext %60, i32 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %9, label %67

67:                                               ; preds = %63
  %68 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %4, align 8
  %69 = getelementptr inbounds %struct.arc_ps2_port, %struct.arc_ps2_port* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %18
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @serio_interrupt(%struct.TYPE_2__*, i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
