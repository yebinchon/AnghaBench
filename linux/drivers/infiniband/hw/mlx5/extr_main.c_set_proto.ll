; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64)* @set_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_proto(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %49

15:                                               ; preds = %4
  %16 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @ip_protocol, align 4
  %19 = call i64 @MLX5_GET(i32 %16, i8* %17, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @ip_protocol, align 4
  %23 = call i64 @MLX5_GET(i32 %20, i8* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @ip_protocol, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @MLX5_SET(i32 %27, i8* %28, i32 %29, i64 %30)
  %32 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @ip_protocol, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @MLX5_SET(i32 %32, i8* %33, i32 %34, i64 %35)
  br label %49

37:                                               ; preds = %15
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %26, %14
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i64 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
