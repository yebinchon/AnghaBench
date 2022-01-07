; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.serio = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64*, i64*, i64* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SERIO_TYPE=%02x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SERIO_PROTO=%02x\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SERIO_ID=%02x\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SERIO_EXTRA=%02x\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SERIO_FIRMWARE_ID=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @serio_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.serio*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.serio* @to_serio_port(%struct.device* %13)
  store %struct.serio* %14, %struct.serio** %6, align 8
  %15 = load %struct.serio*, %struct.serio** %6, align 8
  %16 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = call i32 (i8*, i64*, ...) @SERIO_ADD_UEVENT_VAR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %18)
  %20 = load %struct.serio*, %struct.serio** %6, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 (i8*, i64*, ...) @SERIO_ADD_UEVENT_VAR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64* %23)
  %25 = load %struct.serio*, %struct.serio** %6, align 8
  %26 = getelementptr inbounds %struct.serio, %struct.serio* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 (i8*, i64*, ...) @SERIO_ADD_UEVENT_VAR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %28)
  %30 = load %struct.serio*, %struct.serio** %6, align 8
  %31 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 (i8*, i64*, ...) @SERIO_ADD_UEVENT_VAR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64* %33)
  %35 = load %struct.serio*, %struct.serio** %6, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.serio*, %struct.serio** %6, align 8
  %40 = getelementptr inbounds %struct.serio, %struct.serio* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.serio*, %struct.serio** %6, align 8
  %44 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.serio*, %struct.serio** %6, align 8
  %48 = getelementptr inbounds %struct.serio, %struct.serio* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 (i8*, i64*, ...) @SERIO_ADD_UEVENT_VAR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64* %38, i64* %42, i64* %46, i64* %50)
  %52 = load %struct.serio*, %struct.serio** %6, align 8
  %53 = getelementptr inbounds %struct.serio, %struct.serio* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %12
  %59 = load %struct.serio*, %struct.serio** %6, align 8
  %60 = getelementptr inbounds %struct.serio, %struct.serio* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = call i32 (i8*, i64*, ...) @SERIO_ADD_UEVENT_VAR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64* %61)
  br label %63

63:                                               ; preds = %58, %12
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %9
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local i32 @SERIO_ADD_UEVENT_VAR(i8*, i64*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
