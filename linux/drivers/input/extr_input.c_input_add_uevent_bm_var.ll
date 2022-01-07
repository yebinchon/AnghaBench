; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_add_uevent_bm_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_add_uevent_bm_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_uevent_env = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobj_uevent_env*, i8*, i64*, i32)* @input_add_uevent_bm_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobj_uevent_env*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kobj_uevent_env* %0, %struct.kobj_uevent_env** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %6, align 8
  %20 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %6, align 8
  %23 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %6, align 8
  %29 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = sub i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = load i64*, i64** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @input_print_bitmap(i32* %27, i32 %33, i64* %34, i32 %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %6, align 8
  %40 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = sub i64 8, %42
  %44 = icmp uge i64 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %18
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %18
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %6, align 8
  %51 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %45, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*) #1

declare dso_local i32 @input_print_bitmap(i32*, i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
