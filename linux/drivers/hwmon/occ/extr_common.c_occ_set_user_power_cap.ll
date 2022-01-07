; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_set_user_power_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_set_user_power_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32 (%struct.occ*, i32*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*, i32)* @occ_set_user_power_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_set_user_power_cap(%struct.occ* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.occ*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 36, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cpu_to_be16(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %12, align 16
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 34, i32* %13, align 4
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  store i32 2, i32* %15, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %17 = call i32 @memcpy(i32* %16, i32* %9, i32 2)
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %19 = load i32, i32* %18, align 16
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 8
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  store i32 %29, i32* %30, align 4
  %31 = load %struct.occ*, %struct.occ** %4, align 8
  %32 = getelementptr inbounds %struct.occ, %struct.occ* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock_interruptible(i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.occ*, %struct.occ** %4, align 8
  %40 = getelementptr inbounds %struct.occ, %struct.occ* %39, i32 0, i32 0
  %41 = load i32 (%struct.occ*, i32*)*, i32 (%struct.occ*, i32*)** %40, align 8
  %42 = load %struct.occ*, %struct.occ** %4, align 8
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %44 = call i32 %41(%struct.occ* %42, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.occ*, %struct.occ** %4, align 8
  %46 = getelementptr inbounds %struct.occ, %struct.occ* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
