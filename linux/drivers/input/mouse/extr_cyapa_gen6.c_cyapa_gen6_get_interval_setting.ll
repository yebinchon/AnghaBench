; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_get_interval_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_get_interval_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.gen6_interval_setting = type { i8*, i8*, i8* }

@GEN6_GET_POWER_MODE_INTERVAL = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, %struct.gen6_interval_setting*)* @cyapa_gen6_get_interval_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen6_get_interval_setting(%struct.cyapa* %0, %struct.gen6_interval_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.gen6_interval_setting*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca [11 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store %struct.gen6_interval_setting* %1, %struct.gen6_interval_setting** %5, align 8
  %10 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 5, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 47, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* @GEN6_GET_POWER_MODE_INTERVAL, align 4
  store i32 %17, i32* %16, align 4
  store i32 44, i32* %8, align 4
  %18 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %22 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %18, i32* %19, i32 28, i32* %20, i32* %8, i32 500, i32 %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* @GEN6_GET_POWER_MODE_INTERVAL, align 4
  %28 = call i32 @VALID_CMD_RESP_HEADER(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %25
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 5
  %42 = call i8* @get_unaligned_le16(i32* %41)
  %43 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %5, align 8
  %44 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 7
  %46 = call i8* @get_unaligned_le16(i32* %45)
  %47 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %5, align 8
  %48 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 9
  %50 = call i8* @get_unaligned_le16(i32* %49)
  %51 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %5, align 8
  %52 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %40, %38
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @VALID_CMD_RESP_HEADER(i32*, i32) #1

declare dso_local i8* @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
