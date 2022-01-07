; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_disable_rcfw_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_disable_rcfw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i64, i64, i32*, i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"disabling RCFW with pending cmd-bit %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_disable_rcfw_channel(%struct.bnxt_qplib_rcfw* %0) #0 {
  %2 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %3 = alloca i64, align 8
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %2, align 8
  %4 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %5 = call i32 @bnxt_qplib_rcfw_stop_irq(%struct.bnxt_qplib_rcfw* %4, i32 1)
  %6 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @iounmap(i32* %8)
  %10 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @iounmap(i32* %12)
  %14 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %15 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @find_first_bit(i32 %16, i64 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %39 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %43 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %45 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %2, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local i32 @bnxt_qplib_rcfw_stop_irq(%struct.bnxt_qplib_rcfw*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
