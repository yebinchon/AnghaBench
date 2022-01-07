; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { i32, %struct.tegra_bpmp*, i32, i8*, i8* }
%struct.tegra_bpmp = type { i32, %struct.tegra210_bpmp* }
%struct.tegra210_bpmp = type { i64 }

@TRIGGER_ID_SHIFT = common dso_local global i32 0, align 4
@TRIGGER_CMD_GET = common dso_local global i32 0, align 4
@TRIGGER_OFFSET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_channel*, %struct.tegra_bpmp*, i32)* @tegra210_bpmp_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_bpmp_channel_init(%struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_bpmp_channel*, align 8
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra210_bpmp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp_channel** %5, align 8
  store %struct.tegra_bpmp* %1, %struct.tegra_bpmp** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %12 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %11, i32 0, i32 1
  %13 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %12, align 8
  store %struct.tegra210_bpmp* %13, %struct.tegra210_bpmp** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @TRIGGER_ID_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @TRIGGER_CMD_GET, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %8, align 8
  %20 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRIGGER_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %8, align 8
  %26 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @RESULT_OFFSET(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @devm_ioremap(i32 %34, i32 %35, i32 128)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %3
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %45 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %52, i32 0, i32 2
  %54 = call i32 @init_completion(i32* %53)
  %55 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %56 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %56, i32 0, i32 1
  store %struct.tegra_bpmp* %55, %struct.tegra_bpmp** %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %42, %39
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @RESULT_OFFSET(i32) #1

declare dso_local i8* @devm_ioremap(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
