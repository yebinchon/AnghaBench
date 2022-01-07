; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_is_byte_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_is_byte_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, %struct.hgpk_data* }
%struct.hgpk_data = type { i32 }

@HGPK_GS = common dso_local global i8 0, align 1
@HGPK_PT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"bad data, mode %d (%d) %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*)* @hgpk_is_byte_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_is_byte_valid(%struct.psmouse* %0, i8* %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hgpk_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  %10 = load %struct.hgpk_data*, %struct.hgpk_data** %9, align 8
  store %struct.hgpk_data* %10, %struct.hgpk_data** %5, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hgpk_data*, %struct.hgpk_data** %5, align 8
  %15 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %77 [
    i32 129, label %17
    i32 130, label %25
    i32 128, label %51
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 12
  %23 = icmp eq i32 %22, 8
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @HGPK_GS, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  br label %49

37:                                               ; preds = %25
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %37, %28
  %50 = phi i32 [ %36, %28 ], [ %48, %37 ]
  store i32 %50, i32* %7, align 4
  br label %78

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @HGPK_PT, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  br label %75

63:                                               ; preds = %51
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %63, %54
  %76 = phi i32 [ %62, %54 ], [ %74, %63 ]
  store i32 %76, i32* %7, align 4
  br label %78

77:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %75, %49, %17
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %83 = load %struct.hgpk_data*, %struct.hgpk_data** %5, align 8
  %84 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @psmouse_dbg(%struct.psmouse* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 6, i32 %89)
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
