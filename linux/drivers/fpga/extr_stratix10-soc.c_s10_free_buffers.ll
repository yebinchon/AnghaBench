; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.s10_priv* }
%struct.s10_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@NUM_SVC_BUFS = common dso_local global i64 0, align 8
@SVC_BUF_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @s10_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_free_buffers(%struct.fpga_manager* %0) #0 {
  %2 = alloca %struct.fpga_manager*, align 8
  %3 = alloca %struct.s10_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %2, align 8
  %6 = load %struct.fpga_manager*, %struct.fpga_manager** %2, align 8
  %7 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %6, i32 0, i32 0
  %8 = load %struct.s10_priv*, %struct.s10_priv** %7, align 8
  store %struct.s10_priv* %8, %struct.s10_priv** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @NUM_SVC_BUFS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %15 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %56

25:                                               ; preds = %13
  %26 = load i32, i32* @SVC_BUF_LOCK, align 4
  %27 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %28 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @test_and_set_bit_lock(i32 %26, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %25
  %36 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %37 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %40 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @stratix10_svc_free_memory(i32 %38, i32* %45)
  %47 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %48 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %35, %25
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %9

59:                                               ; preds = %9
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @NUM_SVC_BUFS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @stratix10_svc_free_memory(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
