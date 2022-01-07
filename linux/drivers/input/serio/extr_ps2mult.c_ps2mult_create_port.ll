; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_create_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_create_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2mult = type { %struct.TYPE_4__*, %struct.serio* }
%struct.TYPE_4__ = type { %struct.serio* }
%struct.serio = type { i8*, %struct.TYPE_4__*, %struct.serio*, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TQC PS/2 Multiplexer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/port%d\00", align 1
@SERIO_8042 = common dso_local global i32 0, align 4
@ps2mult_serio_write = common dso_local global i32 0, align 4
@ps2mult_serio_start = common dso_local global i32 0, align 4
@ps2mult_serio_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2mult*, i32)* @ps2mult_create_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2mult_create_port(%struct.ps2mult* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps2mult*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.serio*, align 8
  %7 = alloca %struct.serio*, align 8
  store %struct.ps2mult* %0, %struct.ps2mult** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ps2mult*, %struct.ps2mult** %4, align 8
  %9 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %8, i32 0, i32 1
  %10 = load %struct.serio*, %struct.serio** %9, align 8
  store %struct.serio* %10, %struct.serio** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.serio* @kzalloc(i32 48, i32 %11)
  store %struct.serio* %12, %struct.serio** %7, align 8
  %13 = load %struct.serio*, %struct.serio** %7, align 8
  %14 = icmp ne %struct.serio* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.serio*, %struct.serio** %7, align 8
  %20 = getelementptr inbounds %struct.serio, %struct.serio* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strlcpy(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load %struct.serio*, %struct.serio** %7, align 8
  %24 = getelementptr inbounds %struct.serio, %struct.serio* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.serio*, %struct.serio** %6, align 8
  %27 = getelementptr inbounds %struct.serio, %struct.serio* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @snprintf(i8* %25, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32, i32* @SERIO_8042, align 4
  %32 = load %struct.serio*, %struct.serio** %7, align 8
  %33 = getelementptr inbounds %struct.serio, %struct.serio* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ps2mult_serio_write, align 4
  %36 = load %struct.serio*, %struct.serio** %7, align 8
  %37 = getelementptr inbounds %struct.serio, %struct.serio* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ps2mult_serio_start, align 4
  %39 = load %struct.serio*, %struct.serio** %7, align 8
  %40 = getelementptr inbounds %struct.serio, %struct.serio* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ps2mult_serio_stop, align 4
  %42 = load %struct.serio*, %struct.serio** %7, align 8
  %43 = getelementptr inbounds %struct.serio, %struct.serio* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ps2mult*, %struct.ps2mult** %4, align 8
  %45 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %44, i32 0, i32 1
  %46 = load %struct.serio*, %struct.serio** %45, align 8
  %47 = load %struct.serio*, %struct.serio** %7, align 8
  %48 = getelementptr inbounds %struct.serio, %struct.serio* %47, i32 0, i32 2
  store %struct.serio* %46, %struct.serio** %48, align 8
  %49 = load %struct.ps2mult*, %struct.ps2mult** %4, align 8
  %50 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = load %struct.serio*, %struct.serio** %7, align 8
  %56 = getelementptr inbounds %struct.serio, %struct.serio* %55, i32 0, i32 1
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.serio*, %struct.serio** %7, align 8
  %58 = load %struct.ps2mult*, %struct.ps2mult** %4, align 8
  %59 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.serio* %57, %struct.serio** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %18, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
