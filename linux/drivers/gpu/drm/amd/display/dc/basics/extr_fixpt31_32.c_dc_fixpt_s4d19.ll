; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_s4d19.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_s4d19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i64 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_fixpt_s4d19(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @dc_fixpt_abs(i64 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ux_dy(i64 %15, i32 4, i32 19)
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ux_dy(i64 %20, i32 4, i32 19)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @ux_dy(i64, i32, i32) #1

declare dso_local i64 @dc_fixpt_abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
