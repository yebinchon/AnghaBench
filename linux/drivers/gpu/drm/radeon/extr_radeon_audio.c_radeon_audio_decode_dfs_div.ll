; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_decode_dfs_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_decode_dfs_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_audio_decode_dfs_div(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 8
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sub i32 %10, 8
  %12 = mul i32 %11, 25
  %13 = add i32 %12, 200
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %6, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp uge i32 %15, 64
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 96
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sub i32 %21, 64
  %23 = mul i32 %22, 50
  %24 = add i32 %23, 1600
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %3, align 4
  %27 = icmp uge i32 %26, 96
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp ult i32 %29, 128
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub i32 %32, 96
  %34 = mul i32 %33, 100
  %35 = add i32 %34, 3200
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28, %25
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %20, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
