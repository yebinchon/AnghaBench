; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c_tsc200x_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c_tsc200x_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc200x = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.tsc200x_data = type { i32, i32, i32, i32 }

@TSC200X_REG_X = common dso_local global i32 0, align 4
@TSC200X_DATA_REGS = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TSC200X_PENUP_TIME_MS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsc200x_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc200x_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tsc200x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsc200x_data, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.tsc200x*
  store %struct.tsc200x* %11, %struct.tsc200x** %5, align 8
  %12 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %13 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TSC200X_REG_X, align 4
  %16 = load i32, i32* @TSC200X_DATA_REGS, align 4
  %17 = call i32 @regmap_bulk_read(i32 %14, i32 %15, %struct.tsc200x_data* %8, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %167

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_12BIT, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX_12BIT, align 4
  %31 = icmp ugt i32 %29, %30
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %167

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX_12BIT, align 4
  %46 = icmp ugt i32 %44, %45
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ true, %38 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %167

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp uge i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %167

63:                                               ; preds = %53
  %64 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %65 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %63
  %69 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %70 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  %76 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %77 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %80 to i64
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %75
  %84 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %85 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %92 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %167

98:                                               ; preds = %90, %83, %75, %68, %63
  %99 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %102 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %107 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %111 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %115 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %119, %121
  %123 = mul i32 %117, %122
  %124 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = udiv i32 %123, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %129 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = mul i32 %127, %130
  %132 = udiv i32 %131, 4096
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @MAX_12BIT, align 4
  %135 = icmp ugt i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %98
  br label %167

140:                                              ; preds = %98
  %141 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %142 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %141, i32 0, i32 6
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %146 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.tsc200x_data, %struct.tsc200x_data* %8, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @tsc200x_update_pen_state(%struct.tsc200x* %145, i32 %147, i64 %150, i32 %151)
  %153 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %154 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %153, i32 0, i32 7
  %155 = load i64, i64* @jiffies, align 8
  %156 = load i32, i32* @TSC200X_PENUP_TIME_MS, align 4
  %157 = call i64 @msecs_to_jiffies(i32 %156)
  %158 = add nsw i64 %155, %157
  %159 = call i32 @mod_timer(i32* %154, i64 %158)
  %160 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %161 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %160, i32 0, i32 6
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  %164 = load i64, i64* @jiffies, align 8
  %165 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %166 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %165, i32 0, i32 5
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %140, %139, %97, %62, %52, %37, %21
  %168 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %168
}

declare dso_local i32 @regmap_bulk_read(i32, i32, %struct.tsc200x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tsc200x_update_pen_state(%struct.tsc200x*, i32, i64, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
