; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/meson/extr_meson_sm.c_meson_sm_get_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/meson/extr_meson_sm.c_meson_sm_get_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_sm_chip = type { %struct.meson_sm_cmd* }
%struct.meson_sm_cmd = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.meson_sm_chip*, i32)* @meson_sm_get_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @meson_sm_get_cmd(%struct.meson_sm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_sm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_sm_cmd*, align 8
  store %struct.meson_sm_chip* %0, %struct.meson_sm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.meson_sm_chip*, %struct.meson_sm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.meson_sm_chip, %struct.meson_sm_chip* %6, i32 0, i32 0
  %8 = load %struct.meson_sm_cmd*, %struct.meson_sm_cmd** %7, align 8
  store %struct.meson_sm_cmd* %8, %struct.meson_sm_cmd** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.meson_sm_cmd*, %struct.meson_sm_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.meson_sm_cmd, %struct.meson_sm_cmd* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.meson_sm_cmd*, %struct.meson_sm_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.meson_sm_cmd, %struct.meson_sm_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load %struct.meson_sm_cmd*, %struct.meson_sm_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.meson_sm_cmd, %struct.meson_sm_cmd* %23, i32 1
  store %struct.meson_sm_cmd* %24, %struct.meson_sm_cmd** %5, align 8
  br label %9

25:                                               ; preds = %20
  %26 = load %struct.meson_sm_cmd*, %struct.meson_sm_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.meson_sm_cmd, %struct.meson_sm_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
