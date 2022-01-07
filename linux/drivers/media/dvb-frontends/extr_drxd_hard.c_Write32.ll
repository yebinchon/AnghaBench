; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_Write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_Write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32, i32, i32)* @Write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write32(%struct.drxd_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drxd_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  store %struct.drxd_state* %0, %struct.drxd_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.drxd_state*, %struct.drxd_state** %6, align 8
  %13 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = or i32 %24, %27
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds i32, i32* %23, i64 1
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds i32, i32* %29, i64 1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds i32, i32* %36, i64 1
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds i32, i32* %40, i64 1
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  store i32 %47, i32* %44, align 4
  %48 = load %struct.drxd_state*, %struct.drxd_state** %6, align 8
  %49 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %53 = call i64 @i2c_write(i32 %50, i32 %51, i32* %52, i32 8)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %57

56:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @i2c_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
