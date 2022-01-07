; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_device = type { %struct.clk*, %struct.TYPE_2__*, i64 }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"tv_dac_clk\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"can't get tv_dac_clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_device*)* @venc_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_get_clocks(%struct.venc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_device*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.venc_device* %0, %struct.venc_device** %3, align 8
  %5 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %6 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %11 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.clk* @devm_clk_get(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %14, %struct.clk** %4, align 8
  %15 = load %struct.clk*, %struct.clk** %4, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.clk* %20)
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %9
  br label %24

23:                                               ; preds = %1
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.clk*, %struct.clk** %4, align 8
  %26 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %27 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %26, i32 0, i32 0
  store %struct.clk* %25, %struct.clk** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
