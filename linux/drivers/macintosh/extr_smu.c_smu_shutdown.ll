; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_simple_cmd = type { i32 }

@smu = common dso_local global i32* null, align 8
@SMU_CMD_POWER_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smu_shutdown() #0 {
  %1 = alloca %struct.smu_simple_cmd, align 4
  %2 = load i32*, i32** @smu, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @SMU_CMD_POWER_COMMAND, align 4
  %7 = call i64 @smu_queue_simple(%struct.smu_simple_cmd* %1, i32 %6, i32 9, i32* null, i32* null, i8 signext 83, i8 signext 72, i8 zeroext 85, i8 signext 84, i8 signext 68, i8 signext 79, i8 signext 87, i8 signext 78, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  %11 = call i32 @smu_spinwait_simple(%struct.smu_simple_cmd* %1)
  br label %12

12:                                               ; preds = %12, %10
  br label %12

13:                                               ; preds = %9, %4
  ret void
}

declare dso_local i64 @smu_queue_simple(%struct.smu_simple_cmd*, i32, i32, i32*, i32*, i8 signext, i8 signext, i8 zeroext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i32) #1

declare dso_local i32 @smu_spinwait_simple(%struct.smu_simple_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
