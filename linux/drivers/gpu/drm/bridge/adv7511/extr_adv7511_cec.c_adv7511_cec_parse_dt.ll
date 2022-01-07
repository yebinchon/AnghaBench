; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_cec.c_adv7511_cec_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adv7511 = type { i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.adv7511*)* @adv7511_cec_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_cec_parse_dt(%struct.device* %0, %struct.adv7511* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adv7511*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.adv7511* %1, %struct.adv7511** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i32* @devm_clk_get(%struct.device* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %10 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %12 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %18 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @PTR_ERR(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %22 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %26 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @clk_prepare_enable(i32* %27)
  %29 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %30 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @clk_get_rate(i32* %31)
  %33 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %34 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
