; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-id.c_dmi_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-id.c_dmi_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @dmi_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmi_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %8 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %15 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %18 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %24 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @get_modalias(i32* %22, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %33 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub i64 8, %35
  %37 = icmp uge i64 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %13
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %13
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %44 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %38, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*) #1

declare dso_local i32 @get_modalias(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
