; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAX_WRITE_RANGE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hdmi_infoframe_pack() type=0x%02x failed: %zd\0A\00", align 1
@REG_DIP_IF_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, i32, i32, %union.hdmi_infoframe*)* @tda998x_write_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_write_if(%struct.tda998x_priv* %0, i32 %1, i32 %2, %union.hdmi_infoframe* %3) #0 {
  %5 = alloca %struct.tda998x_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.hdmi_infoframe*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.hdmi_infoframe* %3, %union.hdmi_infoframe** %8, align 8
  %13 = load i32, i32* @MAX_WRITE_RANGE_BUF, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %18 = mul nuw i64 4, %14
  %19 = trunc i64 %18 to i32
  %20 = call i64 @hdmi_infoframe_pack(%union.hdmi_infoframe* %17, i32* %16, i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %25 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %29 = bitcast %union.hdmi_infoframe* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  store i32 1, i32* %12, align 4
  br label %47

34:                                               ; preds = %4
  %35 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %36 = load i32, i32* @REG_DIP_IF_FLAGS, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @reg_clear(%struct.tda998x_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @reg_write_range(%struct.tda998x_priv* %39, i32 %40, i32* %16, i64 %41)
  %43 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %44 = load i32, i32* @REG_DIP_IF_FLAGS, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @reg_set(%struct.tda998x_priv* %43, i32 %44, i32 %45)
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %34, %23
  %48 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %51 [
    i32 0, label %50
    i32 1, label %50
  ]

50:                                               ; preds = %47, %47
  ret void

51:                                               ; preds = %47
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hdmi_infoframe_pack(%union.hdmi_infoframe*, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #2

declare dso_local i32 @reg_clear(%struct.tda998x_priv*, i32, i32) #2

declare dso_local i32 @reg_write_range(%struct.tda998x_priv*, i32, i32*, i64) #2

declare dso_local i32 @reg_set(%struct.tda998x_priv*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
