; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i32, i32 }

@HDMI_CTRL_ENABLE = common dso_local global i32 0, align 4
@HDMI_CTRL_HDMI = common dso_local global i32 0, align 4
@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"HDMI Core: %s, HDMI_CTRL=0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_set_mode(%struct.hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @HDMI_CTRL_ENABLE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %18 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @HDMI_CTRL_HDMI, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %26 = load i32, i32* @REG_HDMI_CTRL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @hdmi_write(%struct.hdmi* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @HDMI_CTRL_HDMI, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %13
  %34 = load i32, i32* @HDMI_CTRL_HDMI, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %21
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @HDMI_CTRL_HDMI, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %42 = load i32, i32* @REG_HDMI_CTRL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @hdmi_write(%struct.hdmi* %41, i32 %42, i32 %43)
  %45 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %46 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBG(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
