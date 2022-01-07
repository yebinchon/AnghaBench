; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_get_audio_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_get_audio_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"audio-ports\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Bad number of elements in audio-ports dt-property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AUDIO_ROUTE_I2S = common dso_local global i32 0, align 4
@AUDIO_ROUTE_SPDIF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Bad audio format %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid zero port config\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s format already configured\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, %struct.device_node*)* @tda998x_get_audio_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_get_audio_ports(%struct.tda998x_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %119

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %24 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = mul nsw i32 2, %26
  %28 = icmp sgt i32 %22, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = srem i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %17
  %34 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %35 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %119

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %115, %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %118

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i32 @be32_to_cpup(i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = call i32 @be32_to_cpup(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %67 [
    i32 129, label %63
    i32 128, label %65
  ]

63:                                               ; preds = %48
  %64 = load i32, i32* @AUDIO_ROUTE_I2S, align 4
  store i32 %64, i32* %9, align 4
  br label %76

65:                                               ; preds = %48
  %66 = load i32, i32* @AUDIO_ROUTE_SPDIF, align 4
  store i32 %66, i32* %9, align 4
  br label %76

67:                                               ; preds = %48
  %68 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %69 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %119

76:                                               ; preds = %65, %63
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %81 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %115

85:                                               ; preds = %76
  %86 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %87 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %85
  %95 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %96 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @AUDIO_ROUTE_SPDIF, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %119

107:                                              ; preds = %85
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %110 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %79
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %44

118:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %94, %67, %33, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
