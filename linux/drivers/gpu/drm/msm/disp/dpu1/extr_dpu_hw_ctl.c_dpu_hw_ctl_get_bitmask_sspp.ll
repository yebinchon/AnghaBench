; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_get_bitmask_sspp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_get_bitmask_sspp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_ctl*, i32)* @dpu_hw_ctl_get_bitmask_sspp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_ctl_get_bitmask_sspp(%struct.dpu_hw_ctl* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 131, label %7
    i32 130, label %9
    i32 129, label %11
    i32 128, label %13
    i32 135, label %15
    i32 134, label %17
    i32 133, label %19
    i32 132, label %21
    i32 139, label %23
    i32 138, label %25
    i32 137, label %27
    i32 136, label %29
    i32 141, label %31
    i32 140, label %33
  ]

7:                                                ; preds = %2
  %8 = call i32 @BIT(i32 0)
  store i32 %8, i32* %5, align 4
  br label %36

9:                                                ; preds = %2
  %10 = call i32 @BIT(i32 1)
  store i32 %10, i32* %5, align 4
  br label %36

11:                                               ; preds = %2
  %12 = call i32 @BIT(i32 2)
  store i32 %12, i32* %5, align 4
  br label %36

13:                                               ; preds = %2
  %14 = call i32 @BIT(i32 18)
  store i32 %14, i32* %5, align 4
  br label %36

15:                                               ; preds = %2
  %16 = call i32 @BIT(i32 3)
  store i32 %16, i32* %5, align 4
  br label %36

17:                                               ; preds = %2
  %18 = call i32 @BIT(i32 4)
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %2
  %20 = call i32 @BIT(i32 5)
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %2
  %22 = call i32 @BIT(i32 19)
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %2
  %24 = call i32 @BIT(i32 11)
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %2
  %26 = call i32 @BIT(i32 12)
  store i32 %26, i32* %5, align 4
  br label %36

27:                                               ; preds = %2
  %28 = call i32 @BIT(i32 24)
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %2
  %30 = call i32 @BIT(i32 25)
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %2
  %32 = call i32 @BIT(i32 22)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %2
  %34 = call i32 @BIT(i32 23)
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
