; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-samsung.c_samsung_irda_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-samsung.c_samsung_irda_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @samsung_irda_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @samsung_irda_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 184
  br i1 %9, label %10, label %56

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 175
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 176
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %56

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 177
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 117
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 178
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 48
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 179
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 149
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 180
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 182
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = call i32 @samsung_irda_dev_trace(%struct.hid_device* %46, i32 184)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 176
  store i32 255, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 178
  store i32 8, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 180
  store i32 6, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 182
  store i32 66, i32* %55, align 4
  br label %152

56:                                               ; preds = %40, %35, %30, %25, %20, %15, %10, %3
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 203
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 192
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 21
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 193
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 194
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 195
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 18
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %82 = call i32 @samsung_irda_dev_trace(%struct.hid_device* %81, i32 203)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 193
  store i32 1, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 195
  store i32 15, i32* %86, align 4
  br label %151

87:                                               ; preds = %75, %70, %65, %60, %56
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 135
  br i1 %90, label %91, label %118

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 124
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 21
  br i1 %95, label %96, label %118

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 125
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 126
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 37
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 127
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 17
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %113 = call i32 @samsung_irda_dev_trace(%struct.hid_device* %112, i32 135)
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 125
  store i32 1, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 127
  store i32 14, i32* %117, align 4
  br label %150

118:                                              ; preds = %106, %101, %96, %91, %87
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 171
  br i1 %121, label %122, label %149

122:                                              ; preds = %118
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 160
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 21
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 161
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %127
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 162
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 37
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 163
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %144 = call i32 @samsung_irda_dev_trace(%struct.hid_device* %143, i32 171)
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 161
  store i32 1, i32* %146, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 163
  store i32 3, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %137, %132, %127, %122, %118
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %150, %80
  br label %152

152:                                              ; preds = %151, %45
  %153 = load i32*, i32** %5, align 8
  ret i32* %153
}

declare dso_local i32 @samsung_irda_dev_trace(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
