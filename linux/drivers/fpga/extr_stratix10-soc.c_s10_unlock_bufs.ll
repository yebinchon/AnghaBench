; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_unlock_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_unlock_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s10_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@NUM_SVC_BUFS = common dso_local global i64 0, align 8
@SVC_BUF_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unknown buffer returned from service layer %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s10_priv*, i8*)* @s10_unlock_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s10_unlock_bufs(%struct.s10_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.s10_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.s10_priv* %0, %struct.s10_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %40

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NUM_SVC_BUFS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %16 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load i32, i32* @SVC_BUF_LOCK, align 4
  %26 = load %struct.s10_priv*, %struct.s10_priv** %3, align 8
  %27 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @clear_bit_unlock(i32 %25, i32* %31)
  br label %40

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %10

37:                                               ; preds = %10
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %24, %8
  ret void
}

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
