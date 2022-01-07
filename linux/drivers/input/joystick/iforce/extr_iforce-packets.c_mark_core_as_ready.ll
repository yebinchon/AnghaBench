; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_mark_core_as_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_mark_core_as_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i16 }
%struct.TYPE_6__ = type { i16 }

@FF_CORE_IS_USED = common dso_local global i32 0, align 4
@FF_CORE_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unused effect %04x updated !!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iforce*, i16)* @mark_core_as_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_core_as_ready(%struct.iforce* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iforce*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.iforce*, %struct.iforce** %4, align 8
  %8 = getelementptr inbounds %struct.iforce, %struct.iforce* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %77, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.iforce*, %struct.iforce** %4, align 8
  %18 = getelementptr inbounds %struct.iforce, %struct.iforce* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %16, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %15
  %26 = load i32, i32* @FF_CORE_IS_USED, align 4
  %27 = load %struct.iforce*, %struct.iforce** %4, align 8
  %28 = getelementptr inbounds %struct.iforce, %struct.iforce* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @test_bit(i32 %26, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %25
  %38 = load %struct.iforce*, %struct.iforce** %4, align 8
  %39 = getelementptr inbounds %struct.iforce, %struct.iforce* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %37
  %52 = load %struct.iforce*, %struct.iforce** %4, align 8
  %53 = getelementptr inbounds %struct.iforce, %struct.iforce* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i16, i16* %59, align 4
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %5, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %51, %37
  %66 = load i32, i32* @FF_CORE_UPDATE, align 4
  %67 = load %struct.iforce*, %struct.iforce** %4, align 8
  %68 = getelementptr inbounds %struct.iforce, %struct.iforce* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clear_bit(i32 %66, i32 %74)
  store i32 0, i32* %3, align 4
  br label %87

76:                                               ; preds = %51, %25
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %15

80:                                               ; preds = %15
  %81 = load %struct.iforce*, %struct.iforce** %4, align 8
  %82 = getelementptr inbounds %struct.iforce, %struct.iforce* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i16, i16* %5, align 2
  %86 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i16 zeroext %85)
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %65, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
