; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_has_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_has_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applesmc_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @applesmc_has_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_has_key(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.applesmc_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.applesmc_entry* @applesmc_get_entry_by_key(i8* %7)
  store %struct.applesmc_entry* %8, %struct.applesmc_entry** %6, align 8
  %9 = load %struct.applesmc_entry*, %struct.applesmc_entry** %6, align 8
  %10 = call i64 @IS_ERR(%struct.applesmc_entry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.applesmc_entry*, %struct.applesmc_entry** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.applesmc_entry* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.applesmc_entry*, %struct.applesmc_entry** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.applesmc_entry* %19)
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %12, %2
  %22 = load %struct.applesmc_entry*, %struct.applesmc_entry** %6, align 8
  %23 = call i64 @IS_ERR(%struct.applesmc_entry* %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.applesmc_entry* @applesmc_get_entry_by_key(i8*) #1

declare dso_local i64 @IS_ERR(%struct.applesmc_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.applesmc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
