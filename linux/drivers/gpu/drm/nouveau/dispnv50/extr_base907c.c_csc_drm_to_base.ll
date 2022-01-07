; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_csc_drm_to_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_csc_drm_to_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @csc_drm_to_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csc_drm_to_base(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @BIT_ULL(i32 63)
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 32
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = sub nsw i32 262144, %21
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 16
  %28 = or i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @GENMASK(i32 18, i32 0)
  %37 = and i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
