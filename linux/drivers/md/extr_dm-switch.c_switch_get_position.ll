; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_get_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_ctx = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_ctx*, i64, i64*, i32*)* @switch_get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_get_position(%struct.switch_ctx* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.switch_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  store %struct.switch_ctx* %0, %struct.switch_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = lshr i64 %14, %17
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = and i64 %20, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %45

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %30, %34
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = urem i64 %37, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %13
  %46 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = mul i32 %50, %48
  store i32 %51, i32* %49, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
