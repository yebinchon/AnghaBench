; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_apply_temp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_apply_temp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83795_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83795_data*, i32, i32, i32)* @w83795_apply_temp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83795_apply_temp_config(%struct.w83795_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.w83795_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.w83795_data* %0, %struct.w83795_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %35 [
    i32 2, label %10
    i32 1, label %17
    i32 3, label %28
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 1, %11
  %13 = load %struct.w83795_data*, %struct.w83795_data** %5, align 8
  %14 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %35

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.w83795_data*, %struct.w83795_data** %5, align 8
  %25 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %4, %21
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.w83795_data*, %struct.w83795_data** %5, align 8
  %32 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %4, %28, %20, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
