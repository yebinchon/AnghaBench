; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_match_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_match_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.input_device_id = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INPUT_DEVICE_ID_MATCH_BUS = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MATCH_VERSION = common dso_local global i32 0, align 4
@EV_MAX = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@REL_MAX = common dso_local global i32 0, align 4
@ABS_MAX = common dso_local global i32 0, align 4
@MSC_MAX = common dso_local global i32 0, align 4
@LED_MAX = common dso_local global i32 0, align 4
@SND_MAX = common dso_local global i32 0, align 4
@FF_MAX = common dso_local global i32 0, align 4
@SW_MAX = common dso_local global i32 0, align 4
@INPUT_PROP_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_match_device_id(%struct.input_dev* %0, %struct.input_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_device_id*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_device_id* %1, %struct.input_device_id** %5, align 8
  %6 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %7 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @INPUT_DEVICE_ID_MATCH_BUS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %179

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VENDOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %179

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @INPUT_DEVICE_ID_MATCH_PRODUCT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %179

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %61 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VERSION, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %179

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %79 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EV_MAX, align 4
  %85 = call i32 @bitmap_subset(i32 %80, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %177

87:                                               ; preds = %77
  %88 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %89 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @KEY_MAX, align 4
  %95 = call i32 @bitmap_subset(i32 %90, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %177

97:                                               ; preds = %87
  %98 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %99 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @REL_MAX, align 4
  %105 = call i32 @bitmap_subset(i32 %100, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %177

107:                                              ; preds = %97
  %108 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %109 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ABS_MAX, align 4
  %115 = call i32 @bitmap_subset(i32 %110, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %177

117:                                              ; preds = %107
  %118 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %119 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MSC_MAX, align 4
  %125 = call i32 @bitmap_subset(i32 %120, i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %177

127:                                              ; preds = %117
  %128 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %129 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LED_MAX, align 4
  %135 = call i32 @bitmap_subset(i32 %130, i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %177

137:                                              ; preds = %127
  %138 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %139 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SND_MAX, align 4
  %145 = call i32 @bitmap_subset(i32 %140, i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %137
  %148 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %149 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @FF_MAX, align 4
  %155 = call i32 @bitmap_subset(i32 %150, i32 %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %147
  %158 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %159 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %162 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SW_MAX, align 4
  %165 = call i32 @bitmap_subset(i32 %160, i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %157
  %168 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %169 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %172 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @INPUT_PROP_MAX, align 4
  %175 = call i32 @bitmap_subset(i32 %170, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %167, %157, %147, %137, %127, %117, %107, %97, %87, %77
  store i32 0, i32* %3, align 4
  br label %179

178:                                              ; preds = %167
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %177, %75, %57, %39, %21
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @bitmap_subset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
