; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_get_upper_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_get_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.applesmc_entry = type { i32 }

@smcreg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @applesmc_get_upper_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_get_upper_bound(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.applesmc_entry*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0), align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.applesmc_entry* @applesmc_get_entry_by_index(i32 %22)
  store %struct.applesmc_entry* %23, %struct.applesmc_entry** %8, align 8
  %24 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %25 = call i64 @IS_ERR(%struct.applesmc_entry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0), align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.applesmc_entry* %30)
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %15
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %35 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i8* %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %39
  br label %11

45:                                               ; preds = %11
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %27
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.applesmc_entry* @applesmc_get_entry_by_index(i32) #1

declare dso_local i64 @IS_ERR(%struct.applesmc_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.applesmc_entry*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
