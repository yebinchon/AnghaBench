; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_value = type { i32, i32, i32 }
%struct.input_dev = type { i32, i32, %struct.input_value*, i32*, %struct.TYPE_2__*, i32 (%struct.input_dev*, i32, i32, i32)* }
%struct.TYPE_2__ = type { i32 }

@INPUT_IGNORE_EVENT = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@INPUT_PASS_TO_DEVICE = common dso_local global i32 0, align 4
@INPUT_PASS_TO_HANDLERS = common dso_local global i32 0, align 4
@INPUT_SLOT = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@INPUT_FLUSH = common dso_local global i32 0, align 4
@INPUT_CLK_MONO = common dso_local global i64 0, align 8
@input_value_sync = common dso_local global %struct.input_value zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, i32, i32)* @input_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_handle_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_value*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @input_get_disposition(%struct.input_dev* %11, i32 %12, i32 %13, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EV_SYN, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @add_input_randomness(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %18, %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @INPUT_PASS_TO_DEVICE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 5
  %35 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.input_dev*, i32, i32, i32)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 5
  %40 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %39, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %40(%struct.input_dev* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32, %27
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 2
  %49 = load %struct.input_value*, %struct.input_value** %48, align 8
  %50 = icmp ne %struct.input_value* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %163

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @INPUT_SLOT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 2
  %65 = load %struct.input_value*, %struct.input_value** %64, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.input_value, %struct.input_value* %65, i64 %70
  store %struct.input_value* %71, %struct.input_value** %10, align 8
  %72 = load i32, i32* @EV_ABS, align 4
  %73 = load %struct.input_value*, %struct.input_value** %10, align 8
  %74 = getelementptr inbounds %struct.input_value, %struct.input_value* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ABS_MT_SLOT, align 4
  %76 = load %struct.input_value*, %struct.input_value** %10, align 8
  %77 = getelementptr inbounds %struct.input_value, %struct.input_value* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.input_value*, %struct.input_value** %10, align 8
  %84 = getelementptr inbounds %struct.input_value, %struct.input_value* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %62, %57
  %86 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 2
  %88 = load %struct.input_value*, %struct.input_value** %87, align 8
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %struct.input_value, %struct.input_value* %88, i64 %93
  store %struct.input_value* %94, %struct.input_value** %10, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.input_value*, %struct.input_value** %10, align 8
  %97 = getelementptr inbounds %struct.input_value, %struct.input_value* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.input_value*, %struct.input_value** %10, align 8
  %100 = getelementptr inbounds %struct.input_value, %struct.input_value* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.input_value*, %struct.input_value** %10, align 8
  %103 = getelementptr inbounds %struct.input_value, %struct.input_value* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %85, %52
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @INPUT_FLUSH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  %110 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 2
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 2
  %118 = load %struct.input_value*, %struct.input_value** %117, align 8
  %119 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @input_pass_values(%struct.input_dev* %115, %struct.input_value* %118, i32 %121)
  br label %123

123:                                              ; preds = %114, %109
  %124 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %125 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = call i32 @ktime_set(i32 0, i32 0)
  %127 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @INPUT_CLK_MONO, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 %126, i32* %131, align 4
  br label %163

132:                                              ; preds = %104
  %133 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 2
  %140 = icmp sge i32 %135, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %132
  %142 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 2
  %144 = load %struct.input_value*, %struct.input_value** %143, align 8
  %145 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %146 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds %struct.input_value, %struct.input_value* %144, i64 %149
  %151 = bitcast %struct.input_value* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 bitcast (%struct.input_value* @input_value_sync to i8*), i64 12, i1 false)
  %152 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %153 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %154 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %153, i32 0, i32 2
  %155 = load %struct.input_value*, %struct.input_value** %154, align 8
  %156 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %157 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @input_pass_values(%struct.input_dev* %152, %struct.input_value* %155, i32 %158)
  %160 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %141, %132
  br label %163

163:                                              ; preds = %51, %162, %123
  ret void
}

declare dso_local i32 @input_get_disposition(%struct.input_dev*, i32, i32, i32*) #1

declare dso_local i32 @add_input_randomness(i32, i32, i32) #1

declare dso_local i32 @input_pass_values(%struct.input_dev*, %struct.input_value*, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
