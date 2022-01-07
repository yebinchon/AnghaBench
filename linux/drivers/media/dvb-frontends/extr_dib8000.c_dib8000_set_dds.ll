; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_dds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_dds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"setting a DDS frequency offset of %c%dkHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i64)* @dib8000_set_dds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_dds(%struct.dib8000_state* %0, i64 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @abs(i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %13 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 33554431
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 33554432
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %31 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 32912
  br i1 %33, label %34, label %57

34:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %36 = call i32 @dib8000_read32(%struct.dib8000_state* %35, i32 23)
  %37 = sdiv i32 %36, 1000
  %38 = sdiv i32 67108864, %37
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %4, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sub nsw i32 67108864, %44
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 67108864, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %86

57:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %59 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 67108864, %63
  store i32 %64, i32* %5, align 4
  %65 = load i64, i64* %4, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %85

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 45, i32 32
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sdiv i32 %92, %93
  %95 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8 signext %91, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sdiv i32 %102, %103
  %105 = icmp sle i32 %96, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %86
  %107 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dib8000_write_word(%struct.dib8000_state* %107, i32 26, i32 %108)
  %110 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 16
  %113 = and i32 %112, 511
  %114 = call i32 @dib8000_write_word(%struct.dib8000_state* %110, i32 27, i32 %113)
  %115 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, 65535
  %118 = call i32 @dib8000_write_word(%struct.dib8000_state* %115, i32 28, i32 %117)
  br label %119

119:                                              ; preds = %106, %86
  ret void
}

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dib8000_read32(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i8 signext, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
