; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_drvctl_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_drvctl_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.serio = type { i32 }
%struct.device_driver = type { i32 }

@serio_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@SERIO_RESCAN_PORT = common dso_local global i32 0, align 4
@serio_bus = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @drvctl_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drvctl_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.serio*, align 8
  %11 = alloca %struct.device_driver*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.serio* @to_serio_port(%struct.device* %13)
  store %struct.serio* %14, %struct.serio** %10, align 8
  %15 = call i32 @mutex_lock_interruptible(i32* @serio_mutex)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %81

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.serio*, %struct.serio** %10, align 8
  %27 = call i32 @serio_disconnect_port(%struct.serio* %26)
  br label %69

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.serio*, %struct.serio** %10, align 8
  %35 = call i32 @serio_reconnect_subtree(%struct.serio* %34)
  br label %68

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.serio*, %struct.serio** %10, align 8
  %43 = call i32 @serio_disconnect_port(%struct.serio* %42)
  %44 = load %struct.serio*, %struct.serio** %10, align 8
  %45 = call i32 @serio_find_driver(%struct.serio* %44)
  %46 = load %struct.serio*, %struct.serio** %10, align 8
  %47 = load i32, i32* @SERIO_RESCAN_PORT, align 4
  %48 = call i32 @serio_remove_duplicate_events(%struct.serio* %46, i32 %47)
  br label %67

49:                                               ; preds = %36
  %50 = load i8*, i8** %8, align 8
  %51 = call %struct.device_driver* @driver_find(i8* %50, i32* @serio_bus)
  store %struct.device_driver* %51, %struct.device_driver** %11, align 8
  %52 = icmp ne %struct.device_driver* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.serio*, %struct.serio** %10, align 8
  %55 = call i32 @serio_disconnect_port(%struct.serio* %54)
  %56 = load %struct.serio*, %struct.serio** %10, align 8
  %57 = load %struct.device_driver*, %struct.device_driver** %11, align 8
  %58 = call i32 @to_serio_driver(%struct.device_driver* %57)
  %59 = call i32 @serio_bind_driver(%struct.serio* %56, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.serio*, %struct.serio** %10, align 8
  %61 = load i32, i32* @SERIO_RESCAN_PORT, align 4
  %62 = call i32 @serio_remove_duplicate_events(%struct.serio* %60, i32 %61)
  br label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %63, %53
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %33
  br label %69

69:                                               ; preds = %68, %25
  %70 = call i32 @mutex_unlock(i32* @serio_mutex)
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  br label %78

76:                                               ; preds = %69
  %77 = load i64, i64* %9, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i64 [ %75, %73 ], [ %77, %76 ]
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @serio_disconnect_port(%struct.serio*) #1

declare dso_local i32 @serio_reconnect_subtree(%struct.serio*) #1

declare dso_local i32 @serio_find_driver(%struct.serio*) #1

declare dso_local i32 @serio_remove_duplicate_events(%struct.serio*, i32) #1

declare dso_local %struct.device_driver* @driver_find(i8*, i32*) #1

declare dso_local i32 @serio_bind_driver(%struct.serio*, i32) #1

declare dso_local i32 @to_serio_driver(%struct.device_driver*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
