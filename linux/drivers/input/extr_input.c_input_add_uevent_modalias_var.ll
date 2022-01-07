; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_add_uevent_modalias_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_add_uevent_modalias_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_uevent_env = type { i32, i32* }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobj_uevent_env*, %struct.input_dev*)* @input_add_uevent_modalias_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_add_uevent_modalias_var(%struct.kobj_uevent_env* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.kobj_uevent_env* %0, %struct.kobj_uevent_env** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  %7 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %8 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %15 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %18 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %24 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = call i32 @input_print_modalias(i32* %22, i32 %28, %struct.input_dev* %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %34 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub i64 8, %36
  %38 = icmp uge i64 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %13
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %48

42:                                               ; preds = %13
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %45 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %39, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*) #1

declare dso_local i32 @input_print_modalias(i32*, i32, %struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
