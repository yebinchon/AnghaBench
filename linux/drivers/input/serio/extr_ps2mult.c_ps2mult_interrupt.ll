; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.ps2mult = type { i32, i32, %struct.ps2mult_port*, %struct.ps2mult_port*, %struct.ps2mult_port* }
%struct.ps2mult_port = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Received %02x flags %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ESCAPE\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BSYNC\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SS\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SE\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"KB\0A\00", align 1
@PS2MULT_KBD_PORT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"MS\0A\00", align 1
@PS2MULT_MOUSE_PORT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @ps2mult_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2mult_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps2mult*, align 8
  %8 = alloca %struct.ps2mult_port*, align 8
  %9 = alloca i64, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = call %struct.ps2mult* @serio_get_drvdata(%struct.serio* %10)
  store %struct.ps2mult* %11, %struct.ps2mult** %7, align 8
  %12 = load %struct.serio*, %struct.serio** %4, align 8
  %13 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 0
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %19 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %23 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %28 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %30 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %29, i32 0, i32 2
  %31 = load %struct.ps2mult_port*, %struct.ps2mult_port** %30, align 8
  store %struct.ps2mult_port* %31, %struct.ps2mult_port** %8, align 8
  %32 = load %struct.ps2mult_port*, %struct.ps2mult_port** %8, align 8
  %33 = getelementptr inbounds %struct.ps2mult_port, %struct.ps2mult_port* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.ps2mult_port*, %struct.ps2mult_port** %8, align 8
  %38 = getelementptr inbounds %struct.ps2mult_port, %struct.ps2mult_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8, i8* %5, align 1
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @serio_interrupt(i32 %39, i8 zeroext %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %26
  br label %109

44:                                               ; preds = %3
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %92 [
    i32 132, label %47
    i32 133, label %53
    i32 128, label %62
    i32 129, label %66
    i32 131, label %70
    i32 130, label %81
  ]

47:                                               ; preds = %44
  %48 = load %struct.serio*, %struct.serio** %4, align 8
  %49 = getelementptr inbounds %struct.serio, %struct.serio* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %52 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %108

53:                                               ; preds = %44
  %54 = load %struct.serio*, %struct.serio** %4, align 8
  %55 = getelementptr inbounds %struct.serio, %struct.serio* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %58 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %57, i32 0, i32 4
  %59 = load %struct.ps2mult_port*, %struct.ps2mult_port** %58, align 8
  %60 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %61 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %60, i32 0, i32 2
  store %struct.ps2mult_port* %59, %struct.ps2mult_port** %61, align 8
  br label %108

62:                                               ; preds = %44
  %63 = load %struct.serio*, %struct.serio** %4, align 8
  %64 = getelementptr inbounds %struct.serio, %struct.serio* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %108

66:                                               ; preds = %44
  %67 = load %struct.serio*, %struct.serio** %4, align 8
  %68 = getelementptr inbounds %struct.serio, %struct.serio* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %108

70:                                               ; preds = %44
  %71 = load %struct.serio*, %struct.serio** %4, align 8
  %72 = getelementptr inbounds %struct.serio, %struct.serio* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %75 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %74, i32 0, i32 3
  %76 = load %struct.ps2mult_port*, %struct.ps2mult_port** %75, align 8
  %77 = load i64, i64* @PS2MULT_KBD_PORT, align 8
  %78 = getelementptr inbounds %struct.ps2mult_port, %struct.ps2mult_port* %76, i64 %77
  %79 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %80 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %79, i32 0, i32 2
  store %struct.ps2mult_port* %78, %struct.ps2mult_port** %80, align 8
  br label %108

81:                                               ; preds = %44
  %82 = load %struct.serio*, %struct.serio** %4, align 8
  %83 = getelementptr inbounds %struct.serio, %struct.serio* %82, i32 0, i32 0
  %84 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %85 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %86 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %85, i32 0, i32 3
  %87 = load %struct.ps2mult_port*, %struct.ps2mult_port** %86, align 8
  %88 = load i64, i64* @PS2MULT_MOUSE_PORT, align 8
  %89 = getelementptr inbounds %struct.ps2mult_port, %struct.ps2mult_port* %87, i64 %88
  %90 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %91 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %90, i32 0, i32 2
  store %struct.ps2mult_port* %89, %struct.ps2mult_port** %91, align 8
  br label %108

92:                                               ; preds = %44
  %93 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %94 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %93, i32 0, i32 2
  %95 = load %struct.ps2mult_port*, %struct.ps2mult_port** %94, align 8
  store %struct.ps2mult_port* %95, %struct.ps2mult_port** %8, align 8
  %96 = load %struct.ps2mult_port*, %struct.ps2mult_port** %8, align 8
  %97 = getelementptr inbounds %struct.ps2mult_port, %struct.ps2mult_port* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load %struct.ps2mult_port*, %struct.ps2mult_port** %8, align 8
  %102 = getelementptr inbounds %struct.ps2mult_port, %struct.ps2mult_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8, i8* %5, align 1
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @serio_interrupt(i32 %103, i8 zeroext %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %92
  br label %108

108:                                              ; preds = %107, %81, %70, %66, %62, %53, %47
  br label %109

109:                                              ; preds = %108, %43
  %110 = load %struct.ps2mult*, %struct.ps2mult** %7, align 8
  %111 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %110, i32 0, i32 1
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %114
}

declare dso_local %struct.ps2mult* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serio_interrupt(i32, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
