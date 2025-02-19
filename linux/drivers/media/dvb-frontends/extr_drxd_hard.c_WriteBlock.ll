; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_WriteBlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_WriteBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }

@CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i64, i64, i32*, i32)* @WriteBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteBlock(%struct.drxd_state* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drxd_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drxd_state* %0, %struct.drxd_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %13

13:                                               ; preds = %34, %5
  %14 = load i64, i64* %9, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @CHUNK_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @CHUNK_SIZE, align 8
  br label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  store i64 %25, i64* %12, align 8
  %26 = load %struct.drxd_state*, %struct.drxd_state** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @write_chunk(%struct.drxd_state* %26, i64 %27, i32* %28, i64 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %46

34:                                               ; preds = %24
  %35 = load i64, i64* %12, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  store i32* %37, i32** %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = ashr i64 %38, 1
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %9, align 8
  br label %13

45:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @write_chunk(%struct.drxd_state*, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
