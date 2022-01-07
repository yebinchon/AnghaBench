; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_command_is_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_command_is_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dbi*, i64)* @mipi_dbi_command_is_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_dbi_command_is_read(%struct.mipi_dbi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dbi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dbi* %0, %struct.mipi_dbi** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.mipi_dbi*, %struct.mipi_dbi** %4, align 8
  %8 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %14, 255
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.mipi_dbi*, %struct.mipi_dbi** %4, align 8
  %18 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %42

26:                                               ; preds = %16
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.mipi_dbi*, %struct.mipi_dbi** %4, align 8
  %29 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %42

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36, %25, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
