; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s921.c_s921_i2c_writeregdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s921.c_s921_i2c_writeregdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s921_state = type { i32 }
%struct.regdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s921_state*, i32, %struct.regdata*, i32)* @s921_i2c_writeregdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_i2c_writeregdata(%struct.s921_state* %0, i32 %1, %struct.regdata* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s921_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.s921_state* %0, %struct.s921_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.regdata* %2, %struct.regdata** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.regdata*, %struct.regdata** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.regdata, %struct.regdata* %19, i64 %21
  %23 = getelementptr inbounds %struct.regdata, %struct.regdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.regdata*, %struct.regdata** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.regdata, %struct.regdata* %25, i64 %27
  %29 = getelementptr inbounds %struct.regdata, %struct.regdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @s921_i2c_writereg(%struct.s921_state* %17, i32 %18, i32 %24, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %12

40:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @s921_i2c_writereg(%struct.s921_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
