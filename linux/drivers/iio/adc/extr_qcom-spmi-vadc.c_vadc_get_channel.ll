; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_channel_prop = type { i32 }
%struct.vadc_priv = type { i32, i32, %struct.vadc_channel_prop* }

@.str = private unnamed_addr constant [22 x i8] c"no such channel %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vadc_channel_prop* (%struct.vadc_priv*, i32)* @vadc_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.vadc_channel_prop*, align 8
  %4 = alloca %struct.vadc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vadc_priv* %0, %struct.vadc_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %10 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %15 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %14, i32 0, i32 2
  %16 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %16, i64 %18
  %20 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %26 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %25, i32 0, i32 2
  %27 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %27, i64 %29
  store %struct.vadc_channel_prop* %30, %struct.vadc_channel_prop** %3, align 8
  br label %41

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %37 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.vadc_channel_prop* null, %struct.vadc_channel_prop** %3, align 8
  br label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %3, align 8
  ret %struct.vadc_channel_prop* %42
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
