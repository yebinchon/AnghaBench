; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_fm801-gp.c_fm801_gp_cooked_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_fm801-gp.c_fm801_gp_cooked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32*, i32*)* @fm801_gp_cooked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_gp_cooked_read(%struct.gameport* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.gameport*, %struct.gameport** %4, align 8
  %9 = getelementptr inbounds %struct.gameport, %struct.gameport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 2
  %12 = call zeroext i16 @inw(i64 %11)
  store i16 %12, i16* %7, align 2
  %13 = load i16, i16* %7, align 2
  %14 = zext i16 %13 to i32
  %15 = xor i32 %14, -1
  %16 = ashr i32 %15, 14
  %17 = and i32 %16, 3
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, 65535
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %28

23:                                               ; preds = %3
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 8191
  %27 = shl i32 %26, 5
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ -1, %22 ], [ %27, %23 ]
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gameport*, %struct.gameport** %4, align 8
  %33 = getelementptr inbounds %struct.gameport, %struct.gameport* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 4
  %36 = call zeroext i16 @inw(i64 %35)
  store i16 %36, i16* %7, align 2
  %37 = load i16, i16* %7, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %38, 65535
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %46

41:                                               ; preds = %28
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 8191
  %45 = shl i32 %44, 5
  br label %46

46:                                               ; preds = %41, %40
  %47 = phi i32 [ -1, %40 ], [ %45, %41 ]
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.gameport*, %struct.gameport** %4, align 8
  %51 = getelementptr inbounds %struct.gameport, %struct.gameport* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 6
  %54 = call zeroext i16 @inw(i64 %53)
  store i16 %54, i16* %7, align 2
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i32
  %57 = xor i32 %56, -1
  %58 = ashr i32 %57, 14
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 2
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 65535
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  br label %73

68:                                               ; preds = %46
  %69 = load i16, i16* %7, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 8191
  %72 = shl i32 %71, 5
  br label %73

73:                                               ; preds = %68, %67
  %74 = phi i32 [ -1, %67 ], [ %72, %68 ]
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.gameport*, %struct.gameport** %4, align 8
  %78 = getelementptr inbounds %struct.gameport, %struct.gameport* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 8
  %81 = call zeroext i16 @inw(i64 %80)
  store i16 %81, i16* %7, align 2
  %82 = load i16, i16* %7, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp eq i32 %83, 65535
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %91

86:                                               ; preds = %73
  %87 = load i16, i16* %7, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 8191
  %90 = shl i32 %89, 5
  br label %91

91:                                               ; preds = %86, %85
  %92 = phi i32 [ -1, %85 ], [ %90, %86 ]
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.gameport*, %struct.gameport** %4, align 8
  %96 = getelementptr inbounds %struct.gameport, %struct.gameport* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @outw(i32 255, i64 %97)
  ret i32 0
}

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
