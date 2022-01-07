; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_select_remote_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_select_remote_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i64, i32 }

@max6696 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm90_data*, i32)* @lm90_select_remote_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_select_remote_channel(%struct.lm90_data* %0, i32 %1) #0 {
  %3 = alloca %struct.lm90_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lm90_data* %0, %struct.lm90_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %8 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @max6696, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %14 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, -9
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @lm90_update_confreg(%struct.lm90_data* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @lm90_update_confreg(%struct.lm90_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
