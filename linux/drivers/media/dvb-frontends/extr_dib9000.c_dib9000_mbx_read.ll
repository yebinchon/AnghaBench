; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@MBX_MAX_WORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"MBX: message is too big for message cache (%d), flushing message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32*, i32, i32)* @dib9000_mbx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_mbx_read(%struct.dib9000_state* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %110

21:                                               ; preds = %4
  %22 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %23 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %110

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 16, i32* %13, align 4
  br label %35

34:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 1029, %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dib9000_read_word_attr(%struct.dib9000_state* %36, i32 %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @MBX_MAX_WORDS, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %35
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %12, align 4
  %53 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 1029, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dib9000_read16_noinc_attr(%struct.dib9000_state* %53, i32 %55, i32* %56, i32 %58, i32 %59)
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %76, %48
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %61

79:                                               ; preds = %61
  br label %97

80:                                               ; preds = %35
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %89, %80
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %12, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 1029, %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dib9000_read16_noinc_attr(%struct.dib9000_state* %90, i32 %92, i32* %93, i32 2, i32 %94)
  br label %85

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 1028, %99
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dib9000_write_word_attr(%struct.dib9000_state* %98, i32 %100, i32 16384, i32 %101)
  %103 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %104 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %97, %28, %20
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib9000_read_word_attr(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @dib9000_read16_noinc_attr(%struct.dib9000_state*, i32, i32*, i32, i32) #1

declare dso_local i32 @dib9000_write_word_attr(%struct.dib9000_state*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
