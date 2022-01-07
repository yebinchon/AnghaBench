; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-cuda.c_cuda_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-cuda.c_cuda_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@current_req = common dso_local global %struct.TYPE_2__* null, align 8
@data_index = common dso_local global i64 0, align 8
@via = common dso_local global i32* null, align 8
@B = common dso_local global i64 0, align 8
@ACR = common dso_local global i64 0, align 8
@SR_OUT = common dso_local global i32 0, align 4
@SR = common dso_local global i64 0, align 8
@mcu_is_egret = common dso_local global i64 0, align 8
@sent_first_byte = common dso_local global i32 0, align 4
@cuda_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cuda_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_start() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_req, align 8
  %2 = icmp eq %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %42

4:                                                ; preds = %0
  store i64 0, i64* @data_index, align 8
  %5 = load i32*, i32** @via, align 8
  %6 = load i64, i64* @B, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = call i32 @in_8(i32* %7)
  %9 = call i64 @TREQ_asserted(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %42

12:                                               ; preds = %4
  %13 = load i32*, i32** @via, align 8
  %14 = load i64, i64* @ACR, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32*, i32** @via, align 8
  %17 = load i64, i64* @ACR, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @in_8(i32* %18)
  %20 = load i32, i32* @SR_OUT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @out_8(i32* %15, i32 %21)
  %23 = load i32*, i32** @via, align 8
  %24 = load i64, i64* @SR, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_req, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @data_index, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @data_index, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %29
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @out_8(i32* %25, i32 %32)
  %34 = load i64, i64* @mcu_is_egret, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %12
  %37 = call i32 (...) @assert_TIP_and_TACK()
  br label %40

38:                                               ; preds = %12
  %39 = call i32 (...) @assert_TIP()
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* @sent_first_byte, align 4
  store i32 %41, i32* @cuda_state, align 4
  br label %42

42:                                               ; preds = %40, %11, %3
  ret void
}

declare dso_local i64 @TREQ_asserted(i32) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @assert_TIP_and_TACK(...) #1

declare dso_local i32 @assert_TIP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
