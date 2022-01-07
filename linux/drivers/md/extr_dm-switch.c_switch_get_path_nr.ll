; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_get_path_nr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_get_path_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_ctx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_ctx*, i32)* @switch_get_path_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_get_path_nr(%struct.switch_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.switch_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switch_ctx* %0, %struct.switch_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sector_div(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @switch_region_table_read(%struct.switch_ctx* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp uge i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @switch_region_table_read(%struct.switch_ctx*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
