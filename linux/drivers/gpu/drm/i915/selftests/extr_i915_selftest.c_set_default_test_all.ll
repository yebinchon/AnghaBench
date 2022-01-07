; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_selftest.c_set_default_test_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_selftest.c_set_default_test_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selftest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.selftest*, i32)* @set_default_test_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_test_all(%struct.selftest* %0, i32 %1) #0 {
  %3 = alloca %struct.selftest*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.selftest* %0, %struct.selftest** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.selftest*, %struct.selftest** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.selftest, %struct.selftest* %11, i64 %13
  %15 = getelementptr inbounds %struct.selftest, %struct.selftest* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %37

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.selftest*, %struct.selftest** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.selftest, %struct.selftest* %29, i64 %31
  %33 = getelementptr inbounds %struct.selftest, %struct.selftest* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %24

37:                                               ; preds = %18, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
