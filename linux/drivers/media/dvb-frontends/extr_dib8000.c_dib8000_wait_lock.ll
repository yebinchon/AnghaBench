; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_wait_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32, i32, i32, i32)* @dib8000_wait_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_wait_lock(%struct.dib8000_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dib8000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 11, i32* %12, align 4
  store i32 11, i32* %12, align 4
  br label %13

13:                                               ; preds = %62, %5
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %65

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %21 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 32912
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %49

33:                                               ; preds = %16
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  br label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 15
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 65535
  %55 = call i32 @dib8000_write_word(%struct.dib8000_state* %50, i32 %51, i32 %54)
  %56 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 65535
  %61 = call i32 @dib8000_write_word(%struct.dib8000_state* %56, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %12, align 4
  br label %13

65:                                               ; preds = %13
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
