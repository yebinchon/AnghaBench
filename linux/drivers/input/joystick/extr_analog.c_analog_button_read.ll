; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_button_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_button_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog_port = type { i8, i8, i32 }

@ANALOG_SAITEK_TIME = common dso_local global i32 0, align 4
@analog_chf = common dso_local global i32* null, align 8
@ANALOG_SAITEK_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analog_port*, i8, i8)* @analog_button_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analog_button_read(%struct.analog_port* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.analog_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.analog_port* %0, %struct.analog_port** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %13 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ANALOG_SAITEK_TIME, align 4
  %16 = call i32 @gameport_time(i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %18 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i8 @gameport_read(i32 %19)
  store i8 %20, i8* %8, align 1
  %21 = load i8, i8* %7, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %3
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 15
  %29 = trunc i32 %28 to i8
  %30 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %31 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %30, i32 0, i32 0
  store i8 %29, i8* %31, align 4
  store i32 0, i32* %4, align 4
  br label %110

32:                                               ; preds = %3
  %33 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %34 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %33, i32 0, i32 0
  store i8 0, i8* %34, align 4
  br label %35

35:                                               ; preds = %97, %32
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, -1
  %39 = and i32 %38, 240
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41, %35
  %48 = phi i1 [ false, %41 ], [ false, %35 ], [ %46, %44 ]
  br i1 %48, label %49, label %100

49:                                               ; preds = %47
  %50 = load i32*, i32** @analog_chf, align 8
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = ashr i32 %53, 4
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %61 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 4
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %59
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 4
  %66 = load i8, i8* %6, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %110

69:                                               ; preds = %49
  %70 = load i32, i32* @ANALOG_SAITEK_DELAY, align 4
  %71 = call i32 @udelay(i32 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %74 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gameport_trigger(i32 %75)
  br label %77

77:                                               ; preds = %94, %69
  %78 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %79 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call zeroext i8 @gameport_read(i32 %80)
  store i8 %81, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %84 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %82, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %89, %77
  %93 = phi i1 [ false, %77 ], [ %91, %89 ]
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  br label %77

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %35

100:                                              ; preds = %47
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 16
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i1 [ true, %100 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %68, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @gameport_time(i32, i32) #1

declare dso_local zeroext i8 @gameport_read(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gameport_trigger(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
