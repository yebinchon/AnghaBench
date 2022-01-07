; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_macio_release_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_macio_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32 }
%struct.macio_devres = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macio_release_resource(%struct.macio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.macio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.macio_devres*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %7 = call %struct.macio_devres* @find_macio_dr(%struct.macio_dev* %6)
  store %struct.macio_devres* %7, %struct.macio_devres** %5, align 8
  %8 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @macio_resource_len(%struct.macio_dev* %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @macio_resource_start(%struct.macio_dev* %14, i32 %15)
  %17 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @macio_resource_len(%struct.macio_dev* %17, i32 %18)
  %20 = call i32 @release_mem_region(i32 %16, i64 %19)
  %21 = load %struct.macio_devres*, %struct.macio_devres** %5, align 8
  %22 = icmp ne %struct.macio_devres* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.macio_devres*, %struct.macio_devres** %5, align 8
  %31 = getelementptr inbounds %struct.macio_devres, %struct.macio_devres* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %12, %26, %23, %13
  ret void
}

declare dso_local %struct.macio_devres* @find_macio_dr(%struct.macio_dev*) #1

declare dso_local i64 @macio_resource_len(%struct.macio_dev*, i32) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

declare dso_local i32 @macio_resource_start(%struct.macio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
