; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_bboard_calib_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_bboard_calib_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64**, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%04x:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @wiimod_bboard_calib_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_bboard_calib_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wiimote_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [24 x i64], align 16
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.wiimote_data* @dev_to_wii(%struct.device* %15)
  store %struct.wiimote_data* %16, %struct.wiimote_data** %8, align 8
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %18 = call i32 @wiimote_cmd_acquire(%struct.wiimote_data* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %191

23:                                               ; preds = %3
  %24 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %25 = getelementptr inbounds [24 x i64], [24 x i64]* %13, i64 0, i64 0
  %26 = call i32 @wiimote_cmd_read(%struct.wiimote_data* %24, i32 10747940, i64* %25, i32 12)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 12
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %31 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  store i32 %40, i32* %4, align 4
  br label %191

41:                                               ; preds = %23
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %43 = getelementptr inbounds [24 x i64], [24 x i64]* %13, i64 0, i64 0
  %44 = getelementptr inbounds i64, i64* %43, i64 12
  %45 = call i32 @wiimote_cmd_read(%struct.wiimote_data* %42, i32 10747952, i64* %44, i32 12)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 12
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %50 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %57, %55 ]
  store i32 %59, i32* %4, align 4
  br label %191

60:                                               ; preds = %41
  %61 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %62 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %61)
  %63 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %64 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_irq(i32* %65)
  store i64 0, i64* %14, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %125, %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %128

70:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %121, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %124

74:                                               ; preds = %71
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds [24 x i64], [24 x i64]* %13, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %79 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %77, i64* %88, align 8
  %89 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %90 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64**, i64*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = shl i64 %100, 8
  store i64 %101, i64* %99, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  %104 = getelementptr inbounds [24 x i64], [24 x i64]* %13, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %107 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64**, i64*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64*, i64** %109, i64 %111
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = or i64 %117, %105
  store i64 %118, i64* %116, align 8
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, 2
  store i64 %120, i64* %14, align 8
  br label %121

121:                                              ; preds = %74
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %71

124:                                              ; preds = %71
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %67

128:                                              ; preds = %67
  %129 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %130 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = call i32 @spin_unlock_irq(i32* %131)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %186, %128
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 3
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %182, %136
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %185

140:                                              ; preds = %137
  %141 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %142 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64**, i64*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64*, i64** %144, i64 %146
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %170

156:                                              ; preds = %140
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @sprintf(i8* %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %11, align 4
  br label %181

170:                                              ; preds = %156, %140
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* %12, align 4
  %176 = call i64 @sprintf(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %170, %159
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %137

185:                                              ; preds = %137
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %133

189:                                              ; preds = %133
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %58, %39, %21
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.wiimote_data* @dev_to_wii(%struct.device*) #1

declare dso_local i32 @wiimote_cmd_acquire(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_read(%struct.wiimote_data*, i32, i64*, i32) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
