; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_amimouse.c_amimouse_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_amimouse.c_amimouse_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@amiga_custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 2
@amimouse_lastx = common dso_local global i32 0, align 4
@amimouse_lasty = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@ciaa = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @amimouse_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amimouse_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.input_dev*
  store %struct.input_dev* %13, %struct.input_dev** %5, align 8
  %14 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 0), align 2
  store i16 %14, i16* %6, align 2
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  store i32 %17, i32* %8, align 4
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i32
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @amimouse_lastx, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @amimouse_lasty, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, -127
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 256, %30
  %32 = load i32, i32* @amimouse_lastx, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 127
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 256
  %40 = load i32, i32* @amimouse_lastx, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, -127
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 256, %46
  %48 = load i32, i32* @amimouse_lasty, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 127
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 256
  %56 = load i32, i32* @amimouse_lasty, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* @amimouse_lastx, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* @amimouse_lasty, align 4
  %61 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 1), align 2
  store i16 %61, i16* %7, align 2
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = load i32, i32* @REL_X, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @input_report_rel(%struct.input_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = load i32, i32* @REL_Y, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @input_report_rel(%struct.input_dev* %66, i32 %67, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %71 = load i32, i32* @BTN_LEFT, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ciaa, i32 0, i32 0), align 4
  %73 = and i32 %72, 64
  %74 = trunc i32 %73 to i16
  %75 = call i32 @input_report_key(%struct.input_dev* %70, i32 %71, i16 zeroext %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @BTN_MIDDLE, align 4
  %78 = load i16, i16* %7, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 256
  %81 = trunc i32 %80 to i16
  %82 = call i32 @input_report_key(%struct.input_dev* %76, i32 %77, i16 zeroext %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = load i32, i32* @BTN_RIGHT, align 4
  %85 = load i16, i16* %7, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 1024
  %88 = trunc i32 %87 to i16
  %89 = call i32 @input_report_key(%struct.input_dev* %83, i32 %84, i16 zeroext %88)
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = call i32 @input_sync(%struct.input_dev* %90)
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %92
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i16 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
