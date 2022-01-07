; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.picolcd_fb_data* }
%struct.picolcd_fb_data = type { i32, i32, %struct.picolcd_data*, i32, i32, i32, i32 }
%struct.picolcd_data = type { i32 }

@HID_OUTPUT_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @picolcd_fb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picolcd_fb_update(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.picolcd_fb_data*, align 8
  %8 = alloca %struct.picolcd_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %10, align 8
  store %struct.picolcd_fb_data* %11, %struct.picolcd_fb_data** %7, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %16 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %20 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %25 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %24, i32 0, i32 2
  %26 = load %struct.picolcd_data*, %struct.picolcd_data** %25, align 8
  %27 = icmp ne %struct.picolcd_data* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %30 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %29, i32 0, i32 2
  %31 = load %struct.picolcd_data*, %struct.picolcd_data** %30, align 8
  %32 = call i32 @picolcd_fb_reset(%struct.picolcd_data* %31, i32 0)
  br label %33

33:                                               ; preds = %28, %23, %1
  %34 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %35 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %34, i32 0, i32 1
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %127, %33
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %130

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %123, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %126

45:                                               ; preds = %42
  %46 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %47 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %52 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %55 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %58 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @picolcd_fb_update_tile(i32 %53, i32 %56, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %123

65:                                               ; preds = %50, %45
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @HID_OUTPUT_FIFO_SIZE, align 4
  %70 = sdiv i32 %69, 2
  %71 = icmp sge i32 %68, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %74 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %73, i32 0, i32 1
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %78 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %77, i32 0, i32 2
  %79 = load %struct.picolcd_data*, %struct.picolcd_data** %78, align 8
  store %struct.picolcd_data* %79, %struct.picolcd_data** %8, align 8
  %80 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %81 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %80, i32 0, i32 1
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.picolcd_data*, %struct.picolcd_data** %8, align 8
  %88 = icmp ne %struct.picolcd_data* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %72
  br label %163

90:                                               ; preds = %72
  %91 = load %struct.picolcd_data*, %struct.picolcd_data** %8, align 8
  %92 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @hid_hw_wait(i32 %93)
  %95 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = call i32 @mutex_lock(i32* %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %90, %65
  %99 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %100 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %99, i32 0, i32 1
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %104 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %103, i32 0, i32 2
  %105 = load %struct.picolcd_data*, %struct.picolcd_data** %104, align 8
  store %struct.picolcd_data* %105, %struct.picolcd_data** %8, align 8
  %106 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %107 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %106, i32 0, i32 1
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.picolcd_data*, %struct.picolcd_data** %8, align 8
  %111 = icmp ne %struct.picolcd_data* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %98
  %113 = load %struct.picolcd_data*, %struct.picolcd_data** %8, align 8
  %114 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %115 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i64 @picolcd_fb_send_tile(%struct.picolcd_data* %113, i32 %116, i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112, %98
  br label %159

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %64
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %42

126:                                              ; preds = %42
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %38

130:                                              ; preds = %38
  %131 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %132 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %130
  %136 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %137 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %136, i32 0, i32 1
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %141 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %140, i32 0, i32 2
  %142 = load %struct.picolcd_data*, %struct.picolcd_data** %141, align 8
  store %struct.picolcd_data* %142, %struct.picolcd_data** %8, align 8
  %143 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %7, align 8
  %144 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %143, i32 0, i32 1
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %148 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load %struct.picolcd_data*, %struct.picolcd_data** %8, align 8
  %151 = icmp ne %struct.picolcd_data* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %135
  %153 = load %struct.picolcd_data*, %struct.picolcd_data** %8, align 8
  %154 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @hid_hw_wait(i32 %155)
  br label %157

157:                                              ; preds = %152, %135
  br label %163

158:                                              ; preds = %130
  br label %159

159:                                              ; preds = %158, %121
  %160 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %161 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %160, i32 0, i32 0
  %162 = call i32 @mutex_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %157, %89
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @picolcd_fb_reset(%struct.picolcd_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @picolcd_fb_update_tile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hid_hw_wait(i32) #1

declare dso_local i64 @picolcd_fb_send_tile(%struct.picolcd_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
