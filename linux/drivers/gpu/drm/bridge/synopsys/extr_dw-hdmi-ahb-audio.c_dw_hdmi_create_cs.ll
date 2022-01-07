; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_create_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_create_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dw_hdmi = type { i32** }
%struct.snd_pcm_runtime = type { i32 }

@IEC958_AES2_CON_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dw_hdmi*, %struct.snd_pcm_runtime*)* @dw_hdmi_create_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_create_cs(%struct.snd_dw_hdmi* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.snd_dw_hdmi*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_dw_hdmi* %0, %struct.snd_dw_hdmi** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %12 = call i32 @snd_pcm_create_iec958_consumer(%struct.snd_pcm_runtime* %10, i32* %11, i32 16)
  %13 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %3, align 8
  %14 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = call i32 @memset(i32** %15, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %72, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32, i32* @IEC958_AES2_CON_CHANNEL, align 4
  %22 = xor i32 %21, -1
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  %28 = shl i32 %27, 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %68, %20
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %62, %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %43, 8
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 2
  %49 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %3, align 8
  %50 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = mul i32 %52, 8
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %51, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %48, i32* %61, align 4
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %42

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %32

71:                                               ; preds = %32
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %17

75:                                               ; preds = %17
  %76 = call i32 @BIT(i32 4)
  %77 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %3, align 8
  %78 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %76
  store i32 %84, i32* %82, align 4
  ret void
}

declare dso_local i32 @snd_pcm_create_iec958_consumer(%struct.snd_pcm_runtime*, i32*, i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
