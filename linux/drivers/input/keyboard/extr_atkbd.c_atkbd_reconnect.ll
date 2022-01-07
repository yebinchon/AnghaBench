; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, %struct.serio_driver* }
%struct.serio_driver = type { i32 }
%struct.atkbd = type { i64, i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"reconnect request, but serio is disconnected, ignoring...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @atkbd_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_reconnect(%struct.serio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.atkbd*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  %7 = load %struct.serio*, %struct.serio** %3, align 8
  %8 = call %struct.atkbd* @serio_get_drvdata(%struct.serio* %7)
  store %struct.atkbd* %8, %struct.atkbd** %4, align 8
  %9 = load %struct.serio*, %struct.serio** %3, align 8
  %10 = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 1
  %11 = load %struct.serio_driver*, %struct.serio_driver** %10, align 8
  store %struct.serio_driver* %11, %struct.serio_driver** %5, align 8
  store i32 -1, i32* %6, align 4
  %12 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %13 = icmp ne %struct.atkbd* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %16 = icmp ne %struct.serio_driver* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.serio*, %struct.serio** %3, align 8
  %19 = getelementptr inbounds %struct.serio, %struct.serio* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

21:                                               ; preds = %14
  %22 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %23 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %26 = call i32 @atkbd_disable(%struct.atkbd* %25)
  %27 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %28 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %21
  %32 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %33 = call i64 @atkbd_probe(%struct.atkbd* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %76

36:                                               ; preds = %31
  %37 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %38 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %41 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %42 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %45 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @atkbd_select_set(%struct.atkbd* %40, i64 %43, i32 %46)
  %48 = icmp ne i64 %39, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %76

50:                                               ; preds = %36
  %51 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %52 = call i32 @atkbd_set_leds(%struct.atkbd* %51)
  %53 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %54 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %59 = call i32 @atkbd_set_repeat_rate(%struct.atkbd* %58)
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %21
  %62 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %63 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %65 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %67 = call i32 @atkbd_enable(%struct.atkbd* %66)
  %68 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %69 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %74 = call i32 @atkbd_activate(%struct.atkbd* %73)
  br label %75

75:                                               ; preds = %72, %61
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %49, %35
  %77 = load %struct.atkbd*, %struct.atkbd** %4, align 8
  %78 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.atkbd* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atkbd_disable(%struct.atkbd*) #1

declare dso_local i64 @atkbd_probe(%struct.atkbd*) #1

declare dso_local i64 @atkbd_select_set(%struct.atkbd*, i64, i32) #1

declare dso_local i32 @atkbd_set_leds(%struct.atkbd*) #1

declare dso_local i32 @atkbd_set_repeat_rate(%struct.atkbd*) #1

declare dso_local i32 @atkbd_enable(%struct.atkbd*) #1

declare dso_local i32 @atkbd_activate(%struct.atkbd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
