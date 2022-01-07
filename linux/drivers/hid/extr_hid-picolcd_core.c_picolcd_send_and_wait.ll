; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_send_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_send_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_pending = type { i32, i64, i32*, %struct.hid_report* }
%struct.hid_report = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.hid_device = type { i32 }
%struct.picolcd_data = type { i32, i32, i32, %struct.picolcd_pending*, i32 }

@PICOLCD_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.picolcd_pending* @picolcd_send_and_wait(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.picolcd_pending*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.picolcd_data*, align 8
  %11 = alloca %struct.picolcd_pending*, align 8
  %12 = alloca %struct.hid_report*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.picolcd_data* %18, %struct.picolcd_data** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %21 = call %struct.hid_report* @picolcd_out_report(i32 %19, %struct.hid_device* %20)
  store %struct.hid_report* %21, %struct.hid_report** %12, align 8
  %22 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %23 = icmp ne %struct.hid_report* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %26 = icmp ne %struct.picolcd_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %4
  store %struct.picolcd_pending* null, %struct.picolcd_pending** %5, align 8
  br label %154

28:                                               ; preds = %24
  %29 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %30 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PICOLCD_FAILED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.picolcd_pending* null, %struct.picolcd_pending** %5, align 8
  br label %154

36:                                               ; preds = %28
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.picolcd_pending* @kzalloc(i32 32, i32 %37)
  store %struct.picolcd_pending* %38, %struct.picolcd_pending** %11, align 8
  %39 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %40 = icmp ne %struct.picolcd_pending* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store %struct.picolcd_pending* null, %struct.picolcd_pending** %5, align 8
  br label %154

42:                                               ; preds = %36
  %43 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %44 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %43, i32 0, i32 0
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %47 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %48 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %47, i32 0, i32 3
  store %struct.hid_report* %46, %struct.hid_report** %48, align 8
  %49 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %50 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %52 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %54 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %57 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %56, i32 0, i32 2
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %107, %42
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %63 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %103, %66
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %70 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %68, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %67
  %80 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %81 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  br label %98

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %91
  %99 = phi i32 [ %96, %91 ], [ 0, %97 ]
  %100 = call i32 @hid_set_field(%struct.TYPE_2__* %86, i32 %87, i32 %99)
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %67

106:                                              ; preds = %67
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %60

110:                                              ; preds = %60
  %111 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %112 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PICOLCD_FAILED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %119 = call i32 @kfree(%struct.picolcd_pending* %118)
  store %struct.picolcd_pending* null, %struct.picolcd_pending** %11, align 8
  br label %145

120:                                              ; preds = %110
  %121 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %122 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %123 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %122, i32 0, i32 3
  store %struct.picolcd_pending* %121, %struct.picolcd_pending** %123, align 8
  %124 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %125 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %128 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %129 = call i32 @hid_hw_request(i32 %126, %struct.hid_report* %127, i32 %128)
  %130 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %131 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %130, i32 0, i32 2
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  %135 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %134, i32 0, i32 0
  %136 = load i32, i32* @HZ, align 4
  %137 = mul nsw i32 %136, 2
  %138 = call i32 @wait_for_completion_interruptible_timeout(i32* %135, i32 %137)
  %139 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %140 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %139, i32 0, i32 2
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %144 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %143, i32 0, i32 3
  store %struct.picolcd_pending* null, %struct.picolcd_pending** %144, align 8
  br label %145

145:                                              ; preds = %120, %117
  %146 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %147 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %146, i32 0, i32 2
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %151 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %150, i32 0, i32 1
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load %struct.picolcd_pending*, %struct.picolcd_pending** %11, align 8
  store %struct.picolcd_pending* %153, %struct.picolcd_pending** %5, align 8
  br label %154

154:                                              ; preds = %145, %41, %35, %27
  %155 = load %struct.picolcd_pending*, %struct.picolcd_pending** %5, align 8
  ret %struct.picolcd_pending* %155
}

declare dso_local %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local %struct.hid_report* @picolcd_out_report(i32, %struct.hid_device*) #1

declare dso_local %struct.picolcd_pending* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.picolcd_pending*) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
