; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.max8997_haptic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @max8997_haptic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_haptic_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.max8997_haptic*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.max8997_haptic* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.max8997_haptic* %5, %struct.max8997_haptic** %3, align 8
  %6 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %7 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %6, i32 0, i32 0
  %8 = call i32 @cancel_work_sync(i32* %7)
  %9 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %10 = call i32 @max8997_haptic_disable(%struct.max8997_haptic* %9)
  ret void
}

declare dso_local %struct.max8997_haptic* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @max8997_haptic_disable(%struct.max8997_haptic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
