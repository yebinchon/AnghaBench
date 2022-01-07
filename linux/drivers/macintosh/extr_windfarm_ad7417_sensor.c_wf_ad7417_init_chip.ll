; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_ad7417_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ADC config reg: %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading ADC config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_ad7417_priv*)* @wf_ad7417_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_ad7417_init_chip(%struct.wf_ad7417_priv* %0) #0 {
  %2 = alloca %struct.wf_ad7417_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.wf_ad7417_priv* %0, %struct.wf_ad7417_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 5, i32* %6, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %9 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %12 = call i32 @i2c_master_send(%struct.TYPE_3__* %10, i32* %11, i32 2)
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %15 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %18 = call i32 @i2c_master_send(%struct.TYPE_3__* %16, i32* %17, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  %22 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %23 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %26 = call i32 @i2c_master_recv(%struct.TYPE_3__* %24, i32* %25, i32 1)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %21
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %33 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 254
  store i32 %39, i32* %5, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %44 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %47 = call i32 @i2c_master_send(%struct.TYPE_3__* %45, i32* %46, i32 2)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %29, %21
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %3, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %54 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %2, align 8
  %61 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  ret void
}

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
