; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_finger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_finger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f11_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.rmi_2d_sensor = type { i32, i64, i32, i32*, i32, i32, i32, i64, i64 }

@RMI_F11_ABS_BYTES = common dso_local global i32 0, align 4
@F11_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid finger state[%d]: 0x%02x\00", align 1
@RMI_F11_REL_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f11_data*, %struct.rmi_2d_sensor*, i32)* @rmi_f11_finger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f11_finger_handler(%struct.f11_data* %0, %struct.rmi_2d_sensor* %1, i32 %2) #0 {
  %4 = alloca %struct.f11_data*, align 8
  %5 = alloca %struct.rmi_2d_sensor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.f11_data* %0, %struct.f11_data** %4, align 8
  store %struct.rmi_2d_sensor* %1, %struct.rmi_2d_sensor** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %14 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %18 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RMI_F11_ABS_BYTES, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %23 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %122

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RMI_F11_ABS_BYTES, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %10, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %36 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %30
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @rmi_f11_parse_finger_state(i32* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @F11_RESERVED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %66

54:                                               ; preds = %43
  %55 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %56 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %57 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %58 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @rmi_f11_abs_pos_process(%struct.f11_data* %55, %struct.rmi_2d_sensor* %56, i32* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %54, %50
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %39

69:                                               ; preds = %39
  %70 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %71 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  %75 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %76 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %79 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %82 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %85 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %88 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @input_mt_assign_slots(i32 %77, i32 %80, i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %74, %69
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @rmi_f11_parse_finger_state(i32* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @F11_RESERVED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %114

104:                                              ; preds = %96
  %105 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %106 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %107 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @rmi_2d_sensor_abs_report(%struct.rmi_2d_sensor* %105, i32* %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %103
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %119 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @input_mt_sync_frame(i32 %120)
  br label %161

122:                                              ; preds = %3
  %123 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %124 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %160

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %130 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RMI_F11_REL_BYTES, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %128, %133
  %135 = load i32, i32* %6, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %127
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %12, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* @RMI_F11_REL_BYTES, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %11, align 4
  br label %147

143:                                              ; preds = %127
  %144 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %145 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %143, %137
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %156, %147
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @rmi_f11_rel_pos_report(%struct.f11_data* %153, i32 %154)
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %148

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %122
  br label %161

161:                                              ; preds = %160, %117
  ret void
}

declare dso_local i32 @rmi_f11_parse_finger_state(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @rmi_f11_abs_pos_process(%struct.f11_data*, %struct.rmi_2d_sensor*, i32*, i32, i32) #1

declare dso_local i32 @input_mt_assign_slots(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rmi_2d_sensor_abs_report(%struct.rmi_2d_sensor*, i32*, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @rmi_f11_rel_pos_report(%struct.f11_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
