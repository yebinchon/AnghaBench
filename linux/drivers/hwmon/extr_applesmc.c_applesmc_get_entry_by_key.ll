; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_get_entry_by_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_get_entry_by_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applesmc_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.applesmc_entry* (i8*)* @applesmc_get_entry_by_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.applesmc_entry* @applesmc_get_entry_by_key(i8* %0) #0 {
  %2 = alloca %struct.applesmc_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @applesmc_get_lower_bound(i32* %4, i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.applesmc_entry* @ERR_PTR(i32 %12)
  store %struct.applesmc_entry* %13, %struct.applesmc_entry** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @applesmc_get_upper_bound(i32* %5, i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.applesmc_entry* @ERR_PTR(i32 %20)
  store %struct.applesmc_entry* %21, %struct.applesmc_entry** %2, align 8
  br label %34

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.applesmc_entry* @ERR_PTR(i32 %29)
  store %struct.applesmc_entry* %30, %struct.applesmc_entry** %2, align 8
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.applesmc_entry* @applesmc_get_entry_by_index(i32 %32)
  store %struct.applesmc_entry* %33, %struct.applesmc_entry** %2, align 8
  br label %34

34:                                               ; preds = %31, %27, %19, %11
  %35 = load %struct.applesmc_entry*, %struct.applesmc_entry** %2, align 8
  ret %struct.applesmc_entry* %35
}

declare dso_local i32 @applesmc_get_lower_bound(i32*, i8*) #1

declare dso_local %struct.applesmc_entry* @ERR_PTR(i32) #1

declare dso_local i32 @applesmc_get_upper_bound(i32*, i8*) #1

declare dso_local %struct.applesmc_entry* @applesmc_get_entry_by_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
