; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_i2c_pip_cmd_irq_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_i2c_pip_cmd_irq_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i32*, i32*, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PIP_MIN_APP_CMD_LENGTH = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@PIP_MIN_BL_CMD_LENGTH = common dso_local global i32 0, align 4
@PIP_BL_CMD_REPORT_ID = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PIP_INVALID_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %0, i32* %1, i32 %2, i32* %3, i32* %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cyapa*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %19 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %21 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %22, %struct.cyapa_pip_cmd_states** %18, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %159

31:                                               ; preds = %25
  %32 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %33 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %32, i32 0, i32 4
  %34 = call i32 @mutex_lock_interruptible(i32* %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %9, align 4
  br label %159

39:                                               ; preds = %31
  %40 = load i32*, i32** %16, align 8
  %41 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %42 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %45 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %48 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @PIP_MIN_APP_CMD_LENGTH, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %39
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 127
  %63 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %64 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %82

65:                                               ; preds = %52, %39
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PIP_MIN_BL_CMD_LENGTH, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PIP_BL_CMD_REPORT_ID, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %80 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %69, %65
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %134

85:                                               ; preds = %82
  %86 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %87 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @cyapa_do_i2c_pip_cmd_irq_sync(%struct.cyapa* %88, i32* %89, i32 %90, i64 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @ETIMEDOUT, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %85
  %98 = load i32*, i32** %13, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %133

100:                                              ; preds = %97
  %101 = load i32*, i32** %14, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %133

103:                                              ; preds = %100
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %103
  %108 = load i32*, i32** %16, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %107
  %111 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %111, i32* %112, i32* %113, i32* %114)
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118, %110
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %19, align 4
  br label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @ETIMEDOUT, align 4
  %129 = sub nsw i32 0, %128
  br label %130

130:                                              ; preds = %127, %125
  %131 = phi i32 [ %126, %125 ], [ %129, %127 ]
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %130, %118
  br label %133

133:                                              ; preds = %132, %107, %103, %100, %97, %85
  br label %145

134:                                              ; preds = %82
  %135 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %136 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = call i32 @cyapa_do_i2c_pip_cmd_polling(%struct.cyapa* %137, i32* %138, i32 %139, i32* %140, i32* %141, i64 %142, i32* %143)
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %134, %133
  %146 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %147 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %146, i32 0, i32 5
  store i32* null, i32** %147, align 8
  %148 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %149 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  %150 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %151 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %150, i32 0, i32 1
  store i32* null, i32** %151, align 8
  %152 = load i32, i32* @PIP_INVALID_CMD, align 4
  %153 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %154 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %18, align 8
  %156 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %155, i32 0, i32 4
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %19, align 4
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %145, %37, %28
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @cyapa_do_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i64) #1

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #1

declare dso_local i32 @cyapa_do_i2c_pip_cmd_polling(%struct.cyapa*, i32*, i32, i32*, i32*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
