; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_cursor = type { i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_cursor*)* @sti_cursor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_cursor_init(%struct.sti_cursor* %0) #0 {
  %2 = alloca %struct.sti_cursor*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sti_cursor* %0, %struct.sti_cursor** %2, align 8
  %8 = load %struct.sti_cursor*, %struct.sti_cursor** %2, align 8
  %9 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %8, i32 0, i32 0
  %10 = load i16*, i16** %9, align 8
  store i16* %10, i16** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = mul i32 %27, 5
  %29 = shl i32 %28, 12
  %30 = load i32, i32* %5, align 4
  %31 = mul i32 %30, 5
  %32 = shl i32 %31, 8
  %33 = or i32 %29, %32
  %34 = load i32, i32* %6, align 4
  %35 = mul i32 %34, 5
  %36 = shl i32 %35, 4
  %37 = or i32 %33, %36
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %38, 5
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i16
  %42 = load i16*, i16** %3, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %3, align 8
  store i16 %41, i16* %42, align 2
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %23

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %19

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %15
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %11

59:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
