; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_denormalization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_denormalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@DENORM_CONTROL = common dso_local global i32 0, align 4
@DENORM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32)* @set_denormalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_denormalization(%struct.dce_transform* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %12 [
    i32 129, label %7
    i32 128, label %8
    i32 133, label %9
    i32 132, label %10
    i32 131, label %11
    i32 130, label %11
  ]

7:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %13

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

9:                                                ; preds = %2
  store i32 3, i32* %5, align 4
  br label %13

10:                                               ; preds = %2
  store i32 5, i32* %5, align 4
  br label %13

11:                                               ; preds = %2, %2
  br label %12

12:                                               ; preds = %2, %11
  br label %13

13:                                               ; preds = %12, %10, %9, %8, %7
  %14 = load i32, i32* @DENORM_CONTROL, align 4
  %15 = load i32, i32* @DENORM_MODE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_SET(i32 %14, i32 0, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
