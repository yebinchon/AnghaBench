; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8xxx-vibrator.c_pm8xxx_vib_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8xxx-vibrator.c_pm8xxx_vib_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pm8xxx_vib = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @pm8xxx_vib_play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_vib_play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.pm8xxx_vib*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = call %struct.pm8xxx_vib* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.pm8xxx_vib* %9, %struct.pm8xxx_vib** %7, align 8
  %10 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %7, align 8
  %17 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %7, align 8
  %19 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %24 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 9
  %29 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %7, align 8
  %30 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %7, align 8
  %33 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %32, i32 0, i32 1
  %34 = call i32 @schedule_work(i32* %33)
  ret i32 0
}

declare dso_local %struct.pm8xxx_vib* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
