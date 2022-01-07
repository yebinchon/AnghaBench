; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_read_edid_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_read_edid_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@REG_DDC_ADDR = common dso_local global i32 0, align 4
@REG_DDC_OFFS = common dso_local global i32 0, align 4
@REG_DDC_SEGM_ADDR = common dso_local global i32 0, align 4
@REG_DDC_SEGM = common dso_local global i32 0, align 4
@REG_EDID_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"read edid wait err %d\0A\00", align 1
@REG_INT_FLAGS_2 = common dso_local global i32 0, align 4
@INT_FLAGS_2_EDID_BLK_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"read edid timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_EDID_DATA_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to read edid block %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i64)* @read_edid_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_edid_block(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tda998x_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.tda998x_priv*
  store %struct.tda998x_priv* %15, %struct.tda998x_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 128, i32 0
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %21, 2
  store i32 %22, i32* %11, align 4
  %23 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %24 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %27 = load i32, i32* @REG_DDC_ADDR, align 4
  %28 = call i32 @reg_write(%struct.tda998x_priv* %26, i32 %27, i32 160)
  %29 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %30 = load i32, i32* @REG_DDC_OFFS, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @reg_write(%struct.tda998x_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %34 = load i32, i32* @REG_DDC_SEGM_ADDR, align 4
  %35 = call i32 @reg_write(%struct.tda998x_priv* %33, i32 %34, i32 96)
  %36 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %37 = load i32, i32* @REG_DDC_SEGM, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @reg_write(%struct.tda998x_priv* %36, i32 %37, i32 %38)
  %40 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %41 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %43 = load i32, i32* @REG_EDID_CTRL, align 4
  %44 = call i32 @reg_write(%struct.tda998x_priv* %42, i32 %43, i32 1)
  %45 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %46 = load i32, i32* @REG_EDID_CTRL, align 4
  %47 = call i32 @reg_write(%struct.tda998x_priv* %45, i32 %46, i32 0)
  %48 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %49 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %4
  %55 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %56 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %59 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @msecs_to_jiffies(i32 100)
  %65 = call i32 @wait_event_timeout(i32 %57, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %70 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %12, align 4
  br label %130

76:                                               ; preds = %54
  br label %100

77:                                               ; preds = %4
  store i32 100, i32* %13, align 4
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = call i32 @msleep(i32 1)
  %83 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %84 = load i32, i32* @REG_INT_FLAGS_2, align 4
  %85 = call i32 @reg_read(%struct.tda998x_priv* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %130

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @INT_FLAGS_2_EDID_BLK_RD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %13, align 4
  br label %78

99:                                               ; preds = %94, %78
  br label %100

100:                                              ; preds = %99, %76
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %105 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ETIMEDOUT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %130

111:                                              ; preds = %100
  %112 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %113 = load i32, i32* @REG_EDID_DATA_0, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @reg_read_range(%struct.tda998x_priv* %112, i32 %113, i32* %114, i64 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %111
  %122 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %123 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127)
  br label %130

129:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %121, %103, %88, %68
  %131 = load %struct.tda998x_priv*, %struct.tda998x_priv** %9, align 8
  %132 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %12, align 4
  ret i32 %134
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reg_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_read(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @reg_read_range(%struct.tda998x_priv*, i32, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
