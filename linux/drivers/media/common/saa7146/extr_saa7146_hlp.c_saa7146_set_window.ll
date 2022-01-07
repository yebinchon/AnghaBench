; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_set_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HPS_V_SCALE = common dso_local global i32 0, align 4
@HPS_V_GAIN = common dso_local global i32 0, align 4
@HPS_CTRL = common dso_local global i32 0, align 4
@HPS_H_PRESCALE = common dso_local global i32 0, align 4
@HPS_H_SCALE = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_05 = common dso_local global i32 0, align 4
@MASK_06 = common dso_local global i32 0, align 4
@MASK_21 = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i32, i32, i32)* @saa7146_set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_set_window(%struct.saa7146_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %9, align 8
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %21 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %24 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %29 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @calculate_v_scale_registers(%struct.saa7146_dev* %26, i32 %27, i32 %33, i32 %34, i32* %12, i32* %13)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %37 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %38 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @calculate_h_scale_registers(%struct.saa7146_dev* %36, i32 %41, i32 %42, i32 %45, i32* %14, i32* %13, i32* %15, i32* %16)
  %47 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %48 = call i32 @calculate_hxo_and_hyo(%struct.saa7146_vv* %47, i32* %16, i32* %14)
  %49 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @calculate_hps_source_and_sync(%struct.saa7146_dev* %49, i32 %50, i32 %51, i32* %14)
  %53 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %54 = load i32, i32* @HPS_V_SCALE, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @saa7146_write(%struct.saa7146_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %58 = load i32, i32* @HPS_V_GAIN, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @saa7146_write(%struct.saa7146_dev* %57, i32 %58, i32 %59)
  %61 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %62 = load i32, i32* @HPS_CTRL, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @saa7146_write(%struct.saa7146_dev* %61, i32 %62, i32 %63)
  %65 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %66 = load i32, i32* @HPS_H_PRESCALE, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @saa7146_write(%struct.saa7146_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %70 = load i32, i32* @HPS_H_SCALE, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @saa7146_write(%struct.saa7146_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %74 = load i32, i32* @MC2, align 4
  %75 = load i32, i32* @MASK_05, align 4
  %76 = load i32, i32* @MASK_06, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @MASK_21, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MASK_22, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @saa7146_write(%struct.saa7146_dev* %73, i32 %74, i32 %81)
  ret void
}

declare dso_local i32 @calculate_v_scale_registers(%struct.saa7146_dev*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @calculate_h_scale_registers(%struct.saa7146_dev*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @calculate_hxo_and_hyo(%struct.saa7146_vv*, i32*, i32*) #1

declare dso_local i32 @calculate_hps_source_and_sync(%struct.saa7146_dev*, i32, i32, i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
