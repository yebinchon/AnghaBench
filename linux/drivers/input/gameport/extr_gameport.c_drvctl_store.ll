; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_drvctl_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_drvctl_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gameport = type { i32 }
%struct.device_driver = type { i32 }

@gameport_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@gameport_bus = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @drvctl_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drvctl_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gameport*, align 8
  %11 = alloca %struct.device_driver*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.gameport* @to_gameport_port(%struct.device* %13)
  store %struct.gameport* %14, %struct.gameport** %10, align 8
  %15 = call i32 @mutex_lock_interruptible(i32* @gameport_mutex)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.gameport*, %struct.gameport** %10, align 8
  %27 = call i32 @gameport_disconnect_port(%struct.gameport* %26)
  br label %63

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.gameport*, %struct.gameport** %10, align 8
  %35 = call i32 @gameport_reconnect_port(%struct.gameport* %34)
  br label %62

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.gameport*, %struct.gameport** %10, align 8
  %43 = call i32 @gameport_disconnect_port(%struct.gameport* %42)
  %44 = load %struct.gameport*, %struct.gameport** %10, align 8
  %45 = call i32 @gameport_find_driver(%struct.gameport* %44)
  br label %61

46:                                               ; preds = %36
  %47 = load i8*, i8** %8, align 8
  %48 = call %struct.device_driver* @driver_find(i8* %47, i32* @gameport_bus)
  store %struct.device_driver* %48, %struct.device_driver** %11, align 8
  %49 = icmp ne %struct.device_driver* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.gameport*, %struct.gameport** %10, align 8
  %52 = call i32 @gameport_disconnect_port(%struct.gameport* %51)
  %53 = load %struct.gameport*, %struct.gameport** %10, align 8
  %54 = load %struct.device_driver*, %struct.device_driver** %11, align 8
  %55 = call i32 @to_gameport_driver(%struct.device_driver* %54)
  %56 = call i32 @gameport_bind_driver(%struct.gameport* %53, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %25
  %64 = call i32 @mutex_unlock(i32* @gameport_mutex)
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  br label %72

70:                                               ; preds = %63
  %71 = load i64, i64* %9, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i64 [ %69, %67 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.gameport* @to_gameport_port(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @gameport_disconnect_port(%struct.gameport*) #1

declare dso_local i32 @gameport_reconnect_port(%struct.gameport*) #1

declare dso_local i32 @gameport_find_driver(%struct.gameport*) #1

declare dso_local %struct.device_driver* @driver_find(i8*, i32*) #1

declare dso_local i32 @gameport_bind_driver(%struct.gameport*, i32) #1

declare dso_local i32 @to_gameport_driver(%struct.device_driver*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
