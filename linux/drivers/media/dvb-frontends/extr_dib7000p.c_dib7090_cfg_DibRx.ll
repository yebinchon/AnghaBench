; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_cfg_DibRx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_cfg_DibRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Configure DibStream Rx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32, i32, i32, i32, i32, i32, i32)* @dib7090_cfg_DibRx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7090_cfg_DibRx(%struct.dib7000p_state* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.dib7000p_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @dib7090_calcSyncFreq(i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %30, i32 1542, i32 %31)
  br label %33

33:                                               ; preds = %24, %21, %8
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %35 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %34, i32 1554, i32 1)
  %36 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %36, i32 1536, i32 %37)
  %39 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %39, i32 1537, i32 %40)
  %42 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %42, i32 1539, i32 %43)
  %45 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %46 = load i32, i32* %14, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 65535
  %49 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %45, i32 1540, i32 %48)
  %50 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, 65535
  %53 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %50, i32 1541, i32 %52)
  %54 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %54, i32 1543, i32 %55)
  %57 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %57, i32 1544, i32 %58)
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %61 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %60, i32 1554, i32 0)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7090_calcSyncFreq(i32, i32, i32, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
