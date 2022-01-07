; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c___read_panel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c___read_panel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@MDFLD_DSI_READ_MAX_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can NOT clean read data valid interrupt\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32*, i32, i32)* @__read_panel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_panel_data(%struct.mdfld_dsi_pkg_sender* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.drm_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @MDFLD_DSI_READ_MAX_COUNT, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %23 = icmp ne %struct.mdfld_dsi_pkg_sender* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %24, %7
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %127

34:                                               ; preds = %27
  %35 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %36 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %35, i32 0, i32 4
  %37 = load %struct.drm_device*, %struct.drm_device** %36, align 8
  store %struct.drm_device* %37, %struct.drm_device** %17, align 8
  %38 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %39 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %38, i32 0, i32 3
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %43 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @BIT(i32 29)
  %46 = call i32 @REG_WRITE(i32 %44, i32 %45)
  %47 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %48 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @REG_READ(i32 %49)
  %51 = call i32 @BIT(i32 29)
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %34
  %57 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @send_pkg(%struct.mdfld_dsi_pkg_sender* %57, i32 %58, i32* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %77, %56
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %68 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @REG_READ(i32 %69)
  %71 = call i32 @BIT(i32 29)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %66, %63
  %76 = phi i1 [ false, %63 ], [ %74, %66 ]
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = call i32 @udelay(i32 100)
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %20, align 4
  br label %63

81:                                               ; preds = %75
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %86 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %85, i32 0, i32 3
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* @ETIMEDOUT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %127

91:                                               ; preds = %81
  %92 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %93 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @BIT(i32 29)
  %96 = call i32 @REG_WRITE(i32 %94, i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %101 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %19, align 4
  br label %107

103:                                              ; preds = %91
  %104 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %105 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %103, %99
  store i32 0, i32* %18, align 4
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @REG_READ(i32 %113)
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %108

122:                                              ; preds = %108
  %123 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %9, align 8
  %124 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %123, i32 0, i32 3
  %125 = load i64, i64* %16, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %122, %84, %30
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @send_pkg(%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
