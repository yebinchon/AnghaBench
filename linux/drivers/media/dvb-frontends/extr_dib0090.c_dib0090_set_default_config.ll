; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*, i64*)* @dib0090_set_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_set_default_config(%struct.dib0090_state* %0, i64* %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %8, i64** %4, align 8
  %9 = ptrtoint i64* %7 to i32
  %10 = call i64 @pgm_read_word(i32 %9)
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %4, align 8
  %17 = ptrtoint i64* %15 to i32
  %18 = call i64 @pgm_read_word(i32 %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %29, %14
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %4, align 8
  %24 = ptrtoint i64* %22 to i32
  %25 = call i64 @pgm_read_word(i32 %24)
  %26 = call i32 @dib0090_write_reg(%struct.dib0090_state* %20, i64 %21, i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %19, label %33

33:                                               ; preds = %29
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %4, align 8
  %36 = ptrtoint i64* %34 to i32
  %37 = call i64 @pgm_read_word(i32 %36)
  store i64 %37, i64* %5, align 8
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i64 @pgm_read_word(i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
