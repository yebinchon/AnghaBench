; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_send_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_send_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MAX_MAILBOX_TRY = common dso_local global i32 0, align 4
@MBX_MAX_WORDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"MBX: RISC mbx full, retrying\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i64, i32*, i64, i32)* @dib9000_mbx_send_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_mbx_send_attr(%struct.dib9000_state* %0, i64 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca [2 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %19 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %128

27:                                               ; preds = %5
  %28 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %29 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i64 @mutex_lock_interruptible(i32* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINTR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %128

38:                                               ; preds = %27
  %39 = load i32, i32* @MAX_MAILBOX_TRY, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %61, %38
  %41 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @dib9000_read_word_attr(%struct.dib9000_state* %41, i32 1043, i32 %42)
  %44 = and i32 %43, 255
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %46, %47
  %49 = add nsw i64 %48, 1
  %50 = load i64, i64* @MBX_MAX_WORDS, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @msleep(i32 100)
  br label %60

59:                                               ; preds = %52, %40
  br label %62

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  br i1 true, label %40, label %62

62:                                               ; preds = %61, %59
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  br label %121

68:                                               ; preds = %62
  %69 = load i32*, i32** %9, align 8
  %70 = bitcast i32* %69 to i64*
  store i64* %70, i64** %12, align 8
  store i64 0, i64* %16, align 8
  br label %71

71:                                               ; preds = %90, %68
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = ashr i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %12, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %12, align 8
  store i64 %82, i64* %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = and i32 %85, 255
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %12, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %12, align 8
  store i64 %87, i64* %88, align 8
  br label %90

90:                                               ; preds = %75
  %91 = load i64, i64* %16, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %16, align 8
  br label %71

93:                                               ; preds = %71
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %94, i64* %95, align 16
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %96, 1
  %98 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %97, i64* %98, align 8
  %99 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @dib9000_write16_noinc_attr(%struct.dib9000_state* %99, i32 1045, i64* %100, i64 2, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %93
  %105 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = bitcast i32* %106 to i64*
  %108 = load i64, i64* %10, align 8
  %109 = mul nsw i64 %108, 2
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @dib9000_write16_noinc_attr(%struct.dib9000_state* %105, i32 1045, i64* %107, i64 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %104, %93
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %17, align 4
  br label %121

116:                                              ; preds = %104
  %117 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @dib9000_write_word_attr(%struct.dib9000_state* %117, i32 1043, i32 16384, i32 %118)
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %116, %113, %65
  %122 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %123 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %121, %34, %24
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib9000_read_word_attr(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dib9000_write16_noinc_attr(%struct.dib9000_state*, i32, i64*, i64, i32) #1

declare dso_local i64 @dib9000_write_word_attr(%struct.dib9000_state*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
