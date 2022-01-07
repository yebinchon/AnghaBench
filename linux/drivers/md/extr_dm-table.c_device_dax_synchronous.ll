; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_device_dax_synchronous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_device_dax_synchronous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)* @device_dax_synchronous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_dax_synchronous(%struct.dm_target* %0, %struct.dm_dev* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.dm_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.dm_dev* %1, %struct.dm_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %12 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %17 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @dax_synchronous(i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %5
  %22 = phi i1 [ false, %5 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @dax_synchronous(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
