; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_write_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_write_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*, i32*)* @dib7000m_write_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000m_write_tab(%struct.dib7000m_state* %0, i32* %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 112
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 331
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %26, %23, %15
  br label %33

33:                                               ; preds = %42, %32
  %34 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %36, align 4
  %39 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %34, i32 %35, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %33, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* %47, align 4
  store i32 %49, i32* %5, align 4
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
