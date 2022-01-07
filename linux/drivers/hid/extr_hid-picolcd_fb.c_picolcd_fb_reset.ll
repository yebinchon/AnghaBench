; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.picolcd_fb_data* }
%struct.picolcd_fb_data = type { i32, i32, i32, i32, i32 }
%struct.hid_report = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@REPORT_LCD_CMD = common dso_local global i32 0, align 4
@picolcd_fb_reset.mapcmd = internal constant [8 x i32] [i32 0, i32 2, i32 0, i32 100, i32 63, i32 0, i32 100, i32 192], align 16
@ENODEV = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@PICOLCDFB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_fb_reset(%struct.picolcd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca %struct.picolcd_fb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @REPORT_LCD_CMD, align 4
  %12 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %13 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hid_report* @picolcd_out_report(i32 %11, i32 %14)
  store %struct.hid_report* %15, %struct.hid_report** %6, align 8
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %17 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %19, align 8
  store %struct.picolcd_fb_data* %20, %struct.picolcd_fb_data** %7, align 8
  %21 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %22 = icmp ne %struct.hid_report* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %141

31:                                               ; preds = %23
  %32 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %33 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %99, %31
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %102

39:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %89, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %43 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %55 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 2
  %62 = call i32 @hid_set_field(%struct.TYPE_4__* %58, i32 %59, i32 %61)
  br label %88

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 32
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %69 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* @picolcd_fb_reset.mapcmd, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hid_set_field(%struct.TYPE_4__* %72, i32 %73, i32 %77)
  br label %87

79:                                               ; preds = %63
  %80 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %81 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @hid_set_field(%struct.TYPE_4__* %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %79, %67
  br label %88

88:                                               ; preds = %87, %53
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %40

92:                                               ; preds = %40
  %93 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %94 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %97 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %98 = call i32 @hid_hw_request(i32 %95, %struct.hid_report* %96, i32 %97)
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %36

102:                                              ; preds = %36
  %103 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %104 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %103, i32 0, i32 1
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %111 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %114 = call i32 @memset(i32 %112, i32 0, i32 %113)
  %115 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %116 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %119 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %120 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = call i32 @memset(i32 %117, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %109, %102
  %125 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %126 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %128 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %133 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @schedule_delayed_work(i32* %135, i32 0)
  br label %140

137:                                              ; preds = %124
  %138 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %139 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %138, i32 0, i32 2
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %131
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %28
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.hid_report* @picolcd_out_report(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
