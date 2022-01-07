; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_set_lane_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_set_lane_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@dsi_set_lane_config.offsets = internal constant [5 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16], align 16
@dsi_set_lane_config.functions = internal constant [5 x i32] [i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@DSI_COMPLEXIO_CFG1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_set_lane_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_set_lane_config(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %11 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %12 = load i32, i32* @DSI_COMPLEXIO_CFG1, align 4
  %13 = call i32 @dsi_read_reg(%struct.dsi_data* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %83, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %86

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_set_lane_config.offsets, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %47, %20
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %28 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %33 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_set_lane_config.functions, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %50

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %25

50:                                               ; preds = %45, %25
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %53 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %117

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %62 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 2
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @FLD_MOD(i32 %69, i32 %71, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 3
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 3
  %82 = call i32 @FLD_MOD(i32 %76, i32 %77, i32 %79, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %59
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %14

86:                                               ; preds = %14
  br label %87

87:                                               ; preds = %109, %86
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %90 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_set_lane_config.offsets, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 2
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @FLD_MOD(i32 %98, i32 0, i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, 3
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 3
  %108 = call i32 @FLD_MOD(i32 %103, i32 0, i32 %105, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %93
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %114 = load i32, i32* @DSI_COMPLEXIO_CFG1, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @dsi_write_reg(%struct.dsi_data* %113, i32 %114, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %112, %56
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
